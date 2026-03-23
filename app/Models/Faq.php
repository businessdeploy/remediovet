<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    use HasFactory;

    protected $table = 'faqs';

    protected $fillable = [
        'title',
        'status',
        'meta_title',
        'meta_keyword',
        'meta_description'
    ];
    
    public function items()
    {
        return $this->hasMany(Faqitem::class, 'faqid', 'id');
    }
    
}
