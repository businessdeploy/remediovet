<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DonateForms extends Model
{
    use HasFactory;

    protected $table = 'donate_forms';

    protected $fillable = [
        'name',
        'age',
        'phone_number',
        'city',
        'service',
    ];
    
}
