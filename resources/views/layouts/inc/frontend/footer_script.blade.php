<!-- Scripts -->
<script src="{{ asset('assets\js\bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('assets\js\jquery-3.6.0.min.js') }}"></script>

<!-- JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- slick css -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>

<!-- slick js -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script src="https://static.elfsight.com/platform/platform.js" data-use-service-core defer></script>
    @php
        $layout = $layout ?? 'default';
    @endphp

    @if($layout !== 'home')
        <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-toast-plugin@1.3.2/dist/jquery.toast.min.js"></script>
        
        <script>
            window.addEventListener('message', event => {
                alertify.set('notifier', 'position', 'top-right');
                if (event.detail && event.detail.text && event.detail.type) {
                    alertify.notify(event.detail.text, event.detail.type);
                }
            });
        </script>
      
    @endif
    @switch($layout)
        @case('home')            
            <script src="{{ asset('assets/js/frontend/home.js') }}" async=""></script>
        @break
        @case('donate') 
            <script src="{{ asset('assets/js/frontend/donate.js') }}"></script>           
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" crossorigin="anonymous"></script>
        @break
        @case('products')
        <script src='https://code.jquery.com/ui/1.11.3/jquery-ui.js'></script>
            <script src="{{ asset('assets/js/frontend/shop.js') }}" async defer></script>
            <script src="{{ asset('assets/js/frontend/product.js') }}" async defer></script>
        @break 
        @case('shop')
            <script src="https://cdn.jsdelivr.net/gh/maxshuty/accessible-web-components@latest/dist/simpleRange.min.js" async=""></script>
            <script src="{{ asset('assets/js/frontend/shop.js') }}" async defer></script>
        @break      
        @case('contactus')            
           <script src="{{ asset('assets/js/frontend/contactus.js') }}" async defer></script>
        @break
        @case('account')            
           <script src="{{ asset('assets/js/frontend/account.js') }}" async defer></script>
        @break
        @case('blog')            
           <script src="{{ asset('assets/js/frontend/blog.js') }}" async defer></script>
        @break
        @case('login')            
           <script src="{{ asset('assets/js/frontend/login.js') }}" async defer></script>
        @break
        @case('faq')            
           <script src="{{ asset('assets/js/frontend/faq.js') }}" async defer></script>
        @break
        @case('pet_relocate')     
        <script src="https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick.min.js"></script>
        <script src="{{ asset('assets/js/frontend/pet_relocate.js') }}" async defer></script>

         <!-- FancyBox JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>
        @break
        @case('cart') 
        <script src='https://code.jquery.com/ui/1.11.3/jquery-ui.js'></script>
            <script src="{{ asset('assets/js/frontend/cart.js') }}" async defer></script>
            <script src="{{ asset('assets/js/frontend/shop.js') }}" async defer></script>
            <script src="{{ asset('assets/js/frontend/product.js') }}" async defer></script>
        @break 
        default:        
            break;
    @endswitch
        <script src="{{ asset('assets/js/owl.carousel.min.js') }}"  defer></script>
        <script src="{{ asset('assets/exzoom/jquery.exzoom.js') }}"  defer></script>
        <script src="https://cdn.jsdelivr.net/gh/maxshuty/accessible-web-components@latest/dist/simpleRange.min.js" async defer></script>
    
   <script>
        // let chevrons = document.querySelectorAll('.chevron');
        // chevrons.forEach((chevronElement) => {
        //     chevronElement.addEventListener('click', (element) => {
        //         let open = chevronElement.querySelector('.menu-open');
        //         let close = chevronElement.querySelector('.menu-close');
        //         open.classList.toggle('d-none');
        //         close.classList.toggle('d-none');
        //     })
        // })

        // side bar show hide Pet
        // document.getElementById("petTypeButton").addEventListener("click", function (event) {
        //     event.preventDefault();
        //     var catList = document.querySelector("#subCategoriesPet");
        //     catList.classList.toggle('hide')
            
        // });
        // Dog inner sub categories
        // document.getElementById("dogTypeButton").addEventListener("click", function (event) {
        //     event.preventDefault();
        //     var catList = document.querySelector("#foodTypeButton");
        //     catList.classList.toggle('hide')
            
        // });
        
        // side bar show hide about
        // document.getElementById("aboutTypeButton").addEventListener("click", function (event) {
        //     event.preventDefault();
        //     var catList = document.querySelector("#subCategoriesAbout");
        //     catList.classList.toggle('hide')
            
        // });
        

        // side bar show hide directory
        // document.getElementById("dirTypeButton").addEventListener("click", function (event) {
        //     event.preventDefault();
        //     var catList = document.querySelector("#subCategoriesDir");
        //     catList.classList.toggle('hide')
            
        // });

        // toggle menu
        // const menuBar = document.querySelector('.menu-bar');
        // const mobileMenu = document.querySelector('.mobile-menu');

        // menuBar.addEventListener('click', () => {
        //   mobileMenu.classList.toggle('scale-up');
        // })

        // let menuItems = document.querySelectorAll('.if-click');
        // menuItems.forEach((e)=>{
        //   e.addEventListener('click', () => {
        //     menuItems.forEach((e)=>{
        //       e.classList.remove('bg-orange');
        //     })
        //     e.classList.add('bg-orange')
        //   })
        // })

        //new
        let chevrons = document.querySelectorAll('.chevron');

  chevrons.forEach((chevronElement) => {
      chevronElement.addEventListener('click', (element) => {
          let open = chevronElement.querySelector('.menu-open');
          let close = chevronElement.querySelector('.menu-close');
          open.classList.toggle('d-none');
          close.classList.toggle('d-none');
      })
  })

  // script for show hide dropdownbar 
  function toggleDiv1(divToShow) {
      var showDiv = document.getElementById("catSection").style.display = 'none';
      var showDiv = document.getElementById("dogSection").style.display = 'block';
      var button = document.getElementsByClassName("custom_dropdown_btndog");
  }
  function toggleDiv2(divToHide) {
      var showDiv = document.getElementById("catSection").style.display = 'block';
      var showDiv = document.getElementById("dogSection").style.display = 'none';
  }

  // Categories list items show hide 
  document.getElementById("foodTypeButton").addEventListener("click", function (event) {
      event.preventDefault();
      var foodList = document.getElementById("foodList");
      if (foodList.style.display === "none" || foodList.style.display === "") {
          foodList.style.display = "block";
      } else {
          foodList.style.display = "none";
      }
  });
  document.getElementById("foodTypeButtonsecond").addEventListener("click", function (event) {
      event.preventDefault();
      var foodList = document.getElementById("foodListsecond");
      if (foodListsecond.style.display === "none" || foodListsecond.style.display === "") {
          foodListsecond.style.display = "block";
      } else {
          foodListsecond.style.display = "none";
      }
  });
  document.getElementById("foodTypeButtonthird").addEventListener("click", function (event) {
      event.preventDefault();
      var foodList = document.getElementById("foodListthird");
      if (foodListthird.style.display === "none" || foodListthird.style.display === "") {
          foodListthird.style.display = "block";
      } else {
          foodListthird.style.display = "none";
      }
  });
  document.getElementById("foodTypeButtonfourth").addEventListener("click", function (event) {
      event.preventDefault();
      var foodList = document.getElementById("foodListfourth");
      if (foodListfourth.style.display === "none" || foodListfourth.style.display === "") {
          foodListfourth.style.display = "block";
      } else {
          foodListfourth.style.display = "none";
      }
  });
  document.getElementById("foodTypeButtonfifth").addEventListener("click", function (event) {
      event.preventDefault();
      var foodList = document.getElementById("foodListfifth");
      if (foodListfifth.style.display === "none" || foodListfifth.style.display === "") {
          foodListfifth.style.display = "block";
      } else {
          foodListfifth.style.display = "none";
      }
  });
  document.getElementById("foodTypeButtonsixth").addEventListener("click", function (event) {
      event.preventDefault();
      var foodList = document.getElementById("foodListsixth");
      if (foodListsixth.style.display === "none" || foodListsixth.style.display === "") {
          foodListsixth.style.display = "block";
      } else {
          foodListsixth.style.display = "none";
      }
  });
  
  // side bar show hide dog
  document.getElementById("dogTypeButton").addEventListener("click", function (event) {
      event.preventDefault();
      var dogList = document.querySelector("#subCategoriesDog");
      dogList.classList.toggle('hide')
  });
  // side bar show hide cat
  document.getElementById("catTypeButton").addEventListener("click", function (event) {
      event.preventDefault();
      var catList = document.querySelector("#subCategoriesCat");
      catList.classList.toggle('hide')
      
  });
  // side bar show hide Pet
  document.getElementById("petTypeButton").addEventListener("click", function (event) {
      event.preventDefault();
      var catList = document.querySelector("#subCategoriesPet");
      catList.classList.toggle('hide')
      
  });

  // side bar show hide about
  document.getElementById("aboutTypeButton").addEventListener("click", function (event) {
      event.preventDefault();
      var catList = document.querySelector("#subCategoriesAbout");
      catList.classList.toggle('hide')
      
  });

  // side bar show hide directory
  document.getElementById("dirTypeButton").addEventListener("click", function (event) {
      event.preventDefault();
      var catList = document.querySelector("#subCategoriesDir");
      catList.classList.toggle('hide')
      
  });

  // toggle menu
  const menuBar = document.querySelector('.menu-bar');
  const mobileMenu = document.querySelector('.mobile-menu');

  menuBar.addEventListener('click', () => {
    mobileMenu.classList.toggle('scale-up');
  })

//   let menuItems = document.querySelectorAll('.if-click');
//   menuItems.forEach((e)=>{
//     e.addEventListener('click', () => {
//       menuItems.forEach((e)=>{
//         e.classList.remove('bg-orange');
//       })
//       e.classList.add('bg-orange')
//     })
//   })
        


$(document).ready(function() {


    $('.search_content').keyup(function() {
        var query = $(this).val();
        if (query !== '') {
            $.ajax({
                url: "{{ route('frontend.search.bar.products') }}",
                method: 'GET',
                data: { query: query },
                success: function(response) {
                    var dropdown = $('.search_dropdown');
                    dropdown.empty();
                    if (response.length > 0) {
                        $.each(response, function(index, product) {
                            dropdown.append('<li><a href="'+product.product_link+'">'+product.name+'</a></li><hr>');
                        });
                    } else {
                        dropdown.append('<li>No products found.</li>');
                    }
                    dropdown.removeClass('d-none');
                }
            });
        } else {
            $('.search_dropdown').addClass('d-none'); 
        }
    })
});



//onscroll navbar poistion fixed
window.addEventListener('scroll', function() {
    var navBarScroll = document.getElementById('navBarScroll');
    if (window.pageYOffset > 70) {
        navBarScroll.classList.add('fixed-nav');
    } else {
        navBarScroll.classList.remove('fixed-nav');
    }
});

var btn = $('#button');

$(window).scroll(function() {
  if ($(window).scrollTop() > 300) {
    btn.addClass('show');
  } else {
    btn.removeClass('show');
  }
});


btn.on('click', function(e) {
  e.preventDefault();
  $('html, body').animate({scrollTop:0}, '300');
});


// $(document).ready(function(){       
//    $('#myModal').modal('show');
//     }); 
   </script>
   
   