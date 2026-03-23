@extends('layouts.admin',['layout'=>'product'])
@section('title', 'Products')
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
                <h4>Edit Products
                    <a href="{{ url('admin/product') }}" class="btn btn-primary btn-sm text-white float-end">BACK</a>
                </h4>
            </div>
            <div class="card-body">
                <!-- Form Steps -->
                <form id="productForm" action="{{ url('admin/product/'.$product->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <!-- Step 1: Home -->
                    <input type="hidden" id="product_id" value="{{ $product->id}}">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="name">Product Name <span class="text-danger">*</span></label>
                                <input type="text" name="name" class="form-control" value="{{ $product->name ?? '' }}" required>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="category_id">Category <span class="text-danger">*</span></label>
                                <select name="category_id[]" class="form-control" id="multiple-checkboxes" multiple required>
                                    @foreach ($categories as $category)
                                        @php
                                            $selected = $selectedCategories->contains('cat_id', $category->id) ? 'selected' : '';
                                        @endphp
                                        <option value="{{ $category->id }}" {{ $selected }}>{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="slug">Product Slug <span class="text-danger">*</span></label>
                                <input type="text" name="slug" class="form-control" value="{{ $product->slug }}" required>
                            </div>
                        </div>
                    </div>
                    <div class="row"> 
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="quantity">Quantity <span class="text-danger">*</span></label>
                                <input type="number" name="quantity" class="form-control" value="{{ $product->quantity }}" required>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="name">SKU <span class="text-danger">*</span></label>
                                <input type="text" name="sku" class="form-control" placeholder="SKU" value="{{ $product->sku }}" required>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="original_price">Price <span class="text-danger">*</span></label>
                                <input type="number" name="original_price" class="form-control" value="{{ $product->original_price }}" required>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="original_price">Selling Price <span class="text-danger">*</span></label>
                                <input type="number" name="selling_price" class="form-control" value="{{ $product->selling_price }}" required>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="tax">Tax</label>
                                <input type="number" name="tax" class="form-control" value="{{ $product->tax }}">
                            </div>
                        </div>
                        
                        
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="brand">Select Brand</label>
                                <select name="brand" class="form-control" required>
                                @foreach ($brands as $brand)
                                    <option value="{{ $brand->name }}" {{ $brand->name == $product->brand ? 'selected':'' }}>{{ $brand->name }}</option>
                                @endforeach
                                </select>
                            </div>
                        </div>
                        
                    </div>
                    <div class="mb-3">
                        <label for="small_description">Small Description (500 Words)</label>
                        <textarea name="small_description" id="small_description" class="form-control" rows="4">{{ $product->small_description }}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="description">Description</label>
                        <textarea name="description" id="description"  class="form-control" rows="4">{{ $product->description }}</textarea>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label>Product Featured Image (270 x 270)</label><br><br>
                                <input type="file" class="form-control" name="featured_image" onchange="previewImage(event)">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <img id="featured_image_preview" src="{{ asset($product->featured_image)  ?? 'https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png' }}" width="150px"  alt="Featured Image Preview" style="max-width: 100%; margin-bottom:10px">
                        </div>                        
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label>Product Images (620 x 620)</label><br><br>
                                <input type="file" class="form-control upload__multiplefile" name="image[]" multiple onchange="previewMultipleImages(event)">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                @foreach($product->productImages as $img)
                                    <img class="preview-image" src="{{ asset($img->image)  ?? 'https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png' }}" width="150px"  alt="Product Image Preview" style="max-width: 100%; margin-bottom:10px">
                                @endforeach
                             
                            </div>
                        </div>
                    </div>
                    <div class="row">
                            <div class="col-md-1">
                                <div class="mb-3">
                                    <label for="weight_unit">Weight Unit</label>
                                    <select name="weight_unit" class="form-control">
                                        <option value="">Select Unit</option>
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
                                        <option value="">Select Unit</option>
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
                                    <option value="dog" {{ ('dog' == $product->offer_type) ? 'selected' : '' }}>Dog</option>
                                    <option value="cat" {{ ('cat' == $product->offer_type) ? 'selected' : '' }}>Cat</option>
                                </select>
                                </div>
                            </div>
                            <div class="col-md-4">
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
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="video_1">Video Link 1</label>
                                <input type="text" name="video_1" class="form-control" placeholder="Insert Video Link" value="{{ $product->video_1 }}">                           
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="video_2">Video Link 2</label>
                                <input type="text" name="video_2" class="form-control" placeholder="Insert Video Link" value="{{ $product->video_2 }}">                           
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="video_3">Video Link 3</label>
                                <input type="text" name="video_3" class="form-control" placeholder="Insert Video Link" value="{{ $product->video_3 }}">                    
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label for="meta_title">Meta Title</label>
                                <input type="text" name="meta_title" class="form-control" value="{{ $product->meta_title }}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="meta_keyword">Meta Keyword</label>
                                <textarea name="meta_keyword" class="form-control" rows="4">{{ $product->meta_keyword }}</textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="meta_description">Meta Description</label>
                                <textarea name="meta_description" class="form-control" rows="4">{{ $product->meta_description }}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2 mt-4">
                            <div class="mb-3">
                                <label for="featured">Featured</label>
                                <input type="checkbox" name="featured" {{ ($product->featured) ? 'checked' : '' }} style="width: 25px; height: 25px;">
                            </div>
                        </div>
                        <div class="col-md-2 mt-4">
                            <div class="mb-3">
                                <label for="seasonal_special">Seasonal Special</label>
                                <input type="checkbox" name="seasonal_special" {{ ($product->seasonal_special) ? 'checked' : '' }} style="width: 25px; height: 25px;">
                            </div>
                        </div>
                        <div class="col-md-2  mt-4">
                            <div class="mb-3">
                                <label for="status">Status</label>
                                <input type="checkbox" name="status" {{ ($product->status) ? 'checked' : '' }} style="width: 25px; height: 25px;">
                            </div>
                        </div>
                        <div class="col mt-2 d-flex gap-4 align-items-center">
                            <label for="publishStatus">Product Status:</label>
                            <div>
                                <input type="radio" id="publish" name="is_public" value="1" required {{ $product->is_public == 1 ? 'checked' : '' }}>
                                <label for="publish">Publish</label>
                            </div>
                            <div>
                                <input type="radio" id="draft" name="is_public" value="0" required {{ $product->is_public == 0 ? 'checked' : '' }}>
                                <label for="draft">Draft</label>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="card card-primary card-outline">
                        <div class="row">
                            <div class="col-4 col-sm-3">
                                <div class="nav flex-column nav-tabs h-100 text-center" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false"> <i class="mdi mdi-tag menu-icon"></i> Attributes</a>
                                    <a class="nav-link" id="vert-tabs-messages-tab" data-toggle="pill" href="#vert-tabs-messages" role="tab" aria-controls="vert-tabs-messages" aria-selected="false"><i class="mdi mdi-layers menu-icon"></i> Variations</a>
                                    <a class="nav-link" id="vert-tabs-faq-tab" data-toggle="pill" href="#vert-tabs-faq" role="tab" aria-controls="vert-tabs-faq" aria-selected="false"><i class="mdi mdi-frequently-asked-questions menu-icon"></i> FAQ's</a>
                                    <a class="nav-link" id="vert-tabs-addon-tab" data-toggle="pill" href="#vert-tabs-addon" role="tab" aria-controls="vert-tabs-addon" aria-selected="false"><i class="mdi mdi-plus-circle menu-icon"></i> Addon</a>
                                </div>
                            </div>
                            <div class="col-8 col-sm-9">
                                <div class="tab-content" id="vert-tabs-tabContent">
                                    <div class="tab-pane fade active show" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
                                        <h3 class="mt-3">Attributes</h3>
                                        <div class="mb-3">
                                            <table class="table table-bordered table-hover" id="dynamic_attribute_field">
                                                @if($product_attr_count > 0)
                                                    @foreach ($product_attributes as $key => $attr)
                                                        <tr id="attribute_clone_div">
                                                            <td>
                                                                <label for="color">Name</label>
                                                                <select class="form-control" name="attribute_id[]" id="attribute_id">
                                                                    <option value="">Select Attribute</option>
                                                                    @foreach ($attributes as $attribute)
                                                                        <option value="{{ $attribute->id }}" {{ ($attribute->id == $attr->attribute_id) ? 'selected' : '' }}>{{ $attribute->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <label for="size">Value</label>
                                                                <input type="text" id="attribute_value" name="attribute_value[]" class="form-control" value="{{ $attr->value }}" placeholder="e.g Red or Small">
                                                            </td>
                                                            @if ($key == 0)
                                                                <td>
                                                                    <button type="button" name="add" id="add_more_attribute" class="btn btn-primary">Add More</button>
                                                                </td>
                                                            @else
                                                                <td>
                                                                    <button type="button" name="remove" id="remove_attr_{{ $key }}" data-value="{{ $attr->id }}" class="btn btn-danger btn_attr_remove">X</button>
                                                                </td>
                                                            @endif
                                                        </tr>
                                                    @endforeach
                                                @else
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

                                                @endif
                                            </table>
                                            <div class="mt-3 ">
                                                <button type="button" id="submitAttributeBtn" class="btn btn-primary">Save Attributes</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="vert-tabs-messages" role="tabpanel" aria-labelledby="vert-tabs-messages-tab">
                                        <h3 class="mt-3">Variations</h3>
                                        <div class="mb-3">
                                            @if($product_attr_count > 0)
                                             <table class="table table-bordered table-hover" id="dynamic_variation_field">                            
                                                <tr id="variation_clone_div">
                                                @php
                                                    $displayedAttributes = []; // Array to keep track of displayed attributes
                                                @endphp

                                                @foreach($product_variation_attr as $index => $attribute)
                                                    @if (!in_array($attribute->name, $displayedAttributes))
                                                        @php
                                                            $displayedAttributes[] = $attribute->name; // Add attribute name to the displayed list
                                                        @endphp
                                                        <td>
                                                            <label for="attribute_{{$attribute->id}}">{{$attribute->name}}</label>
                                                            <select class="form-control" name="variation_attributes[{{$attribute->id}}]">
                                                                <option value="">Select {{$attribute->name}}</option>
                                                                @foreach($attribute->values as $value)
                                                                    <option value="{{$value->id}}">{{$value->value}}</option>
                                                                @endforeach
                                                            </select>
                                                        </td>
                                                    @endif
                                                @endforeach
                                                    <td>
                                                        <label for="quantity">Quantity</label>
                                                        <input type="number" name="variation_quantity[]" value="" placeholder="Enter Quantity"   class="form-control total_amount"/>
                                                    </td>
                                                    <td>
                                                        <label for="price">Price</label>
                                                        <input type="text" name="variation_price[]" value="" placeholder="Enter Price" class="form-control total_amount"/>
                                                    </td>

                                                    <td>
                                                        <button type="button" name="add_more_variations" id="add_more_variations" class="btn btn-primary">Add More</button>
                                                    </td>
                                                </tr>                                          
                                            </table>
                                            <div class="mt-3">
                                                <button type="button" id="submitVariationBtn" class="btn btn-primary">Save Variations</button>
                                            </div>
                                            <table class="table table-bordered table-hover">
                                                 @foreach ($productVariationValues as $key => $attr)
                                                        <tr id="attribute_clone_div">
                                                        @foreach ($attr['attributes'] as $key1 => $att)
                                                            <td>
                                                                <label for="color">{{$att['name']}}</label>
                                                                <input value="{{$att['value']}}" class="form-control" name="variation_attributes[]" disabled>
                                                            </td>
                                                            @endforeach  

                                                            <td>
                                                                <label for="size">Quantity</label>
                                                                <input type="text" value="{{$attr['quantity']}}" name="variation_quantity1[]" class="form-control" placeholder="Quantity" data-id="{{ $attr['id'] }}" data-type="quantity">
                                                            </td>
                                                            <td>
                                                                <label for="size">Price</label>
                                                                <input type="text" value="{{$attr['price']}}" name="variation_price1[]" data-id="{{ $attr['id'] }}" class="form-control" placeholder="Price" data-type="price">
                                                            </td>
                                                            <td>
                                                                  @if($attr['status'] == 0)
                                                                    <button type="button" name="remove" id="remove_attr_{{ $key }}" data-status="1" data-value="{{ $attr['id'] }}" class="btn btn-danger btn_variation_status" title="Disable Variation">X</button>
                                                                @else
                                                                    <button type="button" name="remove" id="remove_attr_{{ $key }}" data-status="0" data-value="{{ $attr['id'] }}" class="btn btn-success btn_variation_status" title="Enable Variation">✔</button>
                                                                @endif
                                                                
                                                            </td>
                                                        </tr>
                                                @endforeach  
                                            </table>
                                            @else
                                               <div>No Attribute add</div>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="vert-tabs-faq" role="tabpanel" aria-labelledby="vert-tabs-faq-tab">
                                        <h3 class="mt-3">FAQ's
                                             <a href="#" data-bs-toggle="modal" data-bs-target="#addFaqModal" class="btn btn-primary btn-sm float-end">Add New</a>
                                        </h3>
                                        <hr>
                                        <div class="mb-3">
                                            <table class="table table-bordered table-hover" id="product_faqs_table">
                                                <thead>
                                                    <tr>
                                                        <th>Title</th>
                                                        <th>Description</th>
                                                        <th>Action</th>
                                                    </tr>                                                    
                                                </thead>
                                                <tbody>
                                                    @if($faqs)
                                                        @foreach($faqs as $value)
                                                            <tr>
                                                                <td>{{ $value->title }}</td>
                                                                <td width="30%">{!! $value->description !!}</td>
                                                                <td>
                                                                    <a href="javascript:void(0)" class="btn btn-success btn-sm" onclick="editFaqModel('{{ $value->id }}','{{ $value->title }}','{{ $value->description }}')">Edit</a>
                                                                    <a href="javascript:void(0)" onclick="deleteFaq('{{ $value->id }}')" class="btn btn-danger btn-sm">
                                                                        Delete
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    @endif
                                                </tbody>
                                                
                                            </table>                                            
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="vert-tabs-addon" role="tabpanel" aria-labelledby="vert-tabs-addon-tab">
                                        <h3 class="mt-3">Addons</h3>
                                        <!-- Addon content goes here -->
                                        <div class="mb-3">
                                            <table class="table table-bordered table-hover" id="dynamic_addon_field">
                                                @if(count($all_addons) > 0)
                                                    @foreach ($all_addons as $key => $attr)
                                                 
                                                        <tr id="addon_clone_div">
                                                            <td>
                                                                <label for="addon_id">Name</label>
                                                                <select class="form-control" name="addon_id[]" id="addon_id">
                                                                    <option value="">Select Addon</option>
                                                                    @foreach ($addons as $addon)
                                                                        <option value="{{ $addon->id }}" {{ ($addon->id == $attr->addon_id) ? 'selected' : '' }}>{{ $addon->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </td>                                                            
                                                            @if ($key == 0)
                                                                <td>
                                                                    <button type="button" name="add" id="add_more_addons" class="btn btn-primary">Add More</button>
                                                                </td>
                                                            @else
                                                                <td>
                                                                    <button type="button" name="remove" id="remove_addon_{{ $key }}" data-value="{{ $attr->id }}" class="btn btn-danger btn_addon_remove">X</button>
                                                                </td>
                                                            @endif
                                                        </tr>
                                                    @endforeach
                                                @else
                                                    <tr id="addon_clone_div">
                                                        <td>
                                                            <label for="color">Name</label>
                                                            <select class="form-control" name="addon_id[]" id="addon_id">
                                                                <option value="">Select Addon</option>
                                                                @foreach ($addons as $addon)
                                                                    <option value="{{ $addon->id }}">{{ $addon->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </td>                                    
                                                        <td>
                                                            <button type="button" name="add" id="add_more_addons" class="btn btn-primary">Add More</button>
                                                        </td>                                                          
                                                    </tr>

                                                @endif
                                            </table>
                                            <div class="mt-3 ">
                                                <button type="button" id="submitAddonBtn" class="btn btn-primary">Save Addon</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <!-- Navigation Buttons -->
                    <div class="text-center mt-4">
                        <button type="submit" id="submitBtn" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@include('admin.product.modal.createNewFaq')
@include('admin.product.modal.editFaq')

<script>
    var saveAttributeUrl="{{ route('save.product.attributes') }}";
    var saveVariationUrl="{{ route('save.product.variations') }}";
    var saveAddonUrl="{{ route('save.product.addons') }}";
    var deleteAttributeUrl="{{ route('delete.product.attributes') }}";
    var saveFaqUrl="{{ route('store.product.faq') }}";
    var updateFaqUrl="{{ route('update.product.faq') }}";
    var deleteFaqUrl="{{ route('delete.product.faq') }}";
    var deleteVariationUrl="{{ route('delete.product.variation') }}";
    var updateVariationUrl="{{ route('update.product.variations') }}";

</script>
@endsection
