<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Brand;
use App\Models\Order;
use App\Models\Product;
use App\Models\Category;
use App\Models\{SubscribeForm,RelocateQuoteForms,DonateForms,Contactus};
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;


class DashboardController extends Controller
{
    public function index()
    {
        $totalProducts = Product::count();
        $totalCategories = Category::count();
        $totalBrands = Brand::count();

        $totalAllUsers = User::count();
        $totalUser = User::where('role_as', '0')->count();
        $totalAdmin = User::where('role_as', '1')->count();

        $todayDate = Carbon::now()->format('Y-m-d');

        $thisMonth = Carbon::now()->format('m');
        $thisYear = Carbon::now()->format('Y');

        $totalOrder = Order::count();
        $todayOrder = Order::whereDate('created_at', $todayDate)->count();
        $thisMonthOrder = Order::whereMonth('created_at', $thisMonth)->count();
        $thisYearOrder = Order::whereYear('created_at', $thisYear)->count();

        $donateFormCount=DonateForms::count();
        $contactUsCount=Contactus::count();
        $petRelocateCount=RelocateQuoteForms::count();


        $subQuery = DB::table('subscribe_form')
            ->select('phone_number', DB::raw('MAX(id) as max_id'))
            ->groupBy('phone_number');

        $subscribeFormCount = DB::table('subscribe_form as sf')
            ->joinSub($subQuery, 'sub', function ($join) {
                $join->on('sf.id', '=', 'sub.max_id');
            })->count();

        return view('admin.dashboard', compact('totalProducts', 'totalCategories', 'totalBrands',
                                                'totalAllUsers', 'totalUser', 'totalAdmin',
                                                'totalOrder', 'todayOrder', 'thisMonthOrder',
                                                'thisYearOrder','donateFormCount','contactUsCount','petRelocateCount','subscribeFormCount'
        ));
    }
}
