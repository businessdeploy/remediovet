<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CartCoupons extends Model
{
    use HasFactory;

    protected $table = 'cart_coupons';

    protected $fillable = [
        'user_id',
        'coupon',
        'coupon_type',
        'coupon_value'
    ];
}
