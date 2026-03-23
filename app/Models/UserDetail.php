<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserDetail extends Model
{
    use HasFactory;

    protected $table = 'user_details';

    protected $fillable = [
        'user_id',
        'address_type',
        'full_name',
        'email',
        'phone',       
        'apartment',
        'city',
        'country',
        'state',
        'pin_code',        
    ];
}
