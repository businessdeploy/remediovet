<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_Variation_values extends Model
{
    use HasFactory;
    protected $table = 'product_variation_values';

    protected $fillable = [
        'product_id',
        'variation_id',
        'attribute_id',
        'attribute_value',
    ];

    public function variationValues()
    {
        return $this->belongsTo(ProductVariation::class,'id','variation_id');
    }

}
