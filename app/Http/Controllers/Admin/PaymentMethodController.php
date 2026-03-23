<?php

namespace App\Http\Controllers\Admin;

use App\Models\{PaymentMethod};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\PaymentFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class PaymentMethodController extends Controller
{
    public function index()
    {       
        $methods=PaymentMethod::get();
        return view('admin.paymentMethod.index',compact('methods'));
    }

    public function create()
    {
        return view('admin.paymentMethod.create');
    }

    public function store(PaymentFormRequest $request)
    {
        $validatedData = $request->validated(); 
        $all=$request->all();
        $method=PaymentMethod::create([
            'name' => $validatedData['name'],
            'published_key' => $validatedData['published_key'],
            'secret_key'=>$validatedData['secret_key'],
            'status'=>$request->status == true ? '1':'0',
        ]);       
        // Redirect back with a success message
        return redirect()->route('admin.payment.methods')->with('message', 'Payment Method Added Successfully!');
    }

    public function edit($id)
    {
        $method = PaymentMethod::findOrFail($id);
        return view('admin.paymentMethod.edit', compact('method'));
    }

    public function update(PaymentFormRequest $request, $id)
    {
        
        $validatedData = $request->validated();
        $method = PaymentMethod::findOrFail($id);       
        $method->name=$validatedData['name'];
        $method->published_key=$validatedData['published_key'];
        $method->secret_key=$validatedData['secret_key'];
        $method->status=$request->status == true ? '1':'0';
        $method->save();
        return redirect()->route('admin.payment.methods')->with('message', 'Payment Method Updated Successfully!');
    }

    public function destroy($id)
    {
        $method = PaymentMethod::find($id);

        if($method->count() > 0){ 
            $method->delete();
            return redirect()->route('admin.payment.methods')->with('message', 'Payment Method Deleted Successfully!');
        }
        return redirect()->route('admin.payment.methods')->with('message', 'Something went wrong!');
    }
    
   
    
    
    
}
