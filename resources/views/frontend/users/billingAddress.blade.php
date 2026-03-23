@extends('layouts.app',['layout'=>'account'])
@section('title','Billing Address')
@section('content')
<section class="user-profile my-5">
		
    <div class="container py-5"> 
    	<div class="form-header">
    			<span><i class="fa-solid fa-arrow-left back_button" onclick="redirectToUrl('{{ route('my.account') }}')"></i></span>
		    	<h1 class="fw-bolder text-center">Billing address</h1>
    	</div>
  
    	<div class="content"> 
    		<div class="five p-3 border border-2 billing-border">
    			@if ($errors->any())
				     @foreach ($errors->all() as $error)
				         <div>{{$error}}</div>
				     @endforeach
				 @endif
		        <form method="POST" id="addressForm">
		        	@csrf
		        	<input type="hidden" name="address_id" value="{{ $address->id }}">
		        	<input type="hidden" name="address_type" value="billing">
		            <div class="row mb-3">
		                <div class="col-md-12">
		                    <div class="form-group">
		                        <label for="full_name">Full Name *</label>
		                        <input type="text" class="form-control form-control-lg" id="full_name" name="full_name" value="{{ $address->full_name ?? '' }}" placeholder="First Name" required>
		                    </div>
		                </div>		                
		            </div>		            
		            <div class="row mb-3">
		            	<div class="col-md-6">
		                    <div class="form-group">
		                        <label for="email">Email Address *</label>
		                        <input type="email" class="form-control form-control-lg" id="email" name="email" value="{{ $address->email ?? '' }}" placeholder="Email" required>
		                    </div>
		                </div>
		                <div class="col-md-6">
		                    <div class="form-group">
		                        <label for="phone">Phone *</label>
		                        <input type="tel" class="form-control form-control-lg" id="phone" name="phone" value="{{ $address->phone ?? '' }}" placeholder="Phone" required>
		                    </div>
		                </div>		            	
		            </div>
		            <div class="row mb-3">
		            	<div class="col-md-12">
		                    <div class="form-group">
		                        <label for="country">Country / Region *</label>
		                        <input type="text" class="form-control form-control-lg" id="country" name="country" value="{{ $address->country ?? '' }}" placeholder="Country / Region" required>
		                    </div>
		                </div>
		            </div>
		            <div class="row mb-3">
		            	<div class="col-md-6">
		                    <div class="form-group">
		                        <label for="state">State *</label>
		                        <input type="text" class="form-control form-control-lg" id="state" name="state" value="{{ $address->state ?? '' }}" placeholder="State" required>
		                    </div>
		                </div>
		                <div class="col-md-6">
		                    <div class="form-group">
		                        <label for="city">City *</label>
		                        <input type="text" class="form-control form-control-lg" id="city" name="city" value="{{ $address->city ?? '' }}" placeholder="Town / City" required>
		                    </div>
		                </div>
		            </div>
		            <div class="row mb-3">
		            	<div class="col-md-12">
		                    <div class="form-group">
		                        <label for="street_name">Street Address/Apartment *</label>		                      
		                        <input type="text" class="form-control form-control-lg" id="apartment" name="apartment" value="{{ $address->apartment ?? '' }}" placeholder="Apartment, suite, unit">
		                    </div>
		                </div>
		            </div>		           
		                       
		            <div class="row">
		                <div class="col-md-12 text-center">
		                    <button type="submit"  class="btn btn-primary my-4 order_view">Save Address</button>
		                </div>		                
		            </div>
		        </form>
		    </div>
	    </div>
    </div>
</section>
<script type="text/javascript">
	var updateAddressUrl="{{ route('update.user.address') }}";
	var accountUrl="{{ route('my.account') }}";
</script>
@endsection