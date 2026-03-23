<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;

    protected $table = 'sliders';

    protected $fillable = [
        'title',
        'sub_title',
        'description',
        'image',
        'sub_image',
        'mobile_slider_image',
        'redirect_link',
        'button_text',
        'status'
    ];
}
