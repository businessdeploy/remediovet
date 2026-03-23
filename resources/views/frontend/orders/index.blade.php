@extends('layouts.app',['layout'=>'orders'])

@section('title', 'My Orders')

@section('content')

    <div class="py-3 py-md-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="shadow bg-white p-3">
                        <h4 class="mb-4">My Orders</h4>
                        <hr>
                        <div class="table-responsive">
                            <table class="table table-borderd table-striped">
                                <thead>
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>Tracking No</th>
                                        <th>Username</th>
                                        <th>Payment Mode</th>
                                        <th>Ordered Date</th>
                                        <th>Status Message</th>
                                        <th>Payment Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($orders as $item)
                                        @php
                                            if($item->payment_status){
                                                $paymentStatus="<span class='badge bg-success'>Paid</span>";
                                            }else{
                                                $paymentStatus="<span class='badge bg-danger'>Unpaid</span>";
                                            }
                                        @endphp
                                        <tr>
                                            <td data-label="Order ID">{{ $loop->iteration }}</td>
                                            <td data-label="Tracking No">{{ $item->tracking_no }}</td>
                                            <td data-label="Username">{{ $item->fullname }}</td>
                                            <td data-label="Payment Mode">{{ $item->payment_mode }}</td>
                                            <td data-label="Ordered Date">{{ $item->created_at->format('d-m-Y') }}</td>
                                            <td data-label="Status Message">{{ $item->status_message }}</td>
                                            <td data-label="Payment Status">{!! $paymentStatus !!}</td>
                                            <td data-label="Action">
                                                <a href="{{ url('orders/'.$item->id) }}" class="btn rounded-pill px-3 py-1 bg-orange text-white">View</a>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="7">No Orders Available</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                            <div>
                                {{ $orders->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
