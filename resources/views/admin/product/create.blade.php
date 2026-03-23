@extends('layouts.admin',['layout'=>'product'])

@section('title', 'Products')
<style>
    .nav-link.active {
        background-color: #007bff; /* Change the background color of active tab */
        color: #fff; /* Change the text color of active tab */
    }

    /* Style for inactive tabs */
    .nav-link {
        background-color: #f8f9fa; /* Change the background color of inactive tabs */
        color: #333; /* Change the text color of inactive tabs */
    }

    /* Hover effect for tabs */
    .nav-link:hover {
        background-color: #e9ecef; /* Change the background color on hover */
        color: #555; /* Change the text color on hover */
    }
    .leftsidebar{
        border:1px solid;
    }
</style>
@section('content')
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<div class="row" id="reload-full">
    <div class="col md-12">
        <div class="card">
            <div class="card-header">
                <h4>Add Products
                    <a href="{{ url('admin/product') }}" class="btn btn-primary btn-sm text-white float-end">BACK</a>
                </h4>
            </div>
            <div class="card-body">
                <!-- Form Steps -->
                <form id="productForm" action="{{ route('admin.store.product') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <!-- Step 1: Home -->
                        <input type="hidden" id="product_id" value="">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="name">Product Name <span class="text-danger">*</span></label>
                                    <input type="text" name="name" class="form-control" value="" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="category_id">Category <span class="text-danger">*</span></label>
                                    <select name="category_id[]" id="multiple-checkboxes" class="form-control" multiple required>
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="slug">Product Slug <span class="text-danger">*</span></label>
                                    <input type="text" name="slug" class="form-control" value="" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">                                                      
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="quantity">Quantity <span class="text-danger">*</span></label>
                                    <input type="number" name="quantity" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="name">SKU <span class="text-danger">*</span></label>
                                    <input type="text" name="sku"  class="form-control" placeholder="SKU" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="original_price">Price <span class="text-danger">*</span></label>
                                    <input type="number" name="original_price" class="form-control" required>
                                </div>
                            </div>
                             
                        </div>
                        <div class="row">
                            
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="original_price">Selling Price <span class="text-danger">*</span></label>
                                    <input type="number" name="selling_price" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="slug">Tax</label>
                                    <input type="number" name="tax" class="form-control" value="">
                                </div>
                            </div> 
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="brand">Select Brand</label>
                                    <select name="brand" class="form-control" required>
                                        @foreach ($brands as $brand)
                                        <option value="{{ $brand->name }}">{{ $brand->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            
                        </div>

                        <div class="mb-3">
                            <label for="small_description">Small Description (500 Words) <span class="text-danger">*</span></label>
                            <textarea name="small_description" id="small_description" class="form-control" rows="4" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="description">Description <span class="text-danger">*</span></label>
                            <textarea name="description" id="description" class="form-control" rows="4" required></textarea>
                        </div>
                        <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label>Product Featured Image (270 x 270)</label><br><br>
                                <input type="file" class="form-control" name="featured_image" onchange="previewImage(event)">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img id="featured_image_preview" src="{{ 'https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png' }}" width="150px"  alt="Featured Image Preview" style="max-width: 100%;">
                        </div>                        
                    </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label>Product Images (620 x 620)</label><br><br>
                                    <input type="file" class="form-control" name="image[]" multiple>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-1">
                                <div class="mb-3">
                                    <label for="weight_unit">Weight Unit</label>
                                    <select name="weight_unit" class="form-control">
                                        <option value="kg">Kg</option>
                                        <option value="kg">Pound</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mb-3">
                                    <label for="weight">Weight</label>
                                    <input type="text" name="weight" class="form-control" placeholder="Weight">

                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="mb-3">
                                    <label for="length_unit">Length Unit</label>
                                    <select name="length_unit" class="form-control">
                                        <option value="inch">Inches</option>
                                        <option value="cm">Centi Meter</option>
                                        <option value="meter">Meter</option>
                                    </select>
                                </div>
                            </div>
                             <div class="col-md-3">
                                <div class="mb-3">
                                    <label for="title">Type</label>
                               <select class="form-control" name="offer_type" >
                                    <option value="">Select Type</option>
                                    <option value="dog">Dog</option>
                                    <option value="cat">Cat</option>
                                </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mb-3">
                                    <label for="length">Length</label>
                                    <input type="text" name="length" class="form-control" placeholder="Length">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="mb-3">
                                    <label for="date_available">Date Available</label>
                                    <input type="date" name="date_available" class="form-control" placeholder="">                            
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mb-3">
                                    <label for="height">Height</label>
                                    <input type="number" name="height" class="form-control" placeholder="Height">                           
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mb-3">
                                    <label for="width">Width</label>
                                    <input type="number" name="width" class="form-control" placeholder="Width">                           
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mb-3">
                                    <label for="min_quantity">Minimum Order Quantity</label>
                                    <input type="number" name="min_quantity" class="form-control" placeholder="Minimum Order">                           
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label for="meta_title">Meta Title</label>
                                    <input type="text" name="meta_title" class="form-control" value="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="meta_keyword">Meta Keyword</label>
                                    <textarea name="meta_keyword" class="form-control" rows="4"></textarea>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="meta_description">Meta Description</label>
                                    <textarea name="meta_description" class="form-control" rows="4"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 mt-4">
                                <div class="mb-3">
                                    <label for="featured">Featured</label>
                                    <input type="checkbox" name="featured" style="width: 25px; height: 25px;">
                                </div>
                            </div>
                            <div class="col-md-2 mt-4">
                                <div class="mb-3">
                                    <label for="seasonal_special">Seasonal Special</label>
                                    <input type="checkbox" name="seasonal_special" style="width: 25px; height: 25px;">
                                </div>
                            </div>
                            <div class="col-md-2  mt-4">
                                <div class="mb-3">
                                    <label for="status">Status</label>
                                    <input type="checkbox" name="status" style="width: 25px; height: 25px;">
                                </div>
                            </div>
                            <div class="col mt-2 d-flex gap-4 align-items-center">
                                <label for="publishStatus">Product Status:</label>
                                <div>
                                    <input type="radio" id="publish" name="is_public" value="1" required>
                                    <label for="publish">Publish</label>
                                </div>
                                <div>
                                    <input type="radio" id="draft" name="is_public" value="0" required>
                                    <label for="draft">Draft</label>
                                </div>
                            </div>
                        </div>



                    <div class="card card-primary card-outline">


                        {{-- <div class="row">
                            <div class="col-5 col-sm-3">
                                <div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false">Attributes</a>
                                    <a class="nav-link" id="vert-tabs-messages-tab" data-toggle="pill" href="#vert-tabs-messages" role="tab" aria-controls="vert-tabs-messages" aria-selected="false">Variations</a>
                                </div>
                            </div>
                            <div class="col-7 col-sm-9">
                                <div class="tab-content" id="vert-tabs-tabContent">
                                    <div class="tab-pane fade active show" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
                                        <h3 class="mt-3">Attributes</h3>
                                        <div class="mb-3">
                                            <table class="table table-bordered table-hover" id="dynamic_attribute_field">
                                                        <tr id="attribute_clone_div">
                                                            <td>
                                                                <label for="color">Name</label>
                                                                <select class="form-control" name="attribute_id[]" id="attribute_id">
                                                                    <option value="">Select Attribute</option>
                                                                    @foreach ($attributes as $attribute)
                                                                        <option value="{{ $attribute->id }}">{{ $attribute->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <label for="size">Value</label>
                                                                <input type="text" id="attribute_value" name="attribute_value[]" class="form-control" value="" placeholder="e.g Red or Small">
                                                            </td>
                                                            <td>
                                                                <button type="button" name="add" id="add_more_attribute" class="btn btn-primary">Add More</button>
                                                            </td>
                                                        </tr>
                                            </table>
                                            <div class="mt-3 ">
                                                <button type="button" id="submitAttributeBtn" class="btn btn-primary">Save Attributes</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="vert-tabs-messages" role="tabpanel" aria-labelledby="vert-tabs-messages-tab">
                                        <h3 class="mt-3">Variations</h3>
                                        <div class="mb-3">
                                            <table class="table table-bordered table-hover" id="dynamic_variation_field">
                                                <tr id="variation_clone_div">
                                                    <td>
                                                        <label for="attribute"></label>
                                                        <select class="form-control" name="variation_attributes">

                                                        </select>
                                                    </td>
                                                    <td>
                                                        <label for="quantity">Quantity</label>
                                                        <input type="number" name="variation_quantity[]" value="" placeholder="Enter Quantity"   class="form-control total_amount"/>
                                                    </td>
                                                    <td>
                                                        <label for="price">Price</label>
                                                        <input type="text" name="variation_price[]" value="" placeholder="Enter Price" class="form-control total_amount"/>
                                                    </td>

                                                    <td><button type="button" name="add_more_variations" id="add_more_variations" class="btn btn-primary">Add More</button></td>
                                                </tr>
                                            </table>
                                            <div class="mt-3">
                                                <button type="button" id="submitVariationBtn" class="btn btn-primary">Save Variations</button>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div> --}}
                    </div>
                    <!-- Navigation Buttons -->
                    <div class="text-center mt-4">
                        <button type="submit" id="submitBtn" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    var saveAttributeUrl="{{ route('save.product.attributes') }}";
    var saveVariationUrl="{{ route('save.product.variations') }}";
    var deleteAttributeUrl="{{ route('delete.product.attributes') }}";
</script>
@endsection
