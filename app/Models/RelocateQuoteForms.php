<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RelocateQuoteForms extends Model
{
    use HasFactory;

    protected $table = 'relocate_quote_forms';

    protected $fillable = [
        'owner_name',
        'email',
        'phone_number',
        'pet_type',
        'pet_name',
        'pet_breed',
        'pet_age',
        'pet_gender',
        'origin',
        'destination',
    ];
}