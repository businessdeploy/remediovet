<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SpecialofferFormRequest extends FormRequest
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
            'time' => [
                'required'
            ],
            'product' => [
                'required'
            ],
             'offer_type' => [
                'required'
            ],
            'status' => [
                'nullable'
            ]
        ];
    }
}
