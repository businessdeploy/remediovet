<?php

namespace App\Http\Controllers\Frontend;
use App\Models\{Slider,ProductReviews,Product,Category,About,Faq,Contactus,Setting,Brand,Directories,DirectoryHour,Blogs,ContentManagement,PetFlight,RelocateQuoteForms,DonateForms,DiscountCodes,CartCoupons,SubscribeForm,PetFlightForms,Banner,GuestCartCoupons,User,GuestCart,Wishlist,Product_Variation_values,ProductVariation,Cart,Specialoffers, Donate, Home, Contact, GoogleReview};
use App\Http\Requests\ContactFormRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Hash;
use App\Mail\{RelocateQuoteFormMailable,ContactusFormMailable,DonateFormMailable,SubscribeFormMailable,PetFlightFormMailable};
use Carbon\Carbon;

class FrontendController extends Controller
{

    #@==== Front page ====@#
    public function index()
    {

        $sliders = DB::table('sliders')->where('status', '0')->get();
                    
        $productsByDog=Product::where('category_id','1')->take(4)->get();
        $productsByCat=Product::where('category_id','2')->take(4)->get();
        $productsBySeasonal=Product::where('seasonal_special','1')->take(4)->get();
        $trendingProducts = Product::where('trending', '1')->latest()->take(15)->get();
        $newArrivalProducts = Product::latest()->take(14)->get();
        $featuredProducts = Product::where('featured','1')->latest()->take(14)->get();
        $blogs=Blogs::inRandomOrder()->take(3)->get();
        $data = Home::find(1);
        $reviews = GoogleReview::inRandomOrder()->take(10)->get();

        //Brands
        $brands = Brand::where('status', 0)->orderBy('position', 'asc')->get();

        $topBanners=Banner::where('type','1')->get();  
        $bottomBanners=Banner::where('type','2')->get();
            
        $updatedData = [];
        foreach ($reviews as $key => $value) {
            $reviewDate = Carbon::parse($value->review_date);
            $short_full_name = strtoupper($value['name'][0]) . strtoupper($value['last_name'][0]);
            $updatedData[$key]['short_full_name'] = $short_full_name;
            $updatedData[$key]['full_name'] = $value['name'] . ' ' . $value['last_name'];
            $updatedData[$key]['formatted_review_date'] = $reviewDate->diffForHumans();
            $updatedData[$key]['comment'] = $value['comment'];
            $updatedData[$key]['profile_image'] = $value['profile_image'];
            $updatedData[$key]['rating'] = starRating($value['rating']);
        }
            
        return view('frontend.index', compact('sliders', 'trendingProducts', 'newArrivalProducts', 'featuredProducts', 'productsByDog','productsByCat','blogs','productsBySeasonal','brands','topBanners','bottomBanners', 'data', 'updatedData'));
    }

    #@===== Login With Google ===@#
    public function loginWithGoogle(){
        return Socialite::driver('google')->redirect();
    }


    #@==== Callback from Google ====@#
    public function callbackFromGoogle()
    {
        try {
            $user = Socialite::driver('google')->user();
           
            $is_user = User::where('google_id', $user->getEmail())->first();
            if(!$is_user){
                $saveUser=User::updateOrCreate(
                    [
                        'google_id'=>$user->getId()
                    ],
                    [
                        'name'=>$user->getName(),
                        'email'=>$user->getEmail(),
                        'password'=>Hash::make($user->getName().'@'.$user->getId()),
                    ]
                );
            }else{
                $saveUser= User::where('email',$user->getEmail())->update([
                    'google_id' => $user->getId(),
                ]);
                $saveUser=User::where('email',$user->getEmail())->first();
            }
            Auth::login($saveUser);
            return redirect()->route('front.home');
        } catch (Exception $e) {
            // Log the error
            \Log::error('Google OAuth Error: '.$e->getMessage());
            // Redirect back with an error message
            return redirect('auth/google')->with('error', 'Google authentication failed. Please try again.');
        }
    }


    #@==== About Us ====@#
    public function aboutUs(){
        $abouts = About::where('id', '1')->get();
        return view('frontend.about', compact('abouts'));
    }


    #@==== Get Info ====@#
    public function getInfo(){
        return view('frontend.info');
    }

    #@====== contact Us =====@#
    public function contactUs(){

        $data = Contact::find(1);
        $settings = Setting::get();
        return view('frontend.contactUs', compact('settings', 'data'));
        
    }
    
    #@==== Save Contact us form ====@#
    public function storeContactUs(ContactFormRequest $request)
    {
        $validatedData = $request->validated();
        $contact=Contactus::create([
            'fname' => $validatedData['fname'],
            'email' => $validatedData['email'],
            'phone' => $validatedData['phone'],
            'message' => $validatedData['message']
        ]);  

        $mail=Mail::to('ajaykumar.gigsoft@gmail.com')->send(new ContactusFormMailable($contact)); 
              
        return response()->json(['success' => true]);        
    }

    #@==== Donate Page ====@#
    public function donate(){
        $data = Donate::where('id', '1')->get();
        return view('frontend.donate', compact('data'));
    }


    #@==== Save Donate Form ====@#
    public function saveDonateForm(Request $request){
        $request->validate([
            'name' => 'required',
            'donate_age' => 'required',
            'phone_number' => 'required',
            'city' => 'required',
            'service' => 'required',
        ]);


        if($request->service == 1){
            $service="I can volunteer time";
        }elseif($request->service == 2){
            $service="I can donate money";
        }elseif($request->service == 3){
            $service="I can do both";
        }

        $formData=DonateForms::create([
            'name'=>$request->name,
            'age'=>$request->donate_age,
            'phone_number'=>$request->phone_number,
            'city'=>$request->city,
            'service'=>$service,           
        ]);
        if($formData){
            $mail=Mail::to('ajaykumar.gigsoft@gmail.com')->send(new DonateFormMailable($formData));      
            return response()->json(['message' => 'Form submitted successfully']);
        }

    }


    #@==== Faq Page ====@#
    public function faq(){        
        $faqs = Faq::with('items')->get();
        return view('frontend.faq', compact('faqs'));
    }
    
    #@==== Pet Relocation ====@#
    public function petRelocation(){
        $flight=PetFlight::first();

        //reviews
        $placeId = env('GOOGLE_PLACE_ID');
        $apiKey = env('GOOGLE_API_KEY');
        $response = file_get_contents("https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&fields=name,reviews&key=$apiKey");
        $reviewsData=json_decode($response,true);

        if($reviewsData && isset($reviewsData['result'])){
            $reviews=$reviewsData['result']['reviews'];
        }else{
            $reviews=[];
        }    
        return view('frontend.pet_relocation',compact('flight','reviews'));
    }

     #@==== Save Relocation Quote Form ====@#
    public function saveRelocationForm(Request $request){
        $request->validate([
            'owner_name' => 'required',
            'email' => 'required',
        ]);

        $formData=RelocateQuoteForms::create([
            'owner_name'=>$request->owner_name,
            'email'=>$request->email,
            'phone_number'=>$request->phone_number,
            'pet_type'=>$request->pet_type,
            'pet_name'=>$request->pet_name,
            'pet_breed'=>$request->pet_breed,
            'pet_age'=>$request->pet_age,
            'pet_gender'=>$request->pet_gender,
            'origin'=>$request->origin,
            'destination'=>$request->destination,
        ]);
        if($formData){
            $mail=Mail::to('ajaykumar.gigsoft@gmail.com')->send(new RelocateQuoteFormMailable($formData));      
            return response()->json(['message' => 'Form submitted successfully']);
        }

    }

    #@==== Search product ====@#
    public function searchProducts(Request $request)
    {
        if($request->search){
            $searchProducts = Product::where('name', 'LIKE', '%'.$request->search.'%')->latest()->paginate(15);
            return view('frontend.pages.search', compact('searchProducts'));
        }else{
            return redirect()->back()->with('message', 'Empty Search');
        }
    }


    #@==== searchBarProducts Products ====@#
    public function searchBarProducts(Request $request){
         $query = $request->get('query');

        // Perform search query with $query
        $products = Product::where('name', 'like', '%'.$query.'%')->take(5)->get();
        foreach($products as $product){
            $product->product_link = url('product/' . $product->slug);
        }
        return response()->json($products);   
    }

    #@==== Submit Rating ====@#
    public function submitRating(Request $request){
        $request->validate([
            'rating' => 'required|numeric|min:1|max:5',
            'review' => 'required|string',
        ]);
        if(Auth::user()){

            // Save the review to the database
            $review = new ProductReviews();
            $review->user_id = Auth::user()->id;
            $review->product_id = $request->product_id;
            $review->rating = $request->rating;
            $review->comment = $request->review;
            // Add additional fields as needed
            $review->save();
            // You may return a response if needed
             return response()->json(['message' => 'Review submitted successfully','status'=>true]);
         }else{
             return response()->json(['message' => 'Please Login to submit review','status'=>false]);
         }
        
    }

    #@==== Shop Page ====@#
    public function testShop(){
        $allBrands=Brand::get();
        $topCategories = Category::with('children.products','children.children.products')->where('parent_id', 0)->get();
        $products = Product::with('category')->get();
        return view('frontend.shop',compact('topCategories','allBrands','products'));
    }


    #@==== Directory Listing ====@#
    public function frontendDirectory(Request $request, $type){  
        if($type == 'vets'){
            $type="Vets";
        }elseif($type == 'training'){
            $type="Training";
        }elseif($type == 'grooming'){
            $type="Grooming";
        }elseif($type == 'adopt'){
            $type="Buy/Adopt";
        }

        if($request->isMethod('post')) { // Check if the form is submitted via POST method
            $city = $request->input('city');

            // Query directories based on type and city
            $getDirectories = Directories::with('hours')
                ->where('type', $type)
                ->where('city', $city)
                ->get();

            return view('frontend.directory', compact('getDirectories', 'type'));
        }

         
        $getDirectories=Directories::with('hours')->where('type',$type)->get();
        return view('frontend.directory',compact('getDirectories','type'));
    }


    #@==== All Blogs Page ====@#
    public function allBlogs(){
        $blogs=Blogs::get();

        $health_blogs=Blogs::where('category','health')->get();
        $petflight_blogs=Blogs::where('category','pet_flight')->get();
        return view('frontend.blogs',compact('blogs','health_blogs','petflight_blogs'));
    }


    #@==== Function view Blog ====@#
    public function blogView($id){
        $id=decrypt($id);
        $blog=Blogs::find($id);
        $related_articles=Blogs::where('id','!=',$id)->take(3)->get();
        return view('frontend.view_blog',compact('blog','related_articles'));
        
    }

   #@==== View Privacy Policy ====@#
    public function privacyPolicy(){
        $privacy=ContentManagement::where('type','privacy')->first();
        return view('frontend.content.privacy_policy',compact('privacy'));
    }

    #@==== View Shipping Policy ====@#
    public function shippingPolicy(){
        $shipping=ContentManagement::where('type','shipping')->first();
        return view('frontend.content.shipping_policy',compact('shipping'));
    }

    #@==== View Return Policy ====@#
    public function returnPolicy(){
        $return=ContentManagement::where('type','return')->first();
        return view('frontend.content.return_policy',compact('return'));
    }


    #@==== New Arrival ====@#
    public function newArrival()
    {
        $newArrivalProducts = Product::latest()->take(16)->get();
        return view('frontend.pages.new-arrival', compact('newArrivalProducts'));
    }


    #@==== Featured Offer ====@#
    public function featuredProducts()
    {
        $featuredProducts = Product::where('featured','1')->latest()->get();
        return view('frontend.pages.featured-products', compact('featuredProducts'));
    }

    #@==== All Categories ====@#
    public function categories()
    {
        $categories = Category::where('status', '0')->get();
        return view('frontend.collections.category.index', compact('categories'));
    }

    #@==== Category wise product====@#
    public function products()
    {
        $category = Category::first();
        if ($category) {
            return view('frontend.collections.products.index', compact('category'));
        } else {
            return redirect()->back();
        }
    }


    #@==== GEt Category Product Listing ====@#
    public function getCategoryProductListing(Request $request){
        

        $selectedBrands=$request->selectedBrands;
        
        // Get category slug from URL
        $selectedCategories=$request->selectedCategories;
        $featuredFilter=$request->input('featuredFilter');
        $seasonal_special=$request->input('seasonalInputs');
        $priceInput=$request->input('priceInput');
        $selectedBrands=$request->input('selectedBrands');

        // Find category by slug
        // if ($category) {
            // Initialize product query
            $productsQuery = Product::join('product_cat_mapings', 'products.id', '=', 'product_cat_mapings.pid')
                ->whereIn('product_cat_mapings.cat_id', $selectedCategories)
                ->where('status', '0')
                ->select('products.*')
                ->distinct('products.id');

            if ($featuredFilter) {

               $productsQuery->where('products.featured','=',1);
            }

            if ($seasonal_special) {
                $productsQuery->where('products.seasonal_special','=', 1);
            }

            if ($priceInput) {
                $minPrice=0;
                $maxPrice=$request->input('priceInput');
                $productsQuery->whereBetween('products.original_price', [$minPrice, $maxPrice]);
                $productsQuery->orderBy('products.original_price', 'asc');
            }

            if($selectedBrands){
                $productsQuery->whereIn('products.brand', $selectedBrands);
            }

            
            // Paginate the results
            $products = $productsQuery->get();
            $productCount = $productsQuery->count();
            foreach($products as $product){
                $product->url=url('shop/' . $product->category->slug . '/' . $product->slug);
                $product->rating_html=starRating($product->rating);
            }
            $response=[
                'products'=>$products,
                'productCount'=>$productCount,
            ];
           return response()->json($response);
            
        // } else {
           
        // }
        
    }

    #@==== Show By category products ===#=@
    public function productsByCategory(string $category_slug){
        // Get category slug from URL
        $category = Category::where('slug', $category_slug)->first();
        // Find category by slug
        if ($category) {
            // Initialize product query
            $productsQuery = Product::join('product_cat_mapings', 'products.id', '=', 'product_cat_mapings.pid')
                ->where('product_cat_mapings.cat_id', $category->id)
                ->where('status', '0')
                ->select('products.*')
                ->distinct('products.id');

            // Paginate the results
            $products = $productsQuery->paginate(12);

            $productCount = $productsQuery->count();  // count() may not give correct count with pagination
            $topCategories = Category::with('children.products', 'children.children.products')->where('parent_id', 0)->get();
            $brands = Brand::get();


            $subcategory_slug=0;
            $productType_slug=0;

            return view('frontend.collections.products.category_products', compact('category', 'topCategories', 'brands', 'products', 'productCount', 'category_slug','subcategory_slug','productType_slug'));
        } else {
            // Handle case where category is not found
        }
    }

    #@===== public function productsBySubcategory====@#
    public function productsByProductType(string $category_slug,string $subcategory_slug,string $productType_slug){
        $category = Category::where('slug', $productType_slug)->first();
        if($category){
            // Initialize product query
            $productsQuery = Product::join('product_cat_mapings', 'products.id', '=', 'product_cat_mapings.pid')
                ->where('product_cat_mapings.cat_id', $category->id)
                ->where('status', '0')
                ->select('products.*')
                ->distinct('products.id');

            // Paginate the results
            $products = $productsQuery->paginate(12);

            $productCount = $productsQuery->count(); // count() may not give correct count with pagination
            $topCategories = Category::with('children.products', 'children.children.products')->where('parent_id', 0)->get();
            $brands = Brand::get();


            return view('frontend.collections.products.category_products', compact('category', 'topCategories', 'brands', 'products', 'productCount','category_slug','subcategory_slug','productType_slug'));
        }

    }

     public function getCategoryByProductSlug($product_slug) {
        $categorySlug = "";
        if($product_slug !="") {
           $category = DB::table('products')
                        ->select('categories.slug')
                        ->leftJoin('categories', 'products.category_id', '=', 'categories.id')
                        ->where('products.slug', '=', $product_slug)
                        ->first();
            if($category)
            {
                $categorySlug = $category->slug;
            }
        }
        return $categorySlug;
     }

    #@==== Product View Page ====@#
    public function productView1(string $product_slug)
    {

        $category_slug = "";
        if($product_slug !="") {
                $trimmedSlug = trim($product_slug);
                $category_slug = $this->getCategoryByProductSlug($trimmedSlug);
        }
        $category = Category::where('slug', $category_slug)->first();
        if ($category) {
            $product = $category->products()->where('slug', $product_slug)->where('status', '0')->first();
            if ($product) {
                            // echo "<pre>";
                            // print_r($product);
                            // die('===');
                return view('frontend.collections.products.view', compact('category', 'product'));
            } else {
                $subcategory=Category::where('slug', $product_slug)->first();
                if($subcategory){
                    $productsQuery = Product::join('product_cat_mapings', 'products.id', '=', 'product_cat_mapings.pid')
                    ->where('product_cat_mapings.cat_id', $subcategory->id)
                    ->where('status', '0')
                    ->select('products.*')
                    ->distinct('products.id');

                    // Paginate the results
                    $products = $productsQuery->paginate(12);

                    $productCount = $productsQuery->count();  // count() may not give correct count with pagination
                    $topCategories = Category::with('children.products', 'children.children.products')->where('parent_id', 0)->get();
                    $brands = Brand::get();


                    $subcategory_slug=$product_slug;
                    $productType_slug=0;

                    return view('frontend.collections.products.category_products', compact('category', 'topCategories', 'brands', 'products', 'productCount','category_slug','subcategory_slug','productType_slug'));
                }else{
                        abort(404);
                    //return redirect()->back();
                }
                
            }
        } else {
             abort(404);
            //return redirect()->back();
        }
    }

    #@==== Product View Page ====@#
    public function productView(string $category_slug, string $product_slug)
    {
        $category = Category::where('slug', $category_slug)->first();       
        if ($category) {
            $product = $category->products()->where('slug', $product_slug)->where('status', '0')->first();
            if ($product) {
                return view('frontend.collections.products.view', compact('category', 'product'));
            } else {
                $subcategory=Category::where('slug', $product_slug)->first();
                if($subcategory){
                    $productsQuery = Product::join('product_cat_mapings', 'products.id', '=', 'product_cat_mapings.pid')
                    ->where('product_cat_mapings.cat_id', $subcategory->id)
                    ->where('status', '0')
                    ->select('products.*')
                    ->distinct('products.id');

                    // Paginate the results
                    $products = $productsQuery->paginate(12);

                    $productCount = $productsQuery->count();  // count() may not give correct count with pagination
                    $topCategories = Category::with('children.products', 'children.children.products')->where('parent_id', 0)->get();
                    $brands = Brand::get();


                    $subcategory_slug=$product_slug;
                    $productType_slug=0;

                    $category_meta = [];
                    //if($category_slug == 'others') {
                        $category_meta = Category::where('slug', $product_slug)->select('id','meta_title','meta_keyword','meta_description','banner_url','image','banner_image')->first(); 
                    //}
                    return view('frontend.collections.products.category_products', compact('category', 'topCategories', 'brands', 'products', 'productCount','category_slug','subcategory_slug','productType_slug', 'category_meta'));
                }else{
                     abort(404);
                    //return redirect()->back();
                }
                
            }
        } else {
             abort(404);
            //return redirect()->back();
        }
    }


    #@==== Thank you page ====@#
    public function thankyou()
    {
        return view('frontend.thank-you');
    }


    public function paymentCancel()
    {
        return view('frontend.cancel-payment');
    }

    #@==== Apply coupon cart page ====@#
    public function applyCoupon(Request $request){
        $couponName=$request->couponName;
        $checkExist= DiscountCodes::where('code','LIKE',"%{$couponName}%")->first();

        
        if(empty($checkExist)) {
            return response()->json(["status"=>false,'message' => 'No records found for the entered coupon name.']);
        } else {
            if (Auth::check()) {
                $user_id = Auth::user()->id;
                $cartCount=CartCoupons::where('user_id',$user_id)->first();
                if($cartCount > 0){
                    $cartCount->delete();
                }
                $data=[
                    'user_id'=>$user_id,
                    'coupon'=>$checkExist->code,
                    'coupon_type'=>$checkExist->discount_type,
                    'coupon_value'=>$checkExist->discount_value,
                ];

                CartCoupons::create($data);
            }else{
                $cartItemSession = session()->get('cartSessionId');
                $cartCount=GuestCartCoupons::where('session_id',$cartItemSession)->first();
                if($cartCount > 0){
                    $cartCount->delete();
                }
                $data=[
                    'session_id'=>$cartItemSession,
                    'coupon'=>$checkExist->code,
                    'coupon_type'=>$checkExist->discount_type,
                    'coupon_value'=>$checkExist->discount_value,
                ];
                GuestCartCoupons::create($data);

            }          

            
            return response()->json(["status"=>true,'message' => 'Coupon Applied Successfully']);
        }
    }

    #@==== Remove Cart Coupon applied ====@#
    public function removeApplyCoupon(){
        if (Auth::check()) {
            $user_id = Auth::user()->id;
            CartCoupons::where('user_id',$user_id)->delete();
        }else{
            $cartItemSession = session()->get('cartSessionId');
            GuestCartCoupons::where('session_id',$cartItemSession)->delete();
        }
        return response()->json(["status"=>true,'message' => 'Coupon Delete Successfully']);
    }


    #@==== Submit subscribe form =====@#
    public function submitSubscribeForm(Request $request){
        $request->validate([
            'phone_number' => 'required',
        ]);

        $formData=SubscribeForm::create([            
            'email'=>$request->phone_number,
        ]);
        if($formData){
            //$mail=Mail::to($request->email)->send(new SubscribeFormMailable($formData));      
            return response()->json(['message' => 'Form submitted successfully']);
        }

    }


    #@==== Submit subscribe form =====@#
    public function submitPetFlightForm(Request $request){
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
        ]);

        $formData=PetFlightForms::create([            
            'name'=>$request->name,
            'phone'=>$request->phone,
        ]);
        if($formData){
            $mail=Mail::to("ajaykumar.gigsoft@gmail.com")->send(new PetFlightFormMailable($formData));      
            return response()->json(['message' => 'Form submitted successfully']);
        }

    }


    #@===get Google Reviews ====@#
    public function getGoogleReviews(){
        $placeId = env('GOOGLE_PLACE_ID');

        $apiKey = env('GOOGLE_API_KEY');
        $response = file_get_contents("https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&fields=name,reviews&key=$apiKey");
        $reviewsData=json_decode($response,true);
        if($reviewsData){
            $reviews=$reviewsData['result']['reviews'];
        }else{
            $reviews=[];
        } 

        return response()->json(['success' => true, 'reviews' => $reviews]);
    }


    #@==== Submit Variation Price ====@#
    public function submitVariationPrice(Request $request){
        $price=$request->price;
        Session::put('variation_price', $price);
        
    }

    #@==== Product By Category ====@#
    public function productByCategory(){
        
    }
    


     public function getVariationPrice(Request $request){
        $product_id = $request->input('product_id');
        $sizeSelected = $request->input('sizeSelected');
        $colorSelected = $request->input('colorSelected');


        // Ensure both size and color are selected


        $query = Product_Variation_values::query();

                    

        if ($sizeSelected) {
            $query->orWhere(function($q) use ($product_id, $sizeSelected) {
                $q->where('product_id', $product_id)
                ->where('attribute_value', $sizeSelected);
            });
        }

        if ($colorSelected) {
            $query->orWhere(function($q) use ($product_id, $colorSelected) {
                $q->where('product_id', $product_id)
                ->where('attribute_value', $colorSelected);
            });
        }

        $variation = $query->groupBy('variation_id')
                       ->havingRaw('count(distinct attribute_id) = ?', [$sizeSelected && $colorSelected ? 2 : 1])
                       ->select('variation_id')
                       ->first();

                    

        if ($variation) {
            $variationData = ProductVariation::find($variation->variation_id);
            $variationPrice = $variationData->price;
            $formattedPrice = '₹' . number_format($variationPrice, 2);
            $variationQty = $variationData->quantity;
            return response()->json(['buttonDisable'=>false,'price' => $formattedPrice,'variation_id'=>$variation->variation_id, 'quantity'=>$variationQty]);
        } else {
            return response()->json(['buttonDisable'=>true,'price' => '','variation_id'=>'', 'quantity'=>'']);
        }
    }


    public function addToCart(Request $request) {
    $productId = $request->product_id;
    $quantity = $request->selectedQuantity;
    $product_variation_id = $request->variation_id;
    $addons = $request->addons; // Capture addons

    // Check if the product exists and is active

    $product = Product::where('id', $productId)->where('status', '0')->first();
    if(!$product) {
        return response()->json([
            'text' => 'Product does not exist!',
            'type' => 'warning',
            'status' => 404
        ]);
    }

    // If variation ID is provided, use it. Otherwise, set it to null.
    $variationId = $product_variation_id ?? null;
    if($variationId !=null) {
        $product = ProductVariation::where('id', $variationId)->where('product_id', $productId)->first();
    }

    // Check if the user is logged in
    if (Auth::check()) {
        $userId = auth()->user()->id;
        $cart = Cart::where('user_id', $userId)
                    ->where('product_id', $productId)
                    ->where('product_variation_id', $variationId)
                    ->first();

        if ($cart) {
            // If the cart item with the same variation exists, update the quantity
            $newQuantity = $cart->quantity + $quantity;
            if ($product->quantity >= $newQuantity) {
                $cart->update(['quantity' => $newQuantity]);
                $message = 'Quantity Updated in Cart.';
            } else {
                return response()->json([
                    'text' => 'Only ' . $product->quantity . ' Products Available in Stock!',
                    'type' => 'warning',
                    'status' => 404
                ]);
            }
        } else {
            // If no cart item with the same variation exists, create a new one
            if ($product->quantity >= $quantity) {
                $cartItem = Cart::create([
                    'user_id' => $userId,
                    'product_id' => $productId,
                    'quantity' => $quantity,
                    'product_variation_id' => $variationId,
                ]);
                $message = 'Product Added to Cart.';
            } else {
                return response()->json([
                    'text' => 'Only ' . $product->quantity . ' Products Available in Stock!',
                    'type' => 'warning',
                    'status' => 404
                ]);
            }
        }

        // Handle add-ons
        if (!empty($addons)) {
            foreach ($addons as $addonId) {
                $addonProduct = Product::find($addonId);
                if ($addonProduct) {
                    $cartAddon = Cart::where('user_id', $userId)
                                     ->where('product_id', $addonId)
                                     ->first();

                    if ($cartAddon) {
                        $newAddonQuantity = $cartAddon->quantity + $quantity;
                        $cartAddon->update(['quantity' => $newAddonQuantity]);
                    } else {
                        Cart::create([
                            'user_id' => $userId,
                            'product_id' => $addonId,
                            'quantity' => 1,
                            'addon_main_id'=>$productId,
                        ]);
                    }
                }
            }
        }

    } else {
        // For guest users
        $cartSessionId = session()->get('cartSessionId', Str::random(10));
        session()->put('cartSessionId', $cartSessionId);
        $cart = GuestCart::where('session_id', $cartSessionId)
                         ->where('product_id', $productId)
                         ->where('product_variation_id', $variationId)
                         ->first();

        if ($cart) {
            
             $newQuantity = $cart->quantity + $quantity;
            if ($product->quantity >= $newQuantity) {
                $cart->update(['quantity' => $newQuantity]);
                $message = 'Quantity Updated in Cart.';
            } else {
                return response()->json([
                    'text' => 'Only ' . $product->quantity . ' Products Available in Stock!',
                    'type' => 'warning',
                    'status' => 404
                ]);
            }
        } else {

                // If no cart item with the same variation exists, create a new one
                if ($product->quantity >= $quantity) {
                    GuestCart::create([
                    'session_id' => $cartSessionId,
                    'product_id' => $productId,
                    'quantity' => $quantity,
                    'product_variation_id' => $variationId,
                ]);
                $message = 'Product Added to Cart.';
                } else {
                    return response()->json([
                        'text' => 'Only ' . $product->quantity . ' Products Available in Stock!',
                        'type' => 'warning',
                        'status' => 404
                    ]);
                }
        }

        // Handle add-ons
        if (!empty($addons)) {
            foreach ($addons as $addonId) {
                $addonProduct = Product::find($addonId);
                if ($addonProduct) {
                    $cartAddon = GuestCart::where('session_id', $cartSessionId)
                                         ->where('product_id', $addonId)
                                         ->first();

                    if ($cartAddon) {
                        $newAddonQuantity = $cartAddon->quantity + $quantity;
                        $cartAddon->update(['quantity' => $newAddonQuantity]);
                    } else {
                        GuestCart::create([
                            'session_id' => $cartSessionId,
                            'product_id' => $addonId,
                            'quantity' => 1,
                            'addon_main_id'=>$productId,
                        ]);
                    }
                }
            }
        }
    }

    return response()->json([
        'message' => $message,
        'type' => 'success',
        'status' => 200
    ]);
}



    // public function addToCart(Request $request){


    //     $productId = $request->product_id;
    //     $quantity = $request->selectedQuantity;
    //     $product_variation_id=$request->variation_id;

    //     if (!$product = Product::where('id', $productId)->where('status', '0')->first()) {
    //         return response()->json([
    //             'text' => 'Product does not exist!',
    //             'type' => 'warning',
    //             'status' => 404
    //         ]);
    //     }

    //     if (Auth::check()) {
    //         $userId = auth()->user()->id;
    //         $cart = Cart::where('user_id', $userId)->where('product_id', $productId)->first();
    //         if ($cart) {
    //             if($cart->product_variation_id == $product_variation_id){
    //                 $newQuantity = $cart->quantity + $quantity;
    //                 if ($product->quantity >= $newQuantity) {
    //                     $cart->update(['quantity' => $newQuantity]);
    //                     $message = 'Quantity Updated in Cart.';
    //                 } else {
    //                     return response()->json([
    //                         'text' => 'Only ' . $product->quantity . ' Products Available in Stock!',
    //                         'type' => 'warning',
    //                         'status' => 404
    //                     ]);
    //                 }
    //             }else{
    //                 Cart::create([
    //                     'user_id' => $userId,
    //                     'product_id' => $productId,
    //                     'quantity' => $quantity,
    //                     'product_variation_id'=>$product_variation_id,
    //                 ]);
    //                 $message = 'Product Added to Cart.';
    //             }                
    //         } else {
    //             if ($product->quantity >= $quantity) {
    //                 Cart::create([
    //                     'user_id' => $userId,
    //                     'product_id' => $productId,
    //                     'quantity' => $quantity,
    //                     'product_variation_id'=>$product_variation_id,
    //                 ]);
    //                 $message = 'Product Added to Cart.';
    //             } else {
    //                 return response()->json([
    //                     'text' => 'Only ' . $product->quantity . ' Products Available in Stock!',
    //                     'type' => 'warning',
    //                     'status' => 404
    //                 ]);
    //             }
    //         }
    //     } else {
    //         $cartSessionId = session()->get('cartSessionId', Str::random(10));
    //         session()->put('cartSessionId', $cartSessionId);
    //         $cart = GuestCart::where('session_id', $cartSessionId)->where('product_id', $productId)->first();

    //         if ($cart) {
    //             // if($cart->product_variation_id == $product_variation_id){
    //                 $newQuantity = $cart->quantity + $quantity;
    //                 $cart->update(['quantity' => $newQuantity]);
    //                 $message = 'Quantity Updated in Cart.';
    //             // }else{
    //             //     GuestCart::create([
    //             //         'session_id' => $cartSessionId,
    //             //         'product_id' => $productId,
    //             //         'quantity' => $quantity,
    //             //         'product_variation_id'=>$product_variation_id,
    //             //     ]);
    //             //     $message = 'Product Added to Cart.';
    //             // }
                
    //         } else {
    //             GuestCart::create([
    //                 'session_id' => $cartSessionId,
    //                 'product_id' => $productId,
    //                 'quantity' => $quantity,
    //                 'product_variation_id'=>$product_variation_id,
    //             ]);
    //             $message = 'Product Added to Cart.';
    //         }
    //     }

    //     return response()->json([
    //         'message' => $message,
    //         'type' => 'success',
    //         'status' => 200
    //     ]);
    // }


    public function addRemoveWishlist(Request $request)
    {

      $productId = $request->product_id;

        if ($request->type === 'add') {
            if (Auth::check()) {
                if (Wishlist::where('user_id', auth()->user()->id)->where('product_id', $productId)->exists()) {
                    // Product already in wishlist, handle accordingly
                    return response()->json(['message' => 'Product already in wishlist']);
                } else {
                    Wishlist::create([
                        'user_id' => auth()->user()->id,
                        'product_id' => $productId
                    ]);
                    // Product added to wishlist, handle accordingly

                }
            } else {
                return response()->json(['type'=>'add','message' => 'Please Login To add Wishlist']);
                // $cartItemSession = session()->get('cartSessionId');
                // // Handle logic for guest users
                // Wishlist::create([
                //     'user_id' => $cartItemSession,
                //     'product_id' => $productId
                // ]);
            }
            return response()->json(['type'=>'add','message' => 'Product added to wishlist']);
        } elseif ($request->type === 'remove') {
            // print_r($productId);die;
            if (Auth::check()) {
                Wishlist::where('user_id', auth()->user()->id)
                    ->where('product_id', $productId)
                    ->delete();
                // Product removed from wishlist, handle accordingly

            } else {
                // Handle logic for guest users
                $cartItemSession = session()->get('cartSessionId');
                Wishlist::where('user_id', $cartItemSession)
                    ->where('product_id', $productId)
                    ->delete();
            }
            return response()->json(['type'=>'remove','message' => 'Product removed from wishlist']);
        } else {
            // Handle invalid type
            return response()->json(['error' => 'Invalid type provided']);
        }
    }

    #@===== Get Special Offer ====@#
    public function getSpecialOffer(Request $request){

        $specialofferId = $request->input('specialofferId');
        $specialOffer = Specialoffers::leftJoin('carts', 'specialoffers.product', '=', 'carts.product_id')
        ->whereNull('carts.product_id')
        ->where('specialoffers.id', '!=', $specialofferId)
        ->inRandomOrder()
       ->select('specialoffers.*')
       ->first();
       
       
        

        //$specialOffer = Specialoffers::where('id', '!=', $specialofferId)->inRandomOrder()->first();
if ($specialOffer === null) {
    return response()->json([
            'id'=>'',
            'sproductid'=>'',
            'product_url' => '',
            'featured_image' => '',
            'time' => ''
        ]);
}else{
        return response()->json([
            'id'=>$specialOffer->id,
            'sproductid'=>$specialOffer->product,
            'product_url' => $specialOffer->product_url,
            'featured_image' => asset($specialOffer->featured_image),
            'time' => $specialOffer->time,
        ]);
    }
}

    public function showProductByCategory(){
        $products = Product::all();
        $randomString = Str::random(10);

        foreach ($products as $product) {
            // Generate a random Chinese string
            $randomChineseString = $this->generateRandomString();

            // Update product_type_id column with the random Chinese string
            $product->update(['name' => $randomChineseString]);
        }


    }

    public function generateRandomString($length = 30){
        // Array of Chinese characters
       //gdgfg
$chineseCharacters = ['的', '一', '是', '了', '不', '在', '人', '有', '我', '他', '这', '个', '上', '们', '来', '到', '时', '大', '地', '为', '子', '中', '你', '说', '生', '国', '年', '着', '就', '那', '和', '要', '她', '出', '也', '得', '里', '后', '自', '以', '会', '家', '可'];

        $randomString = '';

        // Generate random string
        for ($i = 0; $i < $length; $i++) {
            $randomIndex = mt_rand(0, count($chineseCharacters) - 1);
            $randomString .= $chineseCharacters[$randomIndex];
        }

        return $randomString;
    }
   
}
