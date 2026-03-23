@extends('layouts.admin',['layout'=>'product'])

@section('title', 'Products')

@section('content')

<div class="row">
    <div class="col md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">

                <h3 class="mt-3">Products
                    <a href="{{ url('admin/product/create') }}" class="btn btn-primary btn-sm text-white float-end">Add Products</a>
                </h3>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.product.list') }}" method="POST" class="order_filter">
                        @csrf
                        <div class="row">
                            <div class="col-md-2">
                                <label for="">Filter by Order</label>
                                <select name="order_by" class="form-control">
                                    <option value="">Select Order</option>
                                    <option value="asc" {{ Request::get('order_by') == "asc" ? 'selected':''}}>ASC</option>
                                    <option value="desc" {{ Request::get('order_by') == "desc" ? 'selected':''}}>DESC</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="">Filter by Category</label>
                                <select name="category" class="form-control">
                                    <option value="">Select Category</option>
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}" {{ Request::get('category') == $category->id ? 'selected':''}}>{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="col-md-2">
                                <label for="">Filter by Name</label>
                                <input type="text" name="product_name" class="form-control" value="{{ Request::get('product_name') }}" placeholder="Type Name...">
                            </div>
                            <div class="col-md-2">
                                <label for="">Filter by SKU</label>
                                <input type="text" name="product_sku" class="form-control" value="{{ Request::get('product_sku') }}" placeholder="Type SKU...">
                            </div>

                            <div class="col-md-3">
                                <br>
                                <button type="submit" class="btn btn-primary btn-sm">Filter</button>
                            </div>
                        </div>
                    </form>
                <table class="table table-bordered table-striped" id="product_datsatable">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Category</th>
                            <th>Product</th>
                            <th>Sku</th>
                            <th>Price</th>
                            <th>Selling Price</th>
                            <th>Quantity</th>
                            <th>Tax (In %)</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($products as $product)
                            <tr>
                                <td>{{ $product->id }}</td>
                                <td>
                                    @if ($product->category)
                                        {{ $product->category->name }}
                                    @else
                                        No Category
                                    @endif
                                </td>
                                <td>{{ $product->name }}</td>
                                <td>{{ $product->sku }}</td>
                                <td>{{ $product->original_price }}</td>
                                <td>{{ $product->selling_price }}</td>
                                <td>{{ $product->quantity }}</td>
                                <td>{{ $product->tax }}</td>
                                <td>{{ $product->status == '1' ? 'Hidden':'Visible' }}</td>
                                <td>
                                    <a href="{{ url('admin/product/edit/'.$product->id) }}" class="btn btn-success btn-sm">
                                        Edit
                                    </a>
                                    <a href="{{ url('admin/product/delete/'.$product->id) }}" onclick="return confirm('Are you sure to Delete?')" class="btn btn-danger btn-sm">
                                        Delete
                                    </a>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="7">No Products Available</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
                <div>
                    {{ $products->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
