<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex" />
    <link rel="icon" href="{{ asset('assets/images/cropped-Favicon-1-192x192.png') }}" sizes="192x192" />
    <link rel="apple-touch-icon" href="{{ asset('assets/images/cropped-Favicon-1-180x180.png') }}" />
    <!-- CSRF Token -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title> @yield('title') </title>
        @include('layouts.inc.frontend.header_script')    
    @livewireStyles
</head>
<body>

    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5DPD2SQ" height="0" width="0" style="display:none;visibility:hidden"></iframe>
    </noscript>
    <div id="app">
        @include('layouts.inc.frontend.navbar')        
        @yield('content')    
        @include('layouts.inc.frontend.footer')
    </div>
    @include('layouts.inc.frontend.footer_script')
    <script>
//shop sub buttons toggle 
function toggleDiv1(divToShow) {
  var showDiv = document.getElementById("catSection").style.display='none';
  var showDiv = document.getElementById("dogSection").style.display='block';
   var button1 = document.getElementById("dogsBtn").classList.add("active");
   var button1 = document.getElementById("catsBtn").classList.remove("active");

}
function toggleDiv2(divToHide) {
  var showDiv = document.getElementById("catSection").style.display='block';
  var showDiv = document.getElementById("dogSection").style.display='none';
  var button2 = document.getElementById("catsBtn").classList.add("active");
  var button2 = document.getElementById("dogsBtn").classList.remove("active");
}








    </script>
@yield('script')
    @livewireScripts    
@stack('scripts')
</body>
</html>
