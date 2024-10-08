<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\VoucherDataTable;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Voucher\StoreVoucherRequest;
use App\Http\Requests\Admin\Voucher\UpdateVoucherRequest;
use App\Models\Voucher;
use App\Helpers\Files;
use App\Models\VoucherUsage;
use Illuminate\Http\Request;

class VoucherController extends Controller
{
    public function index(VoucherDataTable $voucherDataTable)
    {
        return $voucherDataTable->render('backend.voucher.index');
    }

    public function create()
    {
        return view('backend.voucher.create');
    }

    public function store(StoreVoucherRequest $request)
    {
        $data = $request->safe()->all();
       

    
        Voucher::create([
            'code' => $data['code'] ,
            'description' => $data['description'],
            'discount_type' => $data['discount_type'],
            'voucher_quantity' => $data['voucher_quantity'],
            'discount_value' => $data['discount_value'] ?? null,
            'usage_limit' => $data['usage_limit'] ?? null,
            'start_date' => $data['start_date'] ?? null,
            'end_date' => $data['end_date']?? null,
            'status' => $data['status']?? null,
            'min_order_value' => $data['min_order_value']?? null,
        ]);
   

        
        toastr()->success(__('Voucher created successfully'));
        return redirect()->route('admin.voucher.index');
        
    }

    public function show(string $id)
    {
        $voucher = Voucher::findOrFail($id);
        return view('backend.voucher.show', compact('voucher'));
    }

    public function edit(string $id)
    {
        $voucher = Voucher::findOrFail($id);
        return view('backend.voucher.edit', compact('voucher'));
    }

    public function update(UpdateVoucherRequest $request, string $id)
    {
        $data = $request->safe()->all();
        $voucher = Voucher::findOrFail($id);

      

        $voucher->update($data);

        toastr()->success(__('Voucher updated successfully'));
        return redirect()->route('admin.voucher.index');
    }

    public function destroy(string $id)
    {
        $voucher = Voucher::findOrFail($id);
        $voucher->delete();

        toastr()->success(__('Voucher deleted successfully'));
        return redirect()->route('admin.voucher.index');
    }

    // Phương thức áp dụng voucher
    // app/Http/Controllers/VoucherController.php

    public function applyVoucher(Request $request)
    {
        $voucherCode = $request->input('voucher_code');
        
        \Log::info('Voucher code received: ' . $voucherCode);
    
        // Kiểm tra nếu mã voucher không được nhập
        if (empty($voucherCode)) {
            return response()->json([
                'success' => false,
                'message' => 'Voucher code is required.'
            ]);
        }
    
        // Tìm voucher trong cơ sở dữ liệu
        $voucher = Voucher::where('code', $voucherCode)->first();
    
        // Kiểm tra nếu mã voucher không tồn tại
        if (!$voucher) {
            \Log::info('Voucher not found: ' . $voucherCode);
            return response()->json([
                'success' => false,
                'message' => 'Voucher không tồn tại.'
            ]);
        }
    
        // Kiểm tra nếu mã voucher đã hết hạn hoặc không hợp lệ
        if (!$voucher->isValid()) {
            \Log::info('Voucher is invalid or expired: ' . $voucherCode);
            return response()->json([
                'success' => false,
                'message' => 'Voucher đã hết hạn.'
            ]);
        }
    
        // Kiểm tra số lượng voucher còn lại
        if ($voucher->voucher_quantity <= 0) {
            \Log::info('Voucher quantity exhausted: ' . $voucherCode);
            return response()->json([
                'success' => false,
                'message' => 'Số lượng voucher đã hết.'
            ]);
        }
    
        // Kiểm tra số lần sử dụng voucher
        $usageCount = VoucherUsage::where('voucher_id', $voucher->id)
            ->where('user_id', auth()->id()) // Hoặc $request->user_id nếu có
            ->count();
    
        if ($usageCount >= $voucher->usage_limit) {
            return response()->json([
                'success' => false,
                'message' => 'Bạn đã hết số lần sử dụng voucher.'
            ]);
        }
    
        // Nếu mã voucher hợp lệ, tiến hành tính toán giảm giá
        $subTotal = \Cart::subTotal();
        $discountAmount = 0;

    if ($voucher->discount_type === 1) {
        // Giảm giá cố định
        $discountAmount = $voucher->discount_value;
    } elseif ($voucher->discount_type === 0) {
        // Giảm giá theo phần trăm
        $discountAmount = ($voucher->discount_value / 100) * $subTotal;
    }

    // Đảm bảo không giảm giá âm
    $discountAmount = min($discountAmount, $subTotal);

    $totalAmount = $subTotal - $discountAmount;

    return response()->json([
        'success' => true,
        'discount_amount' => $discountAmount,
        'total_amount' => formatPrice($totalAmount)
    ]);
    }
    
    

    


}
