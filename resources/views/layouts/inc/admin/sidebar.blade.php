<?php

$user = Auth::user();
$role = $user->role_as;

?>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">

        <li class="nav-item {{ ($layout == 'dashboard') ? 'active' : '' }}">
            <a class="nav-link" href="{{ url('admin/dashboard') }}">
                <i class="mdi mdi-home menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>

        <li class="nav-item {{ ($layout == 'order') ? 'active' : '' }}">
            <a class="nav-link" href="{{ url('admin/orders') }}">
                <i class="mdi mdi-sale menu-icon"></i>                
                <span class="menu-title">Orders</span>
            </a>
        </li>

        @if ($role != 3)
        <li class="nav-item {{ ($layout == 'category') ? 'active' : '' }}">
            <a class="nav-link" data-bs-toggle="collapse" href="#category"
                aria-expanded="{{ Request::is('admin/category') ? 'true' : 'false' }}">
                <i class="mdi mdi-view-list menu-icon"></i>
                <span class="menu-title">Category</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse {{ ($layout == 'category') ? 'show' : 'hide' }}" id="category">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/category/create*') ? 'active' : '' }}"
                            href="{{ url('admin/category/create') }}">
                            Add Category
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/category') || Request::is('admin/category/*/edit') ? 'active' : '' }}"
                            href="{{ url('admin/category') }}">
                            View Category
                        </a>
                    </li>
                </ul>
            </div>
        </li>

        <li class="nav-item {{ ($layout == 'review') ? 'active' : '' }}">
            <a class="nav-link" data-bs-toggle="collapse" href="#review"
                aria-expanded="{{ Request::is('admin/review') ? 'true' : 'false' }}">
                <i class="mdi mdi-view-list menu-icon"></i>
                <span class="menu-title">Review</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse {{ ($layout == 'review') ? 'show' : 'hide' }}" id="review">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/review/create*') ? 'active' : '' }}"
                            href="{{ url('admin/review/create') }}">
                            Add review
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/review') || Request::is('admin/review/*/edit') ? 'active' : '' }}"
                            href="{{ url('admin/review') }}">
                            View review
                        </a>
                    </li>
                </ul>
            </div>
        </li>

        <li class="nav-item {{ ($layout == 'product') ? 'active' : '' }}">
            <a class="nav-link" data-bs-toggle="collapse" href="#product"
                aria-expanded="{{ ($layout == 'product') ? 'true' : 'false' }}">
                <i class="mdi mdi-plus-circle menu-icon"></i>
                <span class="menu-title">Products</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse {{ ($layout == 'product') ? 'show' : 'hide' }}" id="product">
                <ul class="nav flex-column sub-menu">
                
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/product/create*') ? 'active' : '' }}"
                            href="{{ url('admin/product/create') }}">
                            Add Products
                        </a>
                    </li>
                  
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/product')  ? 'active' : '' }}"
                            href="{{ url('admin/product') }}">
                            View Products
                        </a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/specialoffers') || Request::is('admin/specialoffers/*/edit') ? 'active' : '' }}"
                            href="{{ url('admin/specialoffers') }}">
                            Special offers
                        </a>
                    </li>
                </ul>
            </div>
        </li>

        <li class="nav-item {{ Request::is('admin/brands') ? 'active' : '' }}">
            <a class="nav-link" href="{{ url('admin/brands') }}">
                <i class="mdi mdi-view-headline menu-icon"></i>
                <span class="menu-title">Brands</span>
            </a>
        </li>

        @if ($role != 2)
        <li class="nav-item {{ Request::is('admin/users*') ? 'active' : '' }}">
            <a class="nav-link" data-bs-toggle="collapse" href="#auth"
                aria-expanded="{{ Request::is('admin/users') ? 'true' : 'false' }}">
                <i class="mdi mdi-account-multiple-plus menu-icon"></i>
                <span class="menu-title">Users</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse {{ Request::is('admin/users*') ? 'show' : '' }}" id="auth">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/users/create*') ? 'active' : '' }}"
                            href="{{ url('admin/users/create') }}">
                            Add User
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('admin/users') || Request::is('admin/product/*/edit') ? 'active' : '' }}"
                            href="{{ url('admin/users') }}">
                            View Users
                        </a>
                    </li>
                </ul>
            </div>
        </li>
        @endif

        <li class="nav-item {{ Request::is('admin/slider') ? 'active' : '' }}">
            <a class="nav-link" href="{{ url('admin/slider') }}">
                <i class="mdi mdi-view-carousel menu-icon"></i>
                <span class="menu-title">Home Slider</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#pages"
                aria-expanded="true">
                <i class="mdi mdi-plus-circle menu-icon"></i>
                <span class="menu-title">Pages</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="pages">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item {{ ($layout =='home') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.home') }}">
                            <i class="mdi mdi-content-paste menu-icon"></i>
                            <span class="menu-title">Home</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='aboutus') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ url('/admin/about/edit/1') }}">
                            <i class="mdi mdi-information-outline menu-icon"></i>
                            <span class="menu-title">About</span>
                        </a>
                    </li> 
                    <li class="nav-item {{ ($layout =='pet_flight') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.flight.edit',[1]) }}">
                            <i class="mdi mdi-airplane menu-icon"></i>
                            <span class="menu-title">Pet Flight</span>
                        </a>
                    </li>                   
                    <li class="nav-item {{ Request::is('admin/faq') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ url('admin/faq') }}">
                            <i class="mdi mdi-frequently-asked-questions menu-icon"></i>
                            <span class="menu-title">FAQ</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='contact') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.contactpage') }}">
                            <i class="mdi mdi-note-text menu-icon"></i>
                            <span class="menu-title">Contact Us</span>
                        </a>
                    </li>
                    <li class="nav-item {{ Request::is('admin/directories') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ url('admin/directories') }}">
                            <i class="mdi mdi-folder menu-icon"></i>
                            <span class="menu-title">Directory</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='blog') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.blogs') }}">
                            <i class="mdi mdi-note-text menu-icon"></i>
                            <span class="menu-title">Blogs</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='donate1') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.donatepage') }}">
                            <i class="mdi mdi-content-paste menu-icon"></i>
                            <span class="menu-title">Donate</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='banner') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.banners') }}">
                            <i class="mdi mdi-note-text menu-icon"></i>
                            <span class="menu-title">Banners</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='content_management') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.content.list') }}">
                            <i class="mdi mdi-content-paste menu-icon"></i>
                            <span class="menu-title">Content Management</span>
                        </a>
                    </li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#forms"
                aria-expanded="true">
                <i class="mdi mdi-plus-circle menu-icon"></i>
                <span class="menu-title">Form Management</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="forms">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item {{ ($layout =='subscribeform') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('subscribe.form.list') }}">
                            <i class="mdi mdi-email-outline menu-icon"></i>
                            <span class="menu-title">Subscribe Forms</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='pet_flight_form') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('petflight.form.list') }}">
                            <i class="mdi mdi-airplane menu-icon"></i>
                            <span class="menu-title">Pet Flight Forms</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='donate') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('donate.form.list') }}">
                            <i class="mdi mdi-cash menu-icon"></i>
                            <span class="menu-title">Donate Forms</span>
                        </a>
                    </li>
                    <li class="nav-item {{ ($layout =='contact_us_forms') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('contact-us.form.list') }}">
                            <i class="mdi mdi-message-outline menu-icon"></i>
                            <span class="menu-title">Contact Us Forms</span>
                        </a>
                    </li>
                </ul>

            </div>
        </li>
        
        @if ($role != 2)
        <li class="nav-item {{ Request::is('admin/payment-methods') ? 'active' : '' }}">
            <a class="nav-link" href="{{ url('admin/payment-methods') }}">
                <i class="mdi mdi-credit-card menu-icon"></i>
                <span class="menu-title">Payment Methods</span>
            </a>
        </li> 
        @endif
        
        @if ($role != 2)
        <li class="nav-item {{ Request::is('admin/settings') ? 'active' : '' }}">
            <a class="nav-link" href="{{ url('admin/settings') }}">
                <i class="mdi mdi-settings menu-icon"></i>
                <span class="menu-title">Site Setting</span>
            </a>
        </li>
        @endif

        @endif

    </ul>
</nav>