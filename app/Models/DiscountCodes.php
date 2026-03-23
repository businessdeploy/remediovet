<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DiscountCodes extends Model
{
    use HasFactory;

    protected $table = 'discount_codes';

    protected $fillable = [
        'type',
        'role',
        'code',
        'discount_value',
        'discount_type',
    ];
}
