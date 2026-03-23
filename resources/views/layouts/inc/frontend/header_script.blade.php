<!-- header script -->

    <meta name="description" content="@yield('meta_description')">
    <meta name="keywords" content="@yield('meta_keyword')">
    <meta name="author" content="Supty">
    <meta name="google-site-verification" content="-8PT2-Ib8UBX_gGGQyHCmiGrIyGtTLW_A-l8HlYJv6A" />
    
    <link href="{{ asset('assets/css/bootstrap@5.0.2.min.css') }}" rel="stylesheet" />

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@633&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fredoka&display=swap" rel="stylesheet">
    
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    
    <link href="{{ asset('assets/css/custom.css') }}" rel="stylesheet">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    @php
        $layout = $layout ?? 'default';
    @endphp

    @if($layout !== 'home')
         <link href="{{ asset('assets/css/owl.carousel.min.css') }}" rel="stylesheet">
         <link href="{{ asset('assets/css/owl.theme.default.min.css') }}" rel="stylesheet">

         <!-- Exzoom Product Image  -->
        <link href="{{ asset('assets/exzoom/jquery.exzoom.css') }}" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick-theme.css" />
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/jquery-toast-plugin@1.3.2/dist/jquery.toast.min.css" rel="stylesheet">
    @endif

    @if($layout == 'pet_relocate')
        <!-- FancyBox CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css" />
    @endif

    <script async src="https://www.googletagmanager.com/gtag/js?id=G-GTJX3RQ5LZ"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-GTJX3RQ5LZ');
    </script>
   

    
    
