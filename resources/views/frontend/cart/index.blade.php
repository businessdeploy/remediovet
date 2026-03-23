@extends('layouts.app',['layout'=>'cart'])

@section('title', 'Cart')

@section('content')

    <div>
       <livewire:frontend.cart.cart-show />
    </div>

@endsection
