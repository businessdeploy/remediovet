@extends('layouts.admin',['layout'=>'pet_flight'])
@section('title', 'Pet Relocation')
@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                    Update Pet Flight
                    <!-- <a href="{{ url('admin/about') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a> -->
                </h4>
            </div>
            <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-warning">
                        @foreach ($errors->all() as $error)
                            <div>{{ $error }}</div>
                        @endforeach
                    </div>
                @endif
                <form action="{{ route('edit.flight',[$flight->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row pet_flight">
                        <h5>Main Banner</h5>
                        <div class="col-md-6 mb-3">
                            <label for="main_banner">Image (1600 x 520)<span class="text-danger">*</span></label>
                            <input type="file" name="main_banner" class="form-control" required>                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($flight->main_banner) }}" height="100px" width="150px" alt="image">
                        </div> 
                    </div>
                    <hr>
                    <div class="row pet_flight">  
                        <h5>Best Pet Relocation Service</h5>
                        <div class="col-md-6 mb-3">
                            <label for="best_service_heading" class="mb-3"><strong>Heading <span class="text-danger">*</span></strong></label>
                            <input type="text" name="best_service_heading" class="form-control" placeholder="Heading" value="{{ $flight->best_service_heading }}" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="best_service_sub_heading" class="mb-3"><strong>Sub-Heading <span class="text-danger">*</span></strong></label>
                            <input type="text" name="best_service_sub_heading" class="form-control" placeholder="Sub Heading" value="{{ $flight->best_service_sub_heading }}" required>
                        </div>
                                          
                        <div class="col-md-12 mb-3">
                            <label for="best_service_content" class="mb-3"><strong>Content <span class="text-danger">*</span></strong></label>
                            <textarea id="best_service_content" name="best_service_content" rows="3" class="form-control" required>{{ $flight->best_service_content }} </textarea>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="best_service_image">Image (670 x 520)<span class="text-danger">*</span></label>
                            <input type="file" name="best_service_image" class="form-control" required>
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($flight->best_service_image) }}" height="100px" width="150px" alt="image">
                        </div>
                    </div>
                    <hr>
                    <div class="row pet_flight">  
                        <h5>Pet Flight</h5>
                        <div class="col-md-6 mb-3">
                            <label for="pet_flight_heading" class="mb-3"><strong>Heading <span class="text-danger">*</span></strong></label>
                            <input type="text" name="pet_flight_heading" class="form-control" placeholder="Heading" value="{{ $flight->pet_flight_heading }}" required>
                        </div>                       
                                          
                        <div class="col-md-12 mb-3">
                            <label for="pet_flight_content" class="mb-3"><strong>Content <span class="text-danger">*</span></strong></label>
                            <textarea id="pet_flight_content" name="pet_flight_content" rows="3" class="form-control" required>{{ $flight->pet_flight_content }} </textarea>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="best_service_image">Image (1380 x 640)<span class="text-danger">*</span></label>
                            <input type="file" name="pet_flight_image" class="form-control" required>
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($flight->pet_flight_image) }}" height="100px" width="150px" alt="image">
                        </div>
                    </div>
                    <hr>
                    <div class="row pet_flight">  
                        <h5>Transporting</h5>
                        <div class="col-md-6 mb-3">
                            <label for="transport_heading" class="mb-3"><strong>Heading</strong></label>
                            <input type="text" name="transport_heading" class="form-control" placeholder="Heading" value="{{ $flight->transport_heading }}">
                        </div>            
                        <div class="col-md-12 mb-3">
                            <label for="transport_content" class="mb-3"><strong>Content</strong></label>
                            <textarea id="transport_content" name="transport_content" rows="3" class="form-control">{{ $flight->transport_content }} </textarea>
                        </div>                        
                    </div>
                    <div class="row transport">
                        <div class="col-md-2 mb-3">
                            <h5>Tab 1</h5>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_1_heading" class="mb-3"><strong>Heading</strong></label>
                            <input type="text" name="transport_tab_1_heading" class="form-control" placeholder="Heading" value="{{ $flight->transport_tab_1_heading }}">
                        </div>   
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_1_content" class="mb-3"><strong>Content</strong></label>
                            <textarea id="transport_tab_1_content" name="transport_tab_1_content" rows="3" class="form-control">{{ $flight->transport_tab_1_content }} </textarea>
                        </div>
                        <div class="col-md-2 mb-3">
                            <h5>Tab 2</h5>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_2_heading" class="mb-3"><strong>Heading</strong></label>
                            <input type="text" name="transport_tab_2_heading" class="form-control" placeholder="Heading" value="{{ $flight->transport_tab_2_heading }}">
                        </div>   
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_2_content" class="mb-3"><strong>Content</strong></label>
                            <textarea id="transport_tab_2_content" name="transport_tab_2_content" rows="3" class="form-control">{{ $flight->transport_tab_2_content }} </textarea>
                        </div>
                        <div class="col-md-2 mb-3">
                            <h5>Tab 3</h5>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_3_heading" class="mb-3"><strong>Heading</strong></label>
                            <input type="text" name="transport_tab_3_heading" class="form-control" placeholder="Heading" value="{{ $flight->transport_tab_3_heading }}">
                        </div>   
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_3_content" class="mb-3"><strong>Content</strong></label>
                            <textarea id="transport_tab_3_content" name="transport_tab_3_content" rows="3" class="form-control">{{ $flight->transport_tab_3_content }} </textarea>
                        </div>
                        <div class="col-md-2 mb-3">
                            <h5>Tab 4</h5>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_4_heading" class="mb-3"><strong>Heading</strong></label>
                            <input type="text" name="transport_tab_4_heading" class="form-control" placeholder="Heading" value="{{ $flight->transport_tab_4_heading }}">
                        </div>   
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_4_content" class="mb-3"><strong>Content</strong></label>
                            <textarea id="transport_tab_4_content" name="transport_tab_4_content" rows="3" class="form-control">{{ $flight->transport_tab_4_content }} </textarea>
                        </div>
                        <div class="col-md-2 mb-3">
                            <h5>Tab 5</h5>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_5_heading" class="mb-3"><strong>Heading</strong></label>
                            <input type="text" name="transport_tab_5_heading" class="form-control" placeholder="Heading" value="{{ $flight->transport_tab_5_heading }}">
                        </div>   
                        <div class="col-md-5 mb-3">
                            <label for="transport_tab_5_content" class="mb-3"><strong>Content</strong></label>
                            <textarea id="transport_tab_5_content" name="transport_tab_5_content" rows="3" class="form-control">{{ $flight->transport_tab_5_content }} </textarea>
                        </div>
                    </div>
                    <hr>
                    <div class="row pet_flight">
                        <h5>Beloved Pets</h5>                        
                        <div class="col-md-4 mb-3">
                            <label for="beloved_heading" class="mb-3"><strong>Main Heading</strong></label>
                            <input type="text" name="beloved_heading" class="form-control" placeholder="Heading" value="{{ $flight->beloved_heading }}">
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="beloved_sub_heading" class="mb-3"><strong>Sub Heading Heading</strong></label>
                            <input type="text" name="beloved_sub_heading" class="form-control" placeholder="Sub Heading" value="{{ $flight->beloved_sub_heading }}">
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="beloved_phone" class="mb-3"><strong>Phone</strong></label>
                            <input type="text" name="beloved_phone" class="form-control" placeholder="Phone" value="{{ $flight->beloved_phone }}">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="beloved_image">Image (340 x 430)</label>
                            <input type="file" name="beloved_image" class="form-control">                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($flight->beloved_image) }}" height="100px" width="150px" alt="image">
                        </div>
                        
                    </div>
                    <hr>
                    <div class="row pet_flight">
                        <h5>Why Choose Remediovet</h5>                        
                        <div class="col-md-12 mb-3">
                            <label for="expert_handlers" class="mb-3"><strong>EXPERT PET HANDLERS</strong></label>
                            <textarea id="expert_handlers" name="expert_handlers" rows="3" class="form-control"> {{ $flight->expert_handlers }} </textarea>
                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="safe_travel" class="mb-3"><strong>SAFE AND COMFORTABLE TRAVEL</strong></label>
                            <textarea id="safe_travel" name="safe_travel" rows="3" class="form-control"> {{ $flight->safe_travel }} </textarea>
                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="pet_friendly_travel" class="mb-3"><strong>PET-FRIENDLY TRAVEL</strong></label>
                            <textarea id="pet_friendly_travel" name="pet_friendly_travel" rows="3" class="form-control"> {{ $flight->pet_friendly_travel }} </textarea>
                        </div>
                        
                    </div> 
                    <hr> 
                    <div class="row pet_flight">  
                        <h5>Expert Section</h5>
                        <div class="col-md-6 mb-3">
                            <label for="expert_heading" class="mb-3"><strong>Heading</strong></label>
                            <input type="text" name="expert_heading" class="form-control" placeholder="Heading" value="{{ $flight->expert_heading }}">
                        </div>                       
                                          
                        <div class="col-md-12 mb-3">
                            <label for="expert_content" class="mb-3"><strong>Content</strong></label>
                            <textarea id="expert_content" name="expert_content" rows="3" class="form-control">{{ $flight->expert_content }} </textarea>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="expert_image">Image (990 x 660)</label>
                            <input type="file" name="expert_image" class="form-control">
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($flight->expert_image) }}" height="100px" width="150px" alt="image">
                        </div>
                    </div>
                    <hr>
                    <!-- <div class="row pet_flight">
                        <h5>Happy Client's Videos</h5>                        
                        <div class="col-md-6 mb-3">
                            <label for="client_video_1">Video 1</label>
                            <input type="file" name="client_video_1" class="form-control">                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="" height="100px" width="150px" alt="image">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="client_video_2">Video 2</label>
                            <input type="file" name="client_video_2" class="form-control">                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="" height="100px" width="150px" alt="image">
                        </div> 
                        <div class="col-md-6 mb-3">
                            <label for="client_video_3">Video 3</label>
                            <input type="file" name="client_video_3" class="form-control">                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="" height="100px" width="150px" alt="image">
                        </div>                         
                    </div>  
                    <hr> -->
                    <div class="row pet_flight">
                        <h5>Gallery</h5>                        
                        <div class="col-md-6 mb-3">
                            <label for="gallery_img_1">Image 1 (720 x 840)</label>
                            <input type="file" name="gallery_img_1" class="form-control">                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($flight->gallery_img_1) }}" height="100px" width="150px" alt="image">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="gallery_img_2">Image 2 (720 x 840)</label>
                            <input type="file" name="gallery_img_2" class="form-control">                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($flight->gallery_img_2) }}" height="100px" width="150px" alt="image">
                        </div> 
                        <div class="col-md-6 mb-3">
                            <label for="gallery_img_3">Image 3 (720 x 840)</label>
                            <input type="file" name="gallery_img_3" class="form-control">                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($flight->gallery_img_3) }}" height="100px" width="150px" alt="image">
                        </div>                         
                    </div> 
                    <div class="col md-12 mb-3">
                                <h4 class="card-header">SEO Tags</h4>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_title">Meta Title</label>
                        <input type="text" name="meta_title" class="form-control" value="{{ $flight->meta_title }}">
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_keyword">Meta Keyword</label>
                        <textarea name="meta_keyword" class="form-control" rows="3">{{ $flight->meta_keyword }}</textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_description">Meta Description</label>
                        <textarea name="meta_description" class="form-control" rows="3">{{ $flight->meta_description }}</textarea>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-primary btn-sm float-end">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
     
@endsection
