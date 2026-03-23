<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProductAddon extends Model
{
    use HasFactory;
    protected $table = 'product_addons';
    protected $fillable = [
        'product_id',
        'addon_id',      
    ];

     public function product()
    {
        return $this->belongsTo(Product::class, 'addon_id','id' );
    }
}
