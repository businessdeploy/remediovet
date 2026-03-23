<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BlogFormRequest extends FormRequest
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
                'max:1255'
            ],
            'category' => [
                'required',
            ],
            'tags' => [
                'required',
                'string',
            ],
            'description' => [
                'required', 
                'string',               
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
            'status' => [
                'nullable'
            ]
        ];
    }
}
