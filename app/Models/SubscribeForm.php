<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SubscribeForm extends Model
{
    use HasFactory;
    protected $table = 'subscribe_form';
    protected $fillable = [
        'phone_number',
    ];
}
