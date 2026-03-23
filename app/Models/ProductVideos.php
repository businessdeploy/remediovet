<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProductVideos extends Model
{
    use HasFactory;
    protected $table = 'product_videos';
    protected $fillable = [
        'product_id',
        'video_link',
    ];

}
