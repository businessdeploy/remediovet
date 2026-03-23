<?php

namespace App\Models;

use App\Models\ProductColor;
use App\Models\ProductImage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;
    protected $table = 'products';
    protected $fillable = [
        'category_id',
        'sub_category_id',
        'product_type_id',
        'name',
        'sku',
        'slug',
        'brand',
        'small_description',
        'description',
        'original_price',
        'selling_price',
        'quantity',
        'weight_unit',
        'weight',
        'length_unit',
        'length',
        'date_available',
        'height',
        'width',
        'min_quantity',
        'tax',
        'trending',
        'featured',
        'seasonal_special',
        'status',
        'is_public',
        'offer_type',
        'video_1',
        'video_2',
        'video_3',
        'meta_title',
        'meta_keyword',
        'meta_description',
        'featured_image',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

    public function productImages()
    {
        return $this->hasMany(ProductImage::class, 'product_id', 'id');
    }

    public function productColors()
    {
        return $this->hasMany(ProductColor::class, 'product_id', 'id');
    }

    public function productReviews()
    {
        return $this->hasMany(ProductReviews::class, 'product_id', 'id')->orderBy('id', 'DESC');;
    }

    public function productVariations()
    {
        return $this->hasMany(ProductVariation::class, 'product_id', 'id');
    }

    public function productAttributes()
    {
        return $this->hasMany(Product_Attributes_values::class, 'product_id', 'id');
    }

    public function productFaqs()
    {
        return $this->hasMany(ProductFaqs::class, 'product_id', 'id')->orderBy('id', 'DESC');;
    }

    public function productAddons()
    {
        return $this->hasMany(ProductAddon::class, 'product_id', 'id')->orderBy('id', 'DESC');;
    }


    public function getLeftQuantity(): int
    {
        // Initialize total quantity as 0
        $totalQuantity = 0;

        // Sum up the quantities of all variations
        foreach ($this->productVariations as $variation) {
            $totalQuantity += $variation->quantity;
        }

        // Get the sum of quantities of all related order items
        $orderedQuantity = $this->orderItems()->sum('quantity');

        // Calculate the quantity left in stock
        $leftQuantity = $totalQuantity - $orderedQuantity;

        // Ensure the quantity left is not negative
        return max(0, $leftQuantity);
    }
}
