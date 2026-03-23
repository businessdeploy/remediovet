<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AboutFormRequest extends FormRequest
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
            'who_we_are' => [
                'required',
                'string',
                'max:1255'
            ],
            'our_impact'=>[
                'required'
                'max:1255'
            ],
            'mission' => [
                'required',
                'string',
                'max:800'
            ],
            'we_proud' => [
                'required',
                'string',
                'max:800'
            ],
            'who_we_are_img' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'our_impact_img' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'mission_img' => [
                'required',
                'image',
                'mimes:png,jpg,jpeg,webp'
            ],
            'we_proud_img' => [
                'required',
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
            ],
        ];
    }
}
