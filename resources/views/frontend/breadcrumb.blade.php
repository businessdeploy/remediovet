<!-- Breadcrumb  -->
@php
    $segment_1 = Request::segment(1);
    $segment_2 = Request::segment(2);
    $segment_3 = Request::segment(3);
    $segment_4 = Request::segment(4);
@endphp

<nav aria-label="breadcrumb">
    <ol class="breadcrumb custom_breadcrumb_position my-3">
        <li class="breadcrumb-item"><a class="text-white text-decoration-none" href="{{ route('front.home') }}">Home</a></li>
        @if($segment_1)
            <li class="breadcrumb-item"><a class="text-white text-decoration-none" href="{{ route('frontend.shop') }}">{{ ucwords($segment_1)}}</a></li>
        @endif
        @if($segment_2)
            <li class="breadcrumb-item active text-white" aria-current="page"><a class="text-white text-decoration-none" href="{{ route('frontend.shop') }}/{{ $segment_2 }}">{{ ucwords($segment_2) }}</a></li>
        @endif
        @if($segment_3)
            <li class="breadcrumb-item active text-white" aria-current="page"><a class="text-white text-decoration-none" href="{{ route('frontend.shop') }}/{{ $segment_2 }}/{{ $segment_3 }}">{{ ucwords($segment_3) }}</a></li>
        @endif
        @if($segment_4)
            <li class="breadcrumb-item active text-white" aria-current="page"><a class="text-white text-decoration-none" href="{{ route('frontend.shop') }}/{{ $segment_2 }}/{{ $segment_3 }}/{{ ucwords($segment_4) }}">{{ ucwords($segment_4) }}</a></li>
        @endif

    </ol>
</nav>