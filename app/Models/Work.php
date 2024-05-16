<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
    use HasFactory;

    protected $table = 'work';

    protected $fillable = [
        'video_url',
        'image_url',
        'short_desc',
        'modal_title',
        'modal_img',
        'modal_content',
        'facebook_icon',
        'facebook_url',
        'twitter_icon',
        'twitter_url',
        'instagram_icon',
        'instagram_url'
    ];

}
