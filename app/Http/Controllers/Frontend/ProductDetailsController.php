<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductOptionValue;
use Illuminate\Http\Request;

class ProductDetailsController extends Controller
{
    public function index($id)
    {
        $product = Product::with('productCategory', 'productOptionValueColor', 'productImages')->findOrFail($id);

        $relatedProducts = Product::query()
            ->where('product_category_id', $product->product_category_id)
            ->where('id', '!=', $product->id)
            ->get();
        $comments = $product->comments()
            ->with('user')
            ->where('is_active', true)
            ->orderBy('id', 'desc')
            ->paginate(10);

        $ratings = $product->comments()->pluck('rating')->toArray();

        return view('frontend.pages.product-detail', compact('product', 'relatedProducts', 'comments', 'ratings'));
    }

    public function getSize(Request $request)
    {
        $sizes = ProductOptionValue::query()
            ->where('product_id', $request->product_id)
            ->where('color_id', $request->color_id)
            ->with('size')
            ->get();
        return response()->json([
            'data' => $sizes,
            'status' => true,
            'message' => 'success'
        ], 200);
    }

    public function getPriceBySize(Request $request)
    {
        $productOptionValue = ProductOptionValue::query()
            ->where('product_id', $request->product_id)
            ->where('size_id', $request->size_id)
            ->first();
        if (!$productOptionValue || $productOptionValue->in_stock <= 0) {
            return response()->json([
                'data' => $productOptionValue,
                'status' => false,
                'message' => __('frontend.Product is out of stock!')
            ], 400);  // Bạn có thể sử dụng mã 400 nếu muốn thông báo là lỗi người dùng
        }
        return response()->json([
            'data' => $productOptionValue,
            'status' => true,
            'message' => 'success'
        ], 200);
    }
}
