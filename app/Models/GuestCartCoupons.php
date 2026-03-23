<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GuestCartCoupons extends Model
{
    use HasFactory;

    protected $table = 'guest_cart_coupon';

    protected $fillable = [
        'session_id',
        'coupon',
        'coupon_type',
        'coupon_value',
    ];
    
}
