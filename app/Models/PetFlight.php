<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PetFlight extends Model
{
    use HasFactory;

    protected $table = 'pet_flight';

    protected $fillable = [
        'main_banner',
        'best_service_heading',
        'best_service_sub_heading',
        'best_service_content',
        'best_service_image',
        'pet_flight_heading',
        'pet_flight_content',
        'pet_flight_image',
        'transport_heading',
        'transport_content',
        'transport_tab_1_heading',
        'transport_tab_1_content',
        'transport_tab_2_heading',
        'transport_tab_3_heading',
        'transport_tab_4_heading',
        'transport_tab_5_heading',
        'transport_tab_2_content',
        'transport_tab_3_content',
        'transport_tab_4_content',
        'transport_tab_5_content',
        'beloved_heading',
        'beloved_sub_heading',
        'beloved_phone',
        'beloved_image',
        'expert_handlers',
        'safe_travel',
        'pet_friendly_travel',
        'expert_heading',
        'expert_content',
        'expert_image',
        'client_video_1',
        'client_video_2',
        'client_video_3',
        'gallery_img_1',
        'gallery_img_2',
        'gallery_img_3',
        'meta_title',
        'meta_keyword',
        'meta_description',
    ];
    
}
