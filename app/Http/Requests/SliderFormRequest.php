<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SliderFormRequest extends FormRequest
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
            'title' => [
                'required',
                'string',
                'max:255'
            ],
            'sub_title'=>[
                'max:255'
            ],
            'description' => [
                'required',
                'string',
                'max:800'
            ],
            'image' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'sub_image' => [
                'nullable',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'redirect_link' => [
                'required',
                'string',
                'max:150'
            ],
            'button_text' => [
                'nullable',
                'string',
            ],
            'mobile_slider_image' => [
                'nullable',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'status' => [
                'nullable'
            ]
        ];
    }
}
