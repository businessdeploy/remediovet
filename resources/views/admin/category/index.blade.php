@extends('layouts.admin',['layout'=>'category'])

@section('title', 'Categories')

@section('content')

<div>
    <livewire:admin.category.index />
</div>

@endsection
