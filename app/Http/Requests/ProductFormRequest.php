<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductFormRequest extends FormRequest
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
            'category_id' => [
                'required',
                
            ],
            'name' => [
                'required',
                'string'
            ],
            'slug' => [
                'required',
                'string',
                'max:255'
            ],
            'sku' => [
                'required',
                'string',
                'max:255'
            ],
            'brand' => [
                'required',
                'string'
            ],
            'small_description' => [
                'required',
                'string'
            ],
            'description' => [
                'required',
                'string'
            ],
            'original_price' => [
                'required',
            ],
            'selling_price' => [
                'required',
                'numeric',
            ],
            'tax' => [
                'nullable',
                'integer'
            ],
            'quantity' => [
                'required',
                'integer'
            ],
            'trending' => [
                'nullable'
            ],
            'status' => [
                'nullable'
            ],
            'offer_type' => [
                'nullable',
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
                'nullable'
            ]
        ];
    }
}
