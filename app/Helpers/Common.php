<?php
use Illuminate\Support\Carbon;
use App\Models\{Product,ProductReviews,Setting,Shipping,ShippingDetails,OrderItem};
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Arr;

        

if (!function_exists('starRating')) {
    function starRating($rating)
    {
        $fullStars = floor($rating);
        $halfStar = ceil($rating - $fullStars);
        $emptyStars = 5 - $fullStars - $halfStar;
        
        $stars = '';

        // Full stars
        for ($i = 0; $i < $fullStars; $i++) {
            $stars .= '<i class="fa-solid fa-star"></i> ';
        }

        // Half star
        if ($halfStar) {
            $stars .= '<i class="fa-solid fa fa-star-half"></i>';
        }

        // Empty stars
        for ($i = 0; $i < $emptyStars; $i++) {
            $stars .= '<i class="fa-regular fa-star"></i> ';
        }

        return $stars;
    }
}

if (!function_exists('getAverageRating')) {
    function getAverageRating($product_id)
    {
        $averageRating = ProductReviews::where('product_id', $product_id)->avg('rating');
        // If there are no reviews for the product, return 0
        if ($averageRating === null) {
            return 0;
        }

        // Round the average rating to two decimal places
        return round($averageRating, 2);
    }
}

if (!function_exists('getItemTax')) {
    function getItemTax($itemPrice, $taxRate)
    {      
                  
        $taxRate=$taxRate/100;  
        // Calculate the tax amount
        $itemTax = $itemPrice * $taxRate;
       
        // Round the tax amount to two decimal places
        return round($itemTax, 2);
    }
}

if (!function_exists('getTotalSavings')) {
    function getTotalSavings($sellPrice, $originalPrice,$quantity)
    {      
        $price_diff=$originalPrice - $sellPrice;

        $diff_with_quantity=$price_diff * $quantity;

        return round($diff_with_quantity,2);
    }
}

if (!function_exists('getWithoutTaxPrice')) {
    function getWithoutTaxPrice($itemPrice, $taxRate)
    {
        $priceBeforeTax = $itemPrice / (1 + $taxRate/100);  
        
        return round($priceBeforeTax,2);
    }
}


if (!function_exists('getSettingsData')) {
    function getSettingsData()
    {      
       $data=Setting::first();

        return $data;
    }
}

if (!function_exists('getGoogleReviewsData')) {
    function getGoogleReviewsData()
    {      
        $placeId = env('GOOGLE_PLACE_ID');
        $apiKey = env('GOOGLE_API_KEY');
        $response = file_get_contents("https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&fields=name,reviews&key=$apiKey");
        $reviewsData=json_decode($response,true);
        if($reviewsData){
            $reviews=$reviewsData['result']['reviews'];
        }else{
            $reviews=[];
        } 
        return $reviews;
    }
}


if (!function_exists('getLeftProductQuantity')) {
    function getLeftProductQuantity($product_id,$productQuantity)
    {     
        $orderedQuantity = OrderItem::where('product_id', $product_id)->sum('quantity');
        $left=$productQuantity - $orderedQuantity;
        return $left;
    }
}



if (!function_exists('calculateShipping')) {
    function calculateShipping($price)
    {           
        $type=Shipping::where('shipping_type','Flat')->first();
        if($type){
            $detail=ShippingDetails::where('shipping_id',$type->shipping_id)->first();
            if($detail){
                if($detail->shipping_rate_type =='fix'){
                    $shippingAmount=$detail->shipping_rate;
                }else{
                    $shippingAmount=$price * $detail->shipping_rate /100;
                }
            }
           
        }
        return $shippingAmount;
    }
}






        

        
     
        


        
