@extends('layouts.app',['layout'=>'blog'])

@section('title', $blog->meta_title ?? 'Blog')

@section('meta_keyword', $blog->meta_keyword)

@section('meta_description', $blog->meta_description)

@section('content')
<section>
  <div class="blog-effect container py-5">
    <p><strong>{{ $blog->created_at->format('F d, Y') }}</strong></p>
    <h1 class="my-4 fw-bold">{{ $blog->title }}</h1>
    
    <div class="blog-image-wrapper text-center">
      <img src="{{ asset($blog->featured_image) }}" width="100%" alt="dog">
    </div> 
    <div>
      <p class="text-start">{!! $blog->description !!}</p>
    </div>       
    <div class="text-center">
      <p class="mt-5 mb-5"><strong>Tags</strong>  {{ $blog->tags }}</p>
    </div>
  </div>
</section>
    <section>
      <div class="container">
        <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12 mt-4">
          <h5 class="fw-bold">Related Article</h5>
        </div>
        @if($related_articles)
          @foreach($related_articles as $article)
            <div class="col-sm-12 col-md-6 col-lg-4 mb-4 p-3 blog_view">
              <div class="card custom_card">
                <a href="{{ route('frontend.view.blog',[encrypt($article->id)]) }}" class="text-decoration-none"><img class="card-img-top custom_cardimg" src="{{ asset($article->featured_image) }}" alt="img"></a>
                <div class="card-body">
                  <h4 class="card-title fw-bold custom_cardtxt blog-link-title"><a href="{{ route('frontend.view.blog',[encrypt($article->id)]) }}">{{ $article->title }}</a></h4>
                  <p class="card-textcustom_cardtxt">{!! Str::limit($article->description, 50) !!}</p>

                </div>
              </div>
            </div>
          @endforeach
        @endif  
        </div>
      </div>
    </section>
    

@endsection