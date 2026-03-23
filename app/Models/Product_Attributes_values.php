<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_Attributes_values extends Model
{
    use HasFactory;
    protected $table = 'product_attributes_values';

    protected $fillable = [
        'product_id',
        'attribute_id',
        'value',
    ];


}



