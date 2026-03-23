<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\FaqController;

use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\GoogleReviewManagementController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Livewire\Admin\Brand\Index as BrandIndex;
use App\Http\Livewire\Admin\Color\Index as ColorIndex;
use App\Http\Controllers\Admin\OrderController as AdminOrder;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\DirectoryController;
use App\Http\Controllers\Admin\PaymentMethodController;
use App\Http\Controllers\Admin\BlogController;
use App\Http\Controllers\Admin\BannerController;
use App\Http\Controllers\Admin\DonateController;
use App\Http\Controllers\Admin\HomeController as AdminHome;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\HomeController;

use App\Http\Controllers\Admin\SpecialofferController;
use App\Http\Controllers\Admin\ContentController;
use App\Http\Controllers\Admin\FlightController;
use App\Http\Controllers\Admin\FormController;




use App\Http\Controllers\Frontend\UserController as FrontendUserController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\OrderController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\WishlistController;
use App\Http\Controllers\CashfreePaymentController;
Auth::routes();

Route::get('/import-database-now', function() {
    $sql_path = base_path('evgigsof_remedio.sql');
    if (!file_exists($sql_path)) {
        return "SQL file not found!";
    }
    $sql = file_get_contents($sql_path);
    try {
        \Illuminate\Support\Facades\Artisan::call('db:wipe', ['--force' => true]);
        DB::unprepared($sql);
        return "Database imported successfully! You can now visit the homepage.";
    } catch (\Exception $e) {
        return "Error importing database: " . $e->getMessage();
    }
});

Route::get('/laravel-error-log', function() {
    $logFile = storage_path('logs/laravel.log');
    if (!file_exists($logFile)) return "No log file found.";
    return "<pre>" . shell_exec("tail -n 200 " . escapeshellarg($logFile)) . "</pre>";
});

Route::get('/clear-cache', [HomeController::class,'clearCache'])->name('cache.clear');
Route::get('/mail-test', [HomeController::class,'testMail'])->name('mail.test');

Route::get('/get-cities-by-state', [CheckoutController::class, 'getCitiesByState'])->name('getCitiesByState');

/*
|--------------------------------------------------------------------------
| Frontend Routes
|--------------------------------------------------------------------------
*/
Route::controller(FrontendController::class)->group(function() {
    Route::get('/', 'index')->name('front.home');
    Route::get('/get-info', 'getInfo');
    Route::get('/petflights', 'petRelocation')->name('frontend.pet.relocation');
    Route::post('save-relocation-form','saveRelocationForm')->name('frontend.save.relocation.form');
    Route::get('/about-us', 'aboutUs')->name('about-us');
    Route::get('/contact-us', 'contactUs')->name('contact-us');
    Route::post('/contact-us', 'storeContactUs')->name('store-contact-us');
    Route::get('/donate', 'donate')->name('donate');
    Route::post('/save-donate-form', 'saveDonateForm')->name('save-donate-form');
    Route::get('/faq', 'faq')->name('faqs');
    Route::match(['get','post'],'/directory/{type}', 'frontendDirectory')->name('frontend.directory');

    Route::get('/blogs','allBlogs')->name('frontend.blogs');
    Route::get('/blog/{id}','blogView')->name('frontend.view.blog');

    // Collections
    Route::get('/shop-test', 'testShop')->name('frontend.shop.test');
    Route::get('/shop', 'products')->name('frontend.shop');
    Route::get('/product/{product_slug}', 'productView1');
    Route::get('/product-category/{category_slug}/{product_slug}', 'productView');
    Route::get('/product-category/{category_slug}/{subcategory_slug}/{productType_slug}', 'productsByProductType')->name('products.by.product.type');

    /* Delete shop url */
       Route::get('/shop/{category_slug}/{product_slug}', 'productView');
        Route::get('/shop/{category_slug}/{subcategory_slug}/{productType_slug}', 'productsByProductType')->name('products.by.product.type');
        Route::get('/shop/{category_slug}','productsByCategory')->name('frontend.category.products');


    /* Delete Url after change*/
    Route::get('/product-category/{category_slug}','productsByCategory')->name('frontend.category.products');


    Route::get('get-category-product-listing','getCategoryProductListing')->name('get.category.product.listing');


    //Google Login 
    Route::get('auth/google','loginWithGoogle')->name('google.login');
    Route::any('auth/google/callback','callbackFromGoogle')->name('google.callback');




    Route::post('submit-rating', 'submitRating')->name('submit.product.rating');
    // New Arrivals
    Route::get('/new-arrivals', 'newArrival');
    // Featured Products
    Route::get('/featured-products', 'featuredProducts');

    // Search Bar
    Route::get('search', 'searchProducts');

    //Get Google Reviews ///
    Route::get('get-google-reviews','getGoogleReviews')->name('get.google.reviews');


    Route::get('search-bar-products', 'searchBarProducts')->name('frontend.search.bar.products');
    //content pages
    Route::get('privacy-policy','privacyPolicy')->name('frontend.privacy.policy');
    Route::get('shipping-policy','shippingPolicy')->name('frontend.shipping.policy');
    Route::get('return-policy','returnPolicy')->name('frontend.return.policy');


    //cart
    Route::get('/remove-apply-coupon', 'removeApplyCoupon')->name('remove.cart.apply.coupon');
    Route::post('/apply-coupon', 'applyCoupon')->name('cart.apply.coupon');

    //subcribe
    Route::post('submit-subscribe-form', 'submitSubscribeForm')->name('submit.frontend.subscribe.form');
    Route::post('submit-pet_flight-form', 'submitPetFlightForm')->name('submit.frontend.pet_flight.form');

    Route::post('submit-variation-price','submitVariationPrice')->name('submit.variation.price');

    Route::post('get-variation-price','getVariationPrice')->name('frontend.get.variation.price');
    Route::post('add-to-cart','addToCart')->name('frontend.add.to.cart');

    Route::post('add-remove-wishlist', 'addRemoveWishlist')->name('add.remove.wishlist');


    Route::get('get-special-offer','getSpecialOffer')->name('get.special.offer');

    Route::get('show-product-by-category', 'showProductByCategory')->name('show.product.by.category');
});


 Route::controller(CartController::class)->group(function() {
        Route::get('cart', 'index')->name('frontend.cart');
    });

 Route::controller(CheckoutController::class)->group(function() {
        Route::get('checkout', 'index');
        Route::post('cod-checkout', 'codOrder')->name('cod.checkout.order');
        Route::post('cash-free-checkout', 'cashFreeOrder')->name('cash.free.checkout.order');
        Route::any('cashfree-payments-success','successPayment')->name('cashfree.payments.success');
    });

Route::middleware(['auth'])->group(function () {

    Route::controller(WishlistController::class)->group(function() {
        Route::get('wishlist', 'index');
        
    });

   

    

    Route::controller(OrderController::class)->group(function() {
        Route::get('orders', 'index');
        Route::get('orders/{orderId}', 'show');
    });

    Route::controller(FrontendUserController::class)->group(function() {
        Route::get('profile', 'index');
        Route::post('profile', 'update');

        Route::get('my-account/add-address/billing','addBillingAddress')->name('frontend.add.billing.address');
        Route::post('store-user-address', 'storeUserAddress')->name('store.user.address');
        Route::get('my-account/add-address/shipping','addShippingAddress')->name('frontend.add.shipping.address');

        Route::post('delete/address','deleteAddress')->name('frontend.delete.address');


        Route::get('my-account/edit-address/billing/{id}','editBillingAddress')->name('frontend.edit.billing.address');
        Route::post('update-user-address', 'updateUserAddress')->name('update.user.address');
        Route::get('my-account/edit-address/shipping/{id}','editShippingAddress')->name('frontend.edit.shipping.address');
    
        Route::post('update-user-profile', 'updateUserProfile')->name('update.user.profile');

        Route::post('delete-wishlist', 'destroyWishList')->name('remove.user.wishlist');

        Route::get('change-password', 'passwordCreate')->name('change.password');
        Route::post('change-password', 'changePassword');
    });



});

Route::get('/thank-you', [FrontendController::class, 'thankyou'])->name('frontend.thank.you');


/*
|--------------------------------------------------------------------------
| Backend Routes
|--------------------------------------------------------------------------
*/
Route::get('/my-account', [HomeController::class, 'index'])->name('my.account');

Route::prefix('admin')->middleware('auth', 'isAdmin')->group(function(){

    // Dashboard Route
    Route::get('dashboard', [DashboardController::class, 'index'])->name('admin.dashboard');

    // Site Setting Route
    Route::get('settings', [SettingController::class, 'index'])->middleware(['auth','role.check:2', 'role.check:3']);
    Route::post('settings', [SettingController::class, 'store']);

    // Category Routes
    Route::controller(CategoryController::class)->group(function() {
        Route::get('category', 'index')->middleware('auth', 'role.check:3');
        Route::get('category/create', 'create');
        Route::post('category', 'store');
        Route::get('category/{category}/edit/', 'edit');
        Route::put('category/{category}', 'update');
        Route::get('category/delete/{id}', 'destroy');
    });

    // Google review Routes
    Route::controller(GoogleReviewManagementController::class)->group(function() {
        Route::get('review', 'index')->middleware('auth', 'role.check:3');
        Route::get('review/create', 'create');
        Route::post('review', 'store');
        Route::get('review/{review}/edit/', 'edit');
        Route::put('review/{review}', 'update');
        //Route::delete('review/{review}', 'destroyReview');
       // Route::get('review/{review}', 'destroyReview')->name('review.destroy');

    });

    Route::delete('review/{id}', [GoogleReviewManagementController::class, 'destroyReview']);



    // Product Routes
    Route::controller(ProductController::class)->group(function() {
        Route::match(['get','post'],'product', 'index')->name('admin.product.list')->middleware('auth', 'role.check:3');
        Route::get('product/create', 'create');
        Route::post('product/store', 'store')->name('admin.store.product');
        Route::get('product/edit/{id}', 'edit')->name('admin.edit.product');
        Route::put('product/{id}', 'update');
        Route::get('product/delete/{id}', 'destroy');
        Route::get('product-image/delete/{id}', 'destroyImage');

        Route::get('product/add', 'add');
        Route::get('product/edit-test/{id}', 'editTest');
        Route::post('product/delete', 'deleteAttribute')->name('delete.product.attributes');
        Route::post('product/variation', 'deleteVariation')->name('delete.product.variation');
        //Save Product Attributes
        Route::post('product/save-attributes','saveAttributes')->name('save.product.attributes');
        Route::post('product/save-variations','saveVariations')->name('save.product.variations');
        Route::post('product/update-variations','updateVariations')->name('update.product.variations');
        Route::post('product/save-addons','saveAddons')->name('save.product.addons');
        

        Route::post('product/store-faq','storeFaq')->name('store.product.faq');
        Route::post('product/update-faq','updateFaq')->name('update.product.faq');
        Route::post('product/delete-faq','deleteFaq')->name('delete.product.faq');
        


        // Product Color Routes
        Route::post('product-color/{product_color_id}', 'updateProductColorQty');
        Route::get('product-color/delete/{product_color_id}', 'deleteProductColor');
    });

    // Slider Routes
    Route::controller(SliderController::class)->group(function() {
        Route::get('slider', 'index')->middleware('auth', 'role.check:3');
        Route::get('slider/create', 'create');
        Route::post('slider', 'store');
        Route::get('slider/edit/{id}', 'edit');
        Route::put('slider/{id}', 'update');
        Route::get('slider/delete/{id}', 'destroy');
    });
    
    // About Us Routes
    Route::controller(AboutController::class)->group(function() {
        Route::get('about', 'index')->middleware('auth', 'role.check:3');
        Route::get('about/create', 'create');
        Route::post('about', 'store');
        Route::get('about/edit/{id}', 'edit');
        Route::put('about/{id}', 'update')->name('editabout');
        Route::get('about/delete/{id}', 'destroy');
    });
    
    
    // FAQ Routes
        Route::controller(FaqController::class)->group(function() {
            Route::get('faq', 'index')->middleware('auth', 'role.check:3');
            Route::get('faq/create', 'create');
            Route::post('faq', 'store');
            Route::get('faq/edit/{id}', 'edit');
            Route::put('faq/{id}', 'update')->name('editfaq');
            Route::get('faq/delete/{id}', 'destroy');
            
            Route::get('faq/faq-item/create/{id}', 'faq_item_create')->name('add_faq_item');
            Route::post('faq/faq-item/', 'faq_item_store');
            Route::get('faq/faq-item/edit/{id}', 'edit');
            Route::put('faq/faq-item/{id}', 'update')->name('editfaqitem');
            Route::get('faq/faq-item/delete/{id}', 'faq_item_destroy');          
        });

    // directory Routes
    Route::controller(DirectoryController::class)->group(function() {
        Route::get('directories', 'index')->name('admin.directories')->middleware('auth', 'role.check:3');
        Route::get('directory/create', 'create')->name('admin.directory.create');
        Route::post('directory', 'store')->name('admin.store.directory');
        Route::get('directory/edit/{id}', 'edit');
        Route::put('directory/{id}', 'update')->name('editDirectory');
        Route::get('directory/delete/{id}', 'destroy');                   
    });

    // Payment Method Routes
    Route::controller(PaymentMethodController::class)->group(function() {
        Route::get('payment-methods', 'index')->name('admin.payment.methods')->middleware(['auth','role.check:2', 'role.check:3']);
        Route::get('payment-methods/create', 'create')->name('admin.payment.methods.create');
        Route::post('payment-methods', 'store')->name('admin.store.payment.methods');
        Route::get('payment-methods/edit/{id}', 'edit')->name('admin.payment.methods.edit');
        Route::put('payment-methods/{id}', 'update')->name('edit.payment.method');
        Route::get('payment-methods/delete/{id}', 'destroy')->name('admin.payment.methods.delete');                   
    });

    // Blogs Routes
    Route::controller(BlogController::class)->group(function() {
        Route::get('blogs', 'index')->name('admin.blogs')->middleware('auth', 'role.check:3');
        Route::get('blogs/create', 'create')->name('admin.blogs.create');
        Route::post('blogs', 'store')->name('admin.store.blogs');
        Route::get('blogs/edit/{id}', 'edit')->name('admin.blogs.edit');
        Route::put('blogs/{id}', 'update')->name('edit.blogs');
        Route::get('blogs/delete/{id}', 'destroy')->name('admin.blogs.delete');                   
    });

      Route::controller(BannerController::class)->group(function() {
         Route::get('banners', 'index')->name('admin.banners')->middleware('auth', 'role.check:3');
         Route::get('banners/create', 'create')->name('admin.banners.create');
         Route::post('banners', 'store')->name('admin.store.banners');
        Route::get('banners/edit/{id}', 'edit')->name('admin.banners.edit');
         Route::put('banners/{id}', 'update')->name('edit.banners');
         Route::get('banners/delete/{id}', 'destroy')->name('admin.banners.delete');                   
     });
    
        // Special offer
    Route::controller(SpecialofferController::class)->group(function() {
        Route::get('specialoffers', 'index')->name('admin.specialoffers')->middleware('auth', 'role.check:3');
        Route::get('specialoffers/create', 'create')->name('admin.specialoffers.create');
        Route::post('specialoffers', 'store')->name('admin.store.specialoffers');
        Route::get('specialoffers/edit/{id}', 'edit')->name('admin.specialoffers.edit');
        Route::put('specialoffers/{id}', 'update')->name('edit.specialoffers');
        Route::get('specialoffers/delete/{id}', 'destroy')->name('admin.specialoffers.delete');                   
    });

    // Content Management
    Route::controller(ContentController::class)->group(function() {
        Route::get('content-management', 'index')->name('admin.content.list')->middleware('auth', 'role.check:3');
        Route::get('content-management/create', 'create')->name('admin.content.create');
        Route::post('content-management', 'store')->name('admin.store.content');
        Route::get('content-management/edit/{id}', 'edit')->name('admin.content.edit');
        Route::put('content-management/{id}', 'update')->name('edit.content');
        Route::get('content-management/delete/{id}', 'destroy')->name('admin.content.delete');                   
    });

    //Pet Flight
    Route::controller(FlightController::class)->group(function() {
        Route::get('pet-flight/edit/{id}', 'edit')->name('admin.flight.edit')->middleware('auth', 'role.check:3');
        Route::post('pet-flight/{id}', 'update')->name('edit.flight');                 
    });


    //Donate
    Route::controller(DonateController::class)->group(function() {
        Route::get('donatepage', 'edit')->name('admin.donatepage')->middleware('auth', 'role.check:3');
        Route::patch('donate', 'update')->name('donate.update');             
    });

    //Home
    Route::controller(AdminHome::class)->group(function() {
        Route::get('home', 'edit')->name('admin.home')->middleware('auth', 'role.check:3');
        Route::patch('home', 'update')->name('home.update');             
    });

    //Contact
    Route::controller(ContactController::class)->group(function() {
        Route::get('contactpage', 'edit')->name('admin.contactpage')->middleware('auth', 'role.check:3');
        Route::patch('contact', 'update')->name('contact.update');             
    });



    // Order Routes
    Route::controller(AdminOrder::class)->group(function() {
        Route::match(['get','post'],'orders', 'index')->name('admin.order.list');
        Route::get('orders/{orderId}', 'show');
        Route::put('orders/{orderId}', 'updateOrderStatus');
        Route::get('orders/delete/{id}', 'destroy')->name('admin.order.delete');  

        // Generate Invoice
        Route::get('invoice/{orderId}', 'viewInvoice');
        Route::get('invoice/{orderId}/generate', 'generateInvoice');
        Route::get('invoice/{orderId}/mail', 'mailInvoice');
    });

    // User Routes
    Route::controller(UserController::class)->group(function() {
        Route::get('users', 'index')->middleware(['auth','role.check:2', 'role.check:3']);
        Route::get('users/create', 'create');
        Route::post('users', 'store');
        Route::get('users/edit/{id}', 'edit');
        Route::put('users/{id}', 'update');
        Route::get('users/delete/{id}', 'destroy');
        Route::post('users/change-password','changePassword')->name('user.change.password');
    });

    // Form Routes
    Route::controller(FormController::class)->group(function(){
        Route::get('subscribe-forms','subscribeForm')->name('subscribe.form.list')->middleware('auth', 'role.check:3');
        Route::get('pet-flight-forms','petFlightForm')->name('petflight.form.list')->middleware('auth', 'role.check:3');
        Route::get('donate-forms','donateForm')->name('donate.form.list')->middleware('auth', 'role.check:3');
        Route::get('contact-us-forms','contactUsForm')->name('contact-us.form.list')->middleware('auth', 'role.check:3');
    });

/*
|--------------------------------------------------------------------------
| Livewire Routes
|--------------------------------------------------------------------------
*/
    // Brand Route
    Route::get('brands', BrandIndex::class)->middleware('auth', 'role.check:3');

    // Color Route
    Route::get('colors', ColorIndex::class);

});
