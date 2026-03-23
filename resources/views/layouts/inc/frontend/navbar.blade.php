      <nav class="upper_header">
          <div class="container">
              <!-- upper header -->
              <div class="row py-1">
                  <!-- <div class="col-md-2 col-lg-2"></div> -->
                  <div class="col-sm-6 col-md-6 col-lg-6">
                      <a href="{{ route('frontend.return.policy') }}" type="button" class="btn_shipping border-0 text-decoration-none text-white">
                          Free Shipping and Returns!
                      </a>
                      <a href="{{ route('about-us') }}" class="upper_menu_items text-dark text-decoration-none">About
                          us</a>
                      <a href="{{ route('contact-us') }}" class="upper_menu_items text-dark text-decoration-none">Contact
                          us</a>
                      <a href="{{ route('faqs') }}" class="upper_menu_items text-dark text-decoration-none">FAQ</a>
                  </div>
                  <div class="col-sm-6 col-md-6 col-lg-6">
                      <div class="row">
                          <div class="col-md-12 col-lg-12 d-flex justify-content-end">
                              <h6 class="rating_txt py-2">5 Stars Reviews</h6>
                              <span class="px-2">
                                <i class="fa-solid fa-star" style="color: #FF852F;"></i>
                                <i class="fa-solid fa-star" style="color: #FF852F;"></i>
                                <i class="fa-solid fa-star" style="color: #FF852F;"></i>
                                <i class="fa-solid fa-star" style="color: #FF852F;"></i>
                                <i class="fa-solid fa-star" style="color: #FF852F;"></i>
                              </span>

                              <span class="head_social_icon">
                                  <a href="{{ getSettingsData()->instagram }}" target="_blank"><i
                                          class="social_icon fab fa-instagram px-1" aria-hidden="true"></i></a>
                                  <a href="{{ getSettingsData()->facebook }}" target="_blank"><i
                                          class="social_icon fab fa-facebook-square px-1" aria-hidden="true"></i></a>
                                  <a href="{{ getSettingsData()->twitter }}" target="_blank"><i
                                          class="social_icon fab fa-twitter px-1" aria-hidden="true"></i></a>
                                  <a href="{{ getSettingsData()->linkedin }}" target="_blank"><i
                                          class="social_icon fa-brands fa-linkedin px-1"></i></a>
                                  <a href="{{ getSettingsData()->youtube }}" target="_blank"><i
                                          class="social_icon fab fa-youtube px-1" aria-hidden="true"></i></a>
                              </span>
                          </div>
                      </div>
                  </div>
                  <!-- <div class="col-md-2 col-lg-2"></div> -->
              </div>
      </nav>
      <!-- lower header -->
      <header>
          <div class="container">
              <div class="row py-2 ">
                  <!-- <div class="col-md-2 col-lg-2"></div> -->
                  <div class="col-sm-12 col-md-12 col-lg-8 bottomnav d-flex" id="navBarScroll">
                      <a href="/"><img class="logo_img" src="{{ asset('assets\images\logo.png') }}"
                              alt="logo" /></a>
                      <div class="bottom_nav_section">
                          <a href="/"
                              class="menu_items text-decoration-none mx-2 {{ $layout == 'home' ? 'active' : '' }}">Home</a>

                          <span class="dropdown custom-hover-dropdown">
                              <a href="javascript:void(0)" class="menu_items text-decoration-none mx-2 dropbtn"
                                  role="button" id="dropdownMenuLink" aria-expanded="false">
                                  Shop
                                  <i class="fa fa-caret-down"></i>
                              </a>
                              <div class="dropdown-content p-4">
                                  <section>
                                      <div class="container">
                                          <div class="row">
                                              <div class="col-md-2 col-lg-2">
                                                  <button type="button"
                                                      class="custom_dropdown_btndog border-0 fw-bold active"
                                                      id="dogsBtn" onclick="toggleDiv1('dogSection', 'catSection')">
                                                      Dog
                                                  </button>
                                                  <button type="button" class="custom_dropdown_btncat fw-bold border-0"
                                                      id="catsBtn" onclick="toggleDiv2('dogSection', 'catSection')">
                                                      Cat
                                                  </button>
                                              </div>

                                              <div class="col-md-10 col-md-10 col-lg-10" id="dogSection">
                                                  <div class="row">
                                                      <div class="col-sm-3 col-md-3 col-lg-3">
                                                          <h6 class="fw-bold">Food</h6>
                                                          <ul class="food_list p-0">
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/dog-dry-food') }}">Dry
                                                                      Food</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/dog-wet-food') }}">Wet
                                                                      Food</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/dog-treats') }}">Treats</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/dog-supplements') }}">Supplements</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/dog-food') }}">Puppy
                                                                      Food</a></li>
                                                          </ul>
                                                      </div>
                                                      <div class="col-sm-3 col-md-3 col-lg-3">
                                                          <h6 class="fw-bold">Health</h6>
                                                          <ul class="food_list p-0">
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-dewormer') }}">Dewormer</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-tick-flea') }}">Tick
                                                                      & Flea</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-stress-anxiety') }}">Stress
                                                                      & Anxiety</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-herbal-shampoo') }}">Herbal
                                                                      Shampoo</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-antifungal') }} ">Anti-fungal</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-antibiotic') }}">Antibiotic</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-skin-coat-supplement') }}">Skin
                                                                      & Coat Supplement</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-liver-supplement') }}">Liver
                                                                      Supplement</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-calcium-supplement') }}">Calcium
                                                                      Supplement</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-health/dog-kidney-uti-supplement') }}">Kidney
                                                                      & UTI Supplement</a></li>
                                                          </ul>
                                                      </div>
                                                      <div class="col-sm-3 col-md-3 col-lg-3">
                                                          <h6 class="fw-bold">Accessories</h6>
                                                          <ul class="food_list p-0">
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-accessories/dog-collars-leashes') }}">Collars
                                                                      & Leashes</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-accessories/dog-harnesses') }}">Harnesses</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-accessories/dog-bowtie-bandanas') }}">Bowtie
                                                                      & Bandanas</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-accessories/dog-clothes') }}">Clothes</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-accessories/dog-grooming') }}">Grooming</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-accessories/dog-bags') }}">Bags</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-accessories/dog-travel-essentials') }}">Travel
                                                                      Essentials</a></li>
                                                          </ul>
                                                      </div>
                                                      <div class="col-sm-3 col-md-3 col-lg-3">
                                                          <img class="w-100"
                                                              src="{{ asset('assets/images/dog-dropdown.webp') }}"
                                                              alt="img">
                                                          <a class="text-decoration-none mt-2 fs-5 custom_view_txt d-flex justify-content-center fw-bold"
                                                              href="{{ url('product-category/dog') }}">Shop All ></a>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-sm-10 col-md-10 col-lg-10 hidden" id="catSection">
                                                  <div class="row">
                                                      <div class="col-sm-3 col-md-3 col-lg-3">
                                                          <h6 class="fw-bold">Food</h6>
                                                          <ul class="food_list p-0">
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-food/cat-dry-food') }}">Dry
                                                                      Food</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-food/cat-wet-food') }}">Wet
                                                                      Food</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-food/cat-treats') }}">Treats</a>
                                                              </li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-food/cat-kitten-food') }}">Kitten
                                                                      Food</a></li>
                                                          </ul>
                                                      </div>
                                                      <div class="col-sm-3 col-md-3 col-lg-3">
                                                          <h6 class="fw-bold">Health</h6>
                                                          <ul class="food_list p-0">
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-health/cat-dewormer') }}">Cat
                                                                      Dewormer</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-health/cat-tick-flea') }}">Tick
                                                                      & Flea</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-health/cat-stress-anxiety') }}">Stress
                                                                      & Anxiety</a></li>
                                                          </ul>
                                                      </div>
                                                      <div class="col-sm-3 col-md-3 col-lg-3">
                                                          <h6 class="fw-bold">Accessories</h6>
                                                          <ul class="food_list p-0">
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-accessories/cat-house') }}">Cat
                                                                      House</a></li>
                                                          </ul>
                                                      </div>
                                                      <div class="col-sm-3 col-md-3 col-lg-3">
                                                          <img class="w-100"
                                                              src="{{ asset('assets/images/my-cat.webp') }}"
                                                              alt="img">
                                                          <a class="text-decoration-none mt-2 fs-5 custom_view_txt d-flex justify-content-center fw-bold"
                                                              href="{{ url('product-category/cat') }}">Shop All ></a>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </section>
                              </div>
                          </span>
						  <span>
							<a href="{{ route('frontend.pet.relocation') }}"
                              class="menu_items text-decoration-none mx-2 {{ $layout == 'pet_relocate' ? 'active' : '' }}">Pet
                              Relocation</a>
							</span>
							<span class="navigation-open">
                          <a href="#"
                              class="menu_items text-decoration-none mx-2 dropdown-toggle {{ $layout == 'about' ? 'active' : '' }}"
                              role="button" id="dropdownMenuLink"  aria-haspopup="true"
                              aria-expanded="false">About</a>
                          <ul class=" menu_dropdown dropdown-menu dropdown-menu-light"
                              aria-labelledby="navbarLightDropdownMenuLink">
                              <ul class="custom_dropdown list-unstyled">
                                  <li><a class="dropdown-item  heading_category" href="{{ route('about-us') }}">Our
                                          Story</a></li>
                              </ul>
                              <ul class="last_dropdown list-unstyled">
                                  <li><a class="dropdown-item heading_category"
                                          href="{{ route('frontend.blogs') }}">Blog</a></li>
                              </ul>
                          </ul>
						  </span>



<span class="navigation-open">
							<a href="#"
                              class="items_menu text-decoration-none mx-2 dropdown-toggle custom_directory"
                              role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                              Directory
							</a>
							<ul class=" menu_dropdown dropdown-menu dropdown-menu-light"
								  aria-labelledby="navbarLightDropdownMenuLink">
								  <ul class="custom_dropdown list-unstyled">
									  <li><a class="dropdown-item  heading_category"
											  href="{{ route('frontend.directory', ['type' => 'vets']) }}">Vets</a></li>
								  </ul>
								  <ul class="dropdown_custom list-unstyled">
									  <li><a class="dropdown-item heading_category"
											  href="{{ route('frontend.directory', ['type' => 'training']) }}">
											  Training</a></li>
									  <li><a class="dropdown-item heading_category"
											  href="{{ route('frontend.directory', ['type' => 'grooming']) }}">Grooming</a>
									  </li>
								  </ul>
								  <ul class="last_dropdown list-unstyled">
									  <li><a class="dropdown-item heading_category"
											  href="{{ route('frontend.directory', ['type' => 'adopt']) }}">Buy/Adopt</a>
									  </li>
								  </ul>
							</ul>
							</span>
                          <a href="{{ route('donate') }}"
                              class="menu_items text-decoration-none mx-2 {{ $layout == 'donate' ? 'active' : '' }}">Donate</a>
                      </div>
                      
						 <div class="custom_search_bar position-relative  mobile_top_headerbar">
                          <div class="header-mobile-cart-listing">
                              <a href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="user_icon fa fa-user-circle" aria-hidden="true"></i>
                              </a>
                              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                  @guest
                                      <li><a class="dropdown-item" href="/login">Login</a></li>
                                      <li><a class="dropdown-item" href="/register">Register</a></li>
                                  @else
                                     <!--  <li><a class="dropdown-item" href="{{ url('wishlist') }}"><i aria-hidden="true"
                                                  class="far fa-heart"></i> Favorites</a></li>
                                      <li><a class="dropdown-item" href="{{ url('orders') }}"><i
                                                  class="far fa-folder-open"></i> Orders</a></li> -->
                                      <li><a class="dropdown-item" href="{{ route('my.account') }}"><i
                                                  class="fa fa-user"></i> My Profile</a></li>
                                      <li><a class="dropdown-item" href="{{ route('logout') }}"
                                              onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();"><i
                                                  class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
                                  @endguest
                              </ul>
                              <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                  @csrf
                              </form>
                          </div>

                          <!-- Cart icon -->
                          <div class="cart-header-mobile">
                              <a href="{{ url('cart') }}">
                                  <i class="shopingbag_icon fa fa-shopping-bag mx-3" aria-hidden="true"></i><span
                                      class="badge-ic"><livewire:frontend.cart.cart-count /></span>
                              </a>
                          </div>
						    <div class="mobile_icons position-relative">
                          <a class="menu-bar" href="#"><i class="bar_icon fa fa-bars" aria-hidden="true"></i>
                          </a>
                      </div>
                      </div>
					
					  
                  </div>



                  <!-- menu for mobile  -->
                  <section class="mobile-menu  scale-zero">
                  <div class="row">
                  <div class="col-sm-12 col-md-12">
                      <!-- home shop  -->
                      <div class="px-3 py-1 if-click {{ $layout == 'home' ? 'bg-orange' : '' }}">
                          <a href="/"
                              class="text-decoration-none text-dark d-flex align-items-center justify-content-between }">
                              <span>Home</span>
                          </a>
                      </div>

                      <!-- shop by pet  -->
                      <div class="px-3 py-1 if-click">
                          <a href="#" data-toggle="dropdown" id="petTypeButton" type="button"
                              class="text-decoration-none text-dark d-flex align-items-center justify-content-between chevron">
                              <span>Shop by Pet</span>
                              <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                              <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                          </a>
                      </div>
                      <div id="subCategoriesPet" class="hide">

                          <div class="px-4 py-1 if-click">
                              <a href="#" data-toggle="dropdown" id="dogTypeButton" type="button"
                                  class="text-decoration-none text-dark d-flex align-items-center justify-content-between chevron">
                                  <span>Dog</span>
                                  <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                                  <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                              </a>

                              <div id="subCategoriesDog" class="hide">
                                  <div class="p-2">
                                      <a href="#" data-toggle="dropdown" id="foodTypeButton"
                                          class="text-decoration-none list-txt-color d-flex align-items-center justify-content-between chevron">
                                          <span>Food</span>
                                          <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                                          <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                                      </a>
                                      <ul class="food_list_items p-2 list-unstyled lh-lg" id="foodList">

                                        <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/dry-food') }}">Dry
                                                                      Food</a></li>
                                        <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/wet-food') }}">Wet
                                                                      Food</a></li>
                                        <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/treats') }}">Treats</a>
                                                              </li>
                                        <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/supplements') }}">Supplements</a>
                                                              </li>
                                        <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/dog/dog-food/dog-food') }}">Puppy
                                                                      Food</a></li>
                                      </ul>
                                  </div>
                                  <div class="p-2">
                                      <a href="#" data-toggle="dropdown" id="foodTypeButtonsecond"
                                          class="text-decoration-none list-txt-color d-flex align-items-center justify-content-between chevron">
                                          <span>Health</span>
                                          <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                                          <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                                      </a>
                                      <ul class="food_list_items p-2 list-unstyled lh-lg" id="foodListsecond">

                                          <li><a class="text-decoration-none fw-normal fs-6 text-dark" href="{{ url('product-category/dog/dog-health/dewormer') }}">Dewormer</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/tick-flea') }}">Tick & Flea</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/stress-anxiety') }}">Stress & Anxiety</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/herbal-shampoo') }}">Herbal Shampoo</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/antifungal') }} ">Anti-fungal</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/antibiotic') }}">Antibiotic</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/skin-coat-supplement') }}">Skin & Coat Supplement</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/liver-supplement') }}">Liver Supplement</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/calcium-supplement') }}">Calcium Supplement</a></li>
                                          <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-health/kidney-uti-supplement') }}">Kidney & UTI Supplement</a></li>
                                
                                      </ul>
                                  </div>
                                  <div class="p-2">
                                      <a href="#" data-toggle="dropdown" id="foodTypeButtonthird"
                                          class="text-decoration-none list-txt-color d-flex align-items-center justify-content-between chevron">
                                          <span>Accessories</span>
                                          <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                                          <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                                      </a>

                                      <ul class="food_list_items p-2 list-unstyled lh-lg" id="foodListthird">

                                        <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-accessories/collars-leashes') }}">Collars & Leashes</a></li>
                                        <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-accessories/harnesses') }}">Harnesses</a></li>
                                        <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-accessories/bowtie-bandanas') }}">Bowtie & Bandanas</a></li>
                                        <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-accessories/clothes') }}">Clothes</a></li>
                                        <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-accessories/grooming') }}">Grooming</a></li>
                                        <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-accessories/bags') }}">Bags</a></li>
                                        <li><a class="text-decoration-none fw-normal text-dark" href="{{ url('product-category/dog/dog-accessories/travel-essentials') }}">Travel Essentials</a></li>
                                    
                                      </ul>
                                  </div>
                              </div>
                          </div>

                          <div class="px-4 py-1 if-click">
                              <a href="#" data-toggle="dropdown" id="catTypeButton"
                                  class="text-decoration-none text-dark d-flex align-items-center justify-content-between chevron">
                                  <span>Cat</span>
                                  <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                                  <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                              </a>

                              <div id="subCategoriesCat" class="hide">
                                  <div class="p-2">
                                      <a href="#" data-toggle="dropdown" id="foodTypeButtonfourth"
                                          class="text-decoration-none list-txt-color d-flex align-items-center justify-content-between chevron">
                                          <span>Food</span>
                                          <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                                          <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                                      </a>
                                      <ul class="food_list_items p-2 list-unstyled lh-lg" id="foodListfourth">

                                           <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-food/dry-food') }}">Dry
                                                                      Food</a></li>
                                            <li><a class="text-decoration-none fw-normal text-dark"
                                                    href="{{ url('product-category/cat/cat-food/wet-food') }}">Wet
                                                    Food</a></li>
                                            <li><a class="text-decoration-none fw-normal text-dark"
                                                    href="{{ url('product-category/cat/cat-food/treats') }}">Treats</a>
                                            </li>
                                            <li><a class="text-decoration-none fw-normal text-dark"
                                                    href="{{ url('product-category/cat/cat-food/kitten-food') }}">Kitten
                                                    Food</a></li>


                                      </ul>
                                  </div>
                                  <div class="p-2">
                                      <a href="#" data-toggle="dropdown" id="foodTypeButtonfifth"
                                          class="text-decoration-none list-txt-color d-flex align-items-center justify-content-between chevron">
                                          <span>Health</span>
                                          <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                                          <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                                      </a>
                                      <ul class="food_list_items p-2 list-unstyled lh-lg" id="foodListfifth">


                                        <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-health/cat-dewormer') }}">Cat
                                                                      Dewormer</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-health/tick-flea') }}">Tick
                                                                      & Flea</a></li>
                                                              <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-health/stress-anxiety') }}">Stress
                                                                      & Anxiety</a></li>
                                      </ul>
                                  </div>
                                  <div class="p-2">
                                      <a href="#" data-toggle="dropdown" id="foodTypeButtonsixth"
                                          class="text-decoration-none list-txt-color d-flex align-items-center justify-content-between chevron">
                                          <span>Accessories</span>
                                          <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                                          <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                                      </a>
                                      <ul class="food_list_items px-4 list-unstyled lh-lg" id="foodListsixth">
                                          
                                          <li><a class="text-decoration-none fw-normal text-dark"
                                                                      href="{{ url('product-category/cat/cat-accessories/cat-house') }}">Cat
                                                                      House</a></li>
                                      </ul>
                                  </div>
                              </div>
                          </div>

                      </div>

                      <!-- pet relocation  -->
                      <div class="px-3 py-1 if-click {{ $layout == 'pet_relocate' ? 'bg-orange' : '' }}">
                          <a href="{{ route('frontend.pet.relocation') }}"
                              class="text-decoration-none text-dark d-flex align-items-center justify-content-between ">
                              <span>Pet Relocation</span>
                          </a>
                      </div>

                      <!-- about  -->
                      <div class="px-3 py-1 if-click {{ $layout == 'about' ? 'bg-orange' : '' }}">
                          <a href="#" data-toggle="dropdown" id="aboutTypeButton" type="button"
                              class="text-decoration-none text-dark d-flex align-items-center justify-content-between chevron">
                              <span>About</span>
                              <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                              <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                          </a>
                      </div>
                      <div id="subCategoriesAbout" class="hide">

                          <div class="px-4 py-1">
                              <a href="{{ route('about-us') }}"
                                  class="text-decoration-none text-dark d-flex align-items-center justify-content-between">
                                  <span>Our Story</span>
                              </a>
                          </div>

                          <div class="px-4 py-1">
                              <a href="{{ route('frontend.blogs') }}"
                                  class="text-decoration-none text-dark d-flex align-items-center justify-content-between">
                                  <span>Blog</span>
                              </a>
                          </div>

                      </div>

                      <!-- directory  -->
                      <div class="px-3 py-1 if-click">
                          <a href="#" data-toggle="dropdown" id="dirTypeButton" type="button"
                              class="text-decoration-none text-dark d-flex align-items-center justify-content-between chevron">
                              <span>Directory</span>
                              <i class="menu-open fa-solid fa-chevron-right fa-sm"></i>
                              <i class="menu-close fa-solid fa-chevron-down d-none fa-sm"></i>
                          </a>
                      </div>
                      <div id="subCategoriesDir" class="hide">

                          <div class="px-4 py-1">
                              <a href="{{ route('frontend.directory', ['type' => 'vets']) }}"
                                  class="text-decoration-none text-dark d-flex align-items-center justify-content-between">
                                  <span>Vet</span>
                              </a>
                          </div>

                          <div class="px-4 py-1">
                              <a href="{{ route('frontend.directory', ['type' => 'training']) }}"
                                  class="text-decoration-none text-dark d-flex align-items-center justify-content-between">
                                  <span>Training</span>
                              </a>
                          </div>

                          <div class="px-4 py-1">
                              <a href="{{ route('frontend.directory', ['type' => 'grooming']) }}"
                                  class="text-decoration-none text-dark d-flex align-items-center justify-content-between">
                                  <span>Grooming</span>
                              </a>
                          </div>

                          <div class="px-4 py-1">
                              <a href="{{ route('frontend.directory', ['type' => 'adopt']) }}"
                                  class="text-decoration-none text-dark d-flex align-items-center justify-content-between">
                                  <span>Buy/Adopt</span>
                              </a>
                          </div>

                      </div>

                      <!-- donate  -->
                      <div class="px-3 py-1 if-click {{ $layout == 'donate' ? 'bg-orange' : '' }}">
                          <a href="{{ route('donate') }} "
                              class="text-decoration-none text-dark d-flex align-items-center justify-content-between">
                              <span>Donate</span>
                          </a>
                      </div>
                  </div>
                  </div>
                  </section>

                  <div class="col-12 col-md-12 col-lg-4 custom_search_box">
                      <div class="custom_search_bar position-relative">
                          <div class="serach-bar-col">
                              <!-- Search input -->
                              <input type="text" class="search_content" placeholder="Search for products..."
                                  aria-label="Search" aria-describedby="search-addon" />
                              <!-- Search icon -->
                              <i class="search_icon fa fa-search" aria-hidden="true"></i>
                              <!-- Search dropdown (hidden by default) -->
							   <div class="search_dropdown d-none position-absolute bg-white p-4"></div>
                          </div>
                         

                          <!-- User icon and dropdown -->
                          <span class="desktop_header_icons">
                              <a href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                                  aria-expanded="false">
                                  <i class="user_icon fa fa-user-circle" aria-hidden="true"></i>
                              </a>
                              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                  @guest
                                      <li><a class="dropdown-item" href="/login">Login</a></li>
                                      <li><a class="dropdown-item" href="/register">Register</a></li>
                                  @else
                                      <!-- <li><a class="dropdown-item" href="{{ url('wishlist') }}"><i aria-hidden="true"
                                                  class="far fa-heart"></i> Favorites</a></li>
                                      <li><a class="dropdown-item" href="{{ url('orders') }}"><i
                                                  class="far fa-folder-open"></i> Orders</a></li> -->
                                      <li><a class="dropdown-item" href="{{ route('my.account') }}"><i
                                                  class="fa fa-user"></i> My Profile</a></li>
                                      <li><a class="dropdown-item" href="{{ route('logout') }}"
                                              onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();"><i
                                                  class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
                                  @endguest
                              </ul>
                              <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                  @csrf
                              </form>
                          </span>

                          <!-- Cart icon -->
                          <div class="cart-header">
                              <a href="{{ url('cart') }}">
                                  <i class="shopingbag_icon fa fa-shopping-bag mx-3" aria-hidden="true"></i><span
                                      class="badge-ic"><livewire:frontend.cart.cart-count /></span>
                              </a>
                          </div>
                      </div>

                  </div>

                  <!-- <div class="col-md-1 col-lg-1"></div> -->
              </div>

          </div>
          </div>
      </header>
