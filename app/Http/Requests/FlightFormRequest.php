<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FlightFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'main_banner' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'best_service_heading' => [
                'required',
                'string',
                'max:1255'
            ],
            'best_service_sub_heading' => [
                'required',
                'string',
                'max:1255'
            ],            
            'best_service_content'=>[
                'max:1255'
            ],
            'best_service_image' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'expert_heading' => [
                'required',
                'string',
                'max:1255'
            ],            
            'expert_content'=>[
                'max:1255'
            ],
            'expert_image' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'transport_heading' => [
                'required',
                'string',                
            ],                       
            'transport_content'=>[
                'max:1255'
            ],
            'transport_tab_1_heading' => [
                'required',
                'string',                
            ],                       
            'transport_tab_1_content'=>[
                'max:1255'
            ],
            'transport_tab_2_heading' => [
                'required',
                'string',                
            ],                       
            'transport_tab_2_content'=>[
                'max:1255'
            ],
            'transport_tab_3_heading' => [
                'required',
                'string',                
            ],                       
            'transport_tab_3_content'=>[
                'max:1255'
            ],
            'transport_tab_4_heading' => [
                'required',
                'string',                
            ],                       
            'transport_tab_4_content'=>[
                'max:1255'
            ],
            'transport_tab_5_heading' => [
                'required',
                'string',                
            ],                       
            'transport_tab_5_content'=>[
                'max:1255'
            ],
            'pet_flight_heading' => [
                'required',
                'string',                
            ],                       
            'pet_flight_content'=>[
                'max:1255'
            ],
            'pet_flight_image' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'beloved_heading' => [
                'required',
                'string',
                'max:800'
            ],
            'beloved_sub_heading' => [
                'required',
                'string',
                'max:800'
            ],
            'beloved_phone' => [
                'required',
                'string',
                'max:800'
            ],
            'beloved_image' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'expert_handlers' => [
                'required',
                'string',
                'max:800'
            ],
            'safe_travel' => [
                'required',
                'string',
                'max:800'
            ],
            'pet_friendly_travel' => [
                'required',
                'string',
                'max:800'
            ],            
            'gallery_img_1' => [
                'nullable',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
           'gallery_img_2' => [
                'nullable',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'gallery_img_3' => [
                'nullable',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'meta_title' => [
                'nullable',
                'string',
                'max:255'
            ],
            'meta_keyword' => [
                'nullable',
                'string'
            ],
            'meta_description'=> [
                'nullable',
                'string'
            ],        ];
    }
}
