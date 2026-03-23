<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class PetFlightForms extends Model
{
    use HasFactory;
    protected $table = 'pet_flight_forms';
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
