<?php

namespace App\Http\Controllers\Admin;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Mail\{InvoiceOrderMailable,CancelOrderNotification,OrderCompletedNotification};
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class OrderController extends Controller
{

    #@==== Show All Order List With Filter ===@#
    public function index(Request $request)
    {

        if ($request->isMethod('post')) {
               // Retrieve the start and end dates from the request
            $startDate = $request->start_date;
            $endDate = $request->end_date;
            $order_by=$request->order_by;
            // Retrieve the status from the request
            $status = $request->status;

            // Query the orders based on the filters
            $ordersQuery = Order::query();

            // Apply date range filter if both start and end dates are provided
            if ($startDate && $endDate) {
                $ordersQuery->whereBetween('created_at', [$startDate, $endDate]);
            }

            if($order_by){
                $ordersQuery->orderBy('id', $order_by);
            }
            // Apply status filter if status is provided
            if ($status) {
                $ordersQuery->where('status_message', $status);
            }

            // Retrieve paginated orders based on the applied filters
            $orders = $ordersQuery->orderBy('id','DESC')->get();

            // Return the filtered orders to the view
            return view('admin.orders.index', compact('orders'));
        }else{
            $orders = Order::orderBy('id','DESC')->get();
            return view('admin.orders.index', compact('orders'));
        }
        
    }


    #@==== View Order Details -====@#
    public function show(int $orderId)
    {
        $order = Order::where('id', $orderId)->first();

        if ($order) {
            return view('admin.orders.view', compact('order'));
        } else {
            return redirect('admin/orders')->with('message', 'Order id not found!');
        }
    }


    #@==== update Order Status ====@#
    public function updateOrderStatus(int $orderId, Request $request)
    {
        $order = Order::where('id', $orderId)->first();
        if ($order) {
             $update=$order->update([
                'status_message' => $request->order_status
            ]);
             if($update){
                $user = $order->user()->first();
                if($request->order_status == 'cancelled'){
                    $mail=Mail::to($user->email)->send(new CancelOrderNotification($order,$user));                   
                }elseif($request->order_status == 'completed'){
                    $mail=Mail::to($user->email)->send(new OrderCompletedNotification($order,$user));   
                }
             }
            
            return redirect('admin/orders/'.$orderId)->with('message', 'Order Status Updated!');
        } else {
            return redirect('admin/orders/'.$orderId)->with('message', 'Order id not found!');
        }
    }

    #@==== Delete Order ====@#
    public function destroy($id){
        $id=decrypt($id);
        $order = Order::find($id);
        if($order){
            $order->orderItems()->delete();
            $order->delete();
            return redirect()->route('admin.order.list')->with('message', 'Order Deleted Successfully!');
        }
        return redirect()->route('admin.order.list')->with('message', 'Something went wrong!');
    }


    #@==== View Invoice ====@#
    public function viewInvoice(int $orderId)
    {
        $order = Order::findOrFail($orderId);
        return view('admin.invoice.generate-invoice', compact('order'));
    }


    #@==== GEnerate Invoice ====@#
    public function generateInvoice(int $orderId)
    {
        $order = Order::findOrFail($orderId);
        $data = ['order' => $order];
        $pdf = Pdf::loadView('admin.invoice.generate-invoice', $data);

        $todayDate = Carbon::now()->format('d-m-Y');
        return $pdf->download('invoice-'.$order->id.'-'.$todayDate.'.pdf');
    }


    #@==== Send Mail invoice ====@#
    public function mailInvoice(int $orderId)
    {
        try{
            $order = Order::findOrFail($orderId);
            Mail::to("$order->email")->send(new InvoiceOrderMailable($order));
            return redirect('admin/orders/'.$orderId)->with('message', 'Invoice mail has been sent to '.$order->email);
        }catch(\Exception $e){

            return redirect('admin/orders/'.$orderId)->with('message', 'Something Went Wrong!');
        }
    }
}
