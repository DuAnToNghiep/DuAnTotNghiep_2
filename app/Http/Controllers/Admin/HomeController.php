<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $earnings = 22.89;
        $start = $request->query('date_from', Carbon::now()->startOfYear()->format('Y-m-d'));
        $end = $request->query('date_to', Carbon::now()->endOfYear()->format('Y-m-d H:i:s'));

        // Lấy dữ liệu order status
        $orderStatusData = $this->getOrderStatusData($start, $end);

        $order = Order::query()
            ->whereIn('order_status', ['confirmed', 'completed'])
            ->whereBetween('created_at', [$start, $end])
            ->count();

        $revenue = Order::query()
            ->where('order_status', 'completed')
            ->whereBetween('created_at', [$start, $end])
            ->sum('total');

        $product = Product::query()
            ->whereBetween('created_at', [$start, $end])
            ->count();

        $total = Order::query()
            ->whereBetween('created_at', [$start, $end])
            ->sum('total');

        $category = ProductCategory::query()
            ->whereBetween('created_at', [$start, $end])
            ->count();

        // Fetch monthly data for chart
        $monthlyData = Order::query()
            ->selectRaw('MONTH(created_at) as month, COUNT(*) as orders, SUM(total) as revenue')
            ->whereBetween('created_at', [$start, $end])
            ->groupBy('month')
            ->orderBy('month')
            ->get()
            ->keyBy('month');

        // Prepare data for all 12 months
        $months = range(1, 12);
        $orderCounts = [];
        $revenues = [];

        foreach ($months as $month) {
            $data = $monthlyData->get($month, ['orders' => 0, 'revenue' => 0]);
            $orderCounts[] = $data['orders'];
            $revenues[] = $data['revenue'];
        }

        return view('backend.index', compact('order', 'revenue', 'product', 'total', 'category', 'earnings', 'months', 'orderCounts', 'revenues', 'orderStatusData'));
    }

    /**
     * Get order status data between given dates.
     */
    private function getOrderStatusData($start, $end)
    {
        return Order::query()
            ->select('order_status', DB::raw('COUNT(*) as count'))
            ->whereBetween('created_at', [$start, $end])
            ->groupBy('order_status')
            ->pluck('count', 'order_status')
            ->toArray();
    }
<<<<<<< HEAD

    public function getChartData()
    {
        $months = range(1, 12); // Ví dụ: tháng từ 1 đến 12
        // Lấy dữ liệu số lượng sản phẩm theo tháng
        $productData = Product::selectRaw('MONTH(created_at) as month, COUNT(*) as total')
            ->groupBy('month')
            ->pluck('total', 'month')
            ->toArray();
    
        // Lấy dữ liệu số lượng đơn hàng theo tháng
        $orderData = Order::selectRaw('MONTH(created_at) as month, COUNT(*) as total')
            ->groupBy('month')
            ->pluck('total', 'month')
            ->toArray();
    
        // Lấy dữ liệu doanh thu theo tháng
        $revenueData = Order::selectRaw('MONTH(created_at) as month, SUM(total) as total')
        ->groupBy('month')
        ->pluck('total', 'month')
        ->toArray();

     

        // Định dạng dữ liệu cho biểu đồ
        $labels = ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'];
        $productCounts = array_values(array_replace(array_fill(0, 12, 0), $productData));
        $orderCounts = array_values(array_replace(array_fill(0, 12, 0), $orderData));
        $revenues = array_values(array_replace(array_fill(0, 12, 0), $revenueData));
    
        return response()->json([
           'labels' => array_map(fn($month) => "Tháng $month", $months),
            'productCounts' => $productCounts,
            'orderCounts' => $orderCounts,
            'revenues' => $revenues,
        ]);
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
=======
}
>>>>>>> 27143518977e2e48be065e235d0ab6336c711dd0
