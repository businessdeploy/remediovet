<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DirectoryHour extends Model
{
    use HasFactory;

    protected $table = 'directory_hours';

    protected $fillable = [
        'directory_id',
        'days',
        'timing',
    ];
    
}
