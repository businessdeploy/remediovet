<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_cat_mapings extends Model
{
    use HasFactory;

    protected $table = 'product_cat_mapings';

    protected $fillable = [
        'pid',
        'cat_id',
    ];
}
