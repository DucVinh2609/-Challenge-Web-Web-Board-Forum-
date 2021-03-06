<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Validator;


class TopicRequest extends FormRequest
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
     * @return array
     */
    public function rules()
    {
        return [
            'title'  => 'required',
            'category'    =>  'required',
            'description'    =>  'required'

      
        ];
    }

    public function messages(){
        return [
            'title.required'  =>  'Please enter Title  ',
            'category.required'  =>  'Please enter category ',
            'description.required'  =>  'Please enter description '


        ];
    }

}
