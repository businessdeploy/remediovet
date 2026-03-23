<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Faqitem extends Model
{
    use HasFactory;

    protected $table = 'faqitems';

    protected $fillable = [
        'faqid',
        'title',
        'description'
        
    ];
}
