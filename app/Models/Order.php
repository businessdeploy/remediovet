<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Order extends Model
{
    use HasFactory;

    protected $table = "orders";

    protected $fillable = [
        'user_id',
        'tracking_no',
        'fullname',
        'email',
        'phone',
        'state',
        'city',
        'apartment',
        'is_shipping_address_same',
        'shipping_name',
        'shipping_email',
        'shipping_phone',
        'shipping_state',
        'shipping_city',
        'shipping_apartment',
        'status_message',
        'payment_mode',
        'payment_id',
        'coupon_code',
        'coupon_type',
        'coupon_value',
        'sub_total_amount',
        'shipping_amount',
        'total_discount',
        'tax_amount',
        'total_amount',
        'payment_status',
        'shipping_method',
        'shipping_status',
    ];

    /**
     * Get all of the comments for the Order
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }

    public function orderItems(): HasMany
    {
        return $this->hasMany(OrderItem::class, 'order_id', 'id');
    }
}
