<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Directories extends Model
{
    use HasFactory;

    protected $table = 'directories';

    protected $fillable = [
        'title',
        'type',
        'address',
        'city',
        'phone',
        'url'
    ];

    public function hours()
    {
        return $this->hasMany(DirectoryHour::class, 'directory_id', 'id');
    }
    
}
