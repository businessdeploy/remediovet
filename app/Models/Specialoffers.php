<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Specialoffers extends Model
{
    use HasFactory;

    protected $table = 'specialoffers';

    protected $fillable = [
        'title',
        'product',
        'offer_type',
        'time',
        'featured_image', 
        'status',       
    ];
    
}
