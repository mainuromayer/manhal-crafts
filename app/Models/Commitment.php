<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Commitment extends Model
{
    use HasFactory;

    protected $table = 'commitment';

    protected $fillable = [
        'title',
        'description',
        'image_url',
        'video_url'
    ];
}
