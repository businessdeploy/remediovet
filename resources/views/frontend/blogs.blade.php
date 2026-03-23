@extends('layouts.app', ['layout' => 'blog'])

@section('title', 'Blog')

{{-- @section('title', $blogs[0]->meta_title ?? 'Blog')

@section('meta_keyword', $blogs[0]->meta_keyword)

@section('meta_description', $blogs[0]->meta_description) --}}

@section('content')
<style>
	.blog-dog-wrapper {
	    border-radius: 24px;
	}
</style>

<section class="inner-banner">
	<div class="container">
	<div class="inner-title text-center">
		<h1>Blog</h1>
	</div>
	</div>
</section>

<div>
	
</div>

	<!--ul class="list-inline text-center">
		<li  class="list-inline-item">
			<a href="#" class="active_blog_list">All</a>
		</li>
		<li class="list-inline-item">
			<a href="#">Pet Relocation</a>
		</li>
		<li  class="list-inline-item">
			<a href="#">Health</a>
		</li>
		<li class="list-inline-item">
			<a href="#">Pet Relocation</a>
		</li>
		<li  class="list-inline-item">
			<a href="#">Health</a>
		</li>
		<li  class="list-inline-item">
			<a href="#">Health</a>
		</li>
	</ul-->
<section class="blog-listing-block">
	<div class="container">
		<div class="blog-category">
		<nav>
			<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">All</button>
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Pet Relocation</button>
				<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Health</button>
			</div>
		</nav>
		</div>
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade active show" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">				
				<div class="blog-listing-panel">
					 <div class="row" id="blog-container">
						@php 
							$first = true; 
							$count = 0;
						@endphp
						@foreach($blogs as $blog)
							@if ($count < 6)
							<div class="col-sm-12 col-md-6 col-lg-4 mb-4 p-3 blog_view">
								<div class="card custom_card">
									<a href="{{ route('frontend.view.blog',[encrypt($blog->id)]) }}" class="text-decoration-none"><img class="card-img-top custom_cardimg" src="{{ asset($blog->featured_image) }}" alt="img"></a>
									<div class="card-body">
										<h4 class="card-title fw-bold custom_cardtxt blog-link-title"><a href="{{ route('frontend.view.blog',[encrypt($blog->id)]) }}">{{ $blog->title }}</a></h4>
										<p class="card-text custom_cardtxt">{!! Str::limit($blog->description, 150) !!}</p>
									</div>
								</div>
							</div>
							@endif
						@php $count++; @endphp
						@endforeach
					</div>
				</div>
				  <div class="text-center">
				<button id="load-more-btn" class="blog-load-more-btn rounded-pill fs-5 px-4 py-2">Load More</button>
				</div>
			</div>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">		
				<div class="blog-listing-panel">
					 <div class="row" id="blog-container">
						@php 
							$first = true; 
							$count = 0;
						@endphp
						@foreach($petflight_blogs as $pblog)
							@if ($count < 3)
							<div class="col-sm-12 col-md-6 col-lg-4 mb-4 p-3 blog_view">
								<div class="card custom_card">
									<a href="{{ route('frontend.view.blog',[encrypt($pblog->id)]) }}" class="text-decoration-none"><img class="card-img-top custom_cardimg" src="{{ asset($pblog->featured_image) }}" alt="img"></a>
									<div class="card-body">
										<h4 class="card-title fw-bold custom_cardtxt blog-link-title"><a href="{{ route('frontend.view.blog',[encrypt($pblog->id)]) }}">{{ $pblog->title }}</a></h4>
										<p class="card-text custom_cardtxt">{!! Str::limit($pblog->description, 150) !!}</p>
									</div>
								</div>
							</div>
							@endif
						@php $count++; @endphp
						@endforeach
					</div>
				</div>
				<!--   <div class="text-center">
				<button id="load-more-btn" class="blog-load-more-btn rounded-pill fs-5 px-4 py-2">Load More</button>
				</div> -->
			</div>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
				<div class="blog-listing-panel">
					 <div class="row" id="blog-container">
						@php 
							$first = true; 
							$count = 0;
						@endphp
						@foreach($health_blogs as $hblog)
							@if ($count < 3)
							<div class="col-sm-12 col-md-6 col-lg-4 mb-4 p-3 blog_view">
								<div class="card custom_card">
									<a href="{{ route('frontend.view.blog',[encrypt($hblog->id)]) }}" class="text-decoration-none"><img class="card-img-top custom_cardimg" src="{{ asset($hblog->featured_image) }}" alt="img"></a>
									<div class="card-body">
										<h4 class="card-title fw-bold custom_cardtxt blog-link-title"><a href="{{ route('frontend.view.blog',[encrypt($hblog->id)]) }}">{{ $hblog->title }}</a></h4>
										<p class="card-text custom_cardtxt">{!! Str::limit($hblog->description, 150) !!}</p>
									</div>
								</div>
							</div>
							@endif
						@php $count++; @endphp
						@endforeach
					</div>
				</div>
				 <!--  <div class="text-center">
				<button id="load-more-btn" class="blog-load-more-btn rounded-pill fs-5 px-4 py-2">Load More</button>
				</div> -->
			</div>
		</div>
	</div>
	</section>
<div class="blog container py-5">
	
    <!--@foreach($blogs->take(1) as $firstBlog)
    <div class="row my-3">
        <div class="custom-padding col-lg-6 ps-4 py-3 d-flex align-items-center">
            <div>
                <h2 class="fw-bold card-title custom_cardtxt blog-link-title"><a href="{{ route('frontend.view.blog',[encrypt($firstBlog->id)]) }}" class="text-decoration-none">{{ $firstBlog->title }}</a></h2>
                <p>{!! Str::limit($firstBlog->description, 250) !!}</p>
            </div>
        </div>
        <div class="col-lg-6 p-4">
            <div class="blog-dog-wrapper overflow-hidden">
                <a href="{{ route('frontend.view.blog',[encrypt($firstBlog->id)]) }}" class="text-decoration-none"><img class="blog-dog-img pointer" src="{{ asset($firstBlog->featured_image) }}" width="100%" alt=""></a>
            </div>
        </div>
    </div>
    @endforeach-->

    <!--section>
        <div class="container">
            <div class="row" id="blog-container">
                @php 
                    $first = true; 
                    $count = 0;
                @endphp
                @foreach($blogs as $blog)
                    @if ($count < 3)
                    <div class="col-sm-12 col-md-6 col-lg-4 mb-4 p-3 blog_view">
                        <div class="card custom_card">
                            <a href="{{ route('frontend.view.blog',[encrypt($blog->id)]) }}" class="text-decoration-none"><img class="card-img-top custom_cardimg" src="{{ asset($blog->featured_image) }}" alt="img"></a>
                            <div class="card-body">
                                <h4 class="card-title fw-bold custom_cardtxt blog-link-title"><a href="{{ route('frontend.view.blog',[encrypt($blog->id)]) }}">{{ $blog->title }}</a></h4>
                                <p class="card-text custom_cardtxt">{!! Str::limit($blog->description, 150) !!}</p>
                            </div>
                        </div>
                    </div>
                    @endif
                @php $count++; @endphp
                @endforeach
            </div>
        </div>
    </section-->

  
</div>
<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
    const loadMoreBtn = document.getElementById('load-more-btn');
    const blogContainer = document.getElementById('blog-container');
    let startIndex = 6; // Starting index for loading more blogs

    loadMoreBtn.addEventListener('click', function() {
        // Fetch the next 3 blogs
        @foreach($blogs->slice(6) as $blog)
            if (startIndex < {{ count($blogs) }}) {
                const blogDiv = document.createElement('div');
                blogDiv.classList.add('col-sm-12', 'col-md-6', 'col-lg-4', 'mb-4', 'p-3', 'blog_view');
                blogDiv.innerHTML = `
                    <div class="card custom_card">
                        <a href="{{ route('frontend.view.blog',[encrypt($blog->id)]) }}" class="text-decoration-none"><img class="card-img-top custom_cardimg" src="{{ asset($blog->featured_image) }}" alt="img"></a>
                        <div class="card-body">
                            <h4 class="card-title fw-bold custom_cardtxt blog-link-title"><a href="{{ route('frontend.view.blog',[encrypt($blog->id)]) }}">{{ $blog->title }}</a></h4>
                            <p class="card-text custom_cardtxt">{!! Str::limit($blog->description, 150) !!}</p>
                        </div>
                    </div>
                `;
                blogContainer.appendChild(blogDiv);
                startIndex++;
            }
        @endforeach

        // Hide the Load More button if all blogs are loaded
        if (startIndex >= {{ count($blogs) }}) {
            loadMoreBtn.style.display = 'none';
        }
    });
});
</script>
@endsection
