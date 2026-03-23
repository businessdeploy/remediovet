<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryFormRequest extends FormRequest
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
            'name' => [
                'required',
                'string'
            ],
            'banner_url' => [
                'required',
                'string'
            ],
            'category' => [
                'required',
            ],
            'description' => [
                'required'
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
            'image' => [
                'nullable',
                'mimes:png,jpeg,jpg,webp'
            ],
            
        ];
    }
}
