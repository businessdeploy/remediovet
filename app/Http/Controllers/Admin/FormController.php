<?php

namespace App\Http\Controllers\Admin;

use App\Models\{SubscribeForm,RelocateQuoteForms,DonateForms,Contactus};

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\FaqFormRequest;
use App\Http\Requests\FaqitemFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;
class FormController extends Controller
{
	public function subscribeForm()
    {  
		$forms = DB::table('subscribe_form')->distinct()->get();
        return view('admin.forms.subscribe.index', compact('forms'));
    }

    public function petFlightForm()
    { 
    	$forms=RelocateQuoteForms::orderBy('id', 'DESC')->get();
    	return view('admin.forms.pet_flight.index', compact('forms'));
    }


    public function donateForm()
    { 
    	$forms=DonateForms::orderBy('id', 'DESC')->get();    	
    	return view('admin.forms.donate.index', compact('forms'));
    }

    public function contactUsForm()
    { 
    	$forms=Contactus::orderBy('id', 'DESC')->get();    	
    	return view('admin.forms.contactus.index', compact('forms'));
    }
}