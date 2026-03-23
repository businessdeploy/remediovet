<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProductFaqs extends Model
{
    use HasFactory;
    protected $table = 'product_faqs';
    protected $fillable = [
        'product_id',
        'title',
        'description',        
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
