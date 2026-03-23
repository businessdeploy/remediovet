<?php

namespace App\Http\Controllers\Admin;

use App\Models\Faq;
use App\Models\Faqitem;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\FaqFormRequest;
use App\Http\Requests\FaqitemFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class FaqController extends Controller
{
    public function index()
    {
      
        
        Paginator::useBootstrapFive();
        $faqs = Faq::orderBy('id', 'DESC')->paginate(10);
        return view('admin.faq.index', compact('faqs'));
    }

    public function create()
    {
        return view('admin.faq.create');
    }

    public function store(FaqFormRequest $request)
    {
        $validatedData = $request->validated();
        $validatedData['status'] = $request->status == true ? '1':'0';

        Faq::create([
            'title' => $validatedData['title'],
            'status' => $validatedData['status'],
            'meta_title' => $validatedData['meta_title'],
            'meta_keyword' => $validatedData['meta_keyword'],
            'meta_description' => $validatedData['meta_description'],
        ]);

        return redirect('admin/faq')->with('message', 'FAQ Added Successfully!');
    }

    public function edit($id)
    {
        $faq = Faq::findOrFail($id);
        return view('admin.faq.edit', compact('faq'));
    }

    public function update(FaqFormRequest $request, $id)
    {
        $validatedData = $request->validated();
        $faqs = Faq::findOrFail($id);
        Faq::where('id', $faqs->id)->update([
            'title' => $validatedData['title'],
            'meta_title' => $validatedData['meta_title'],
            'meta_keyword' => $validatedData['meta_keyword'],
            'meta_description' => $validatedData['meta_description'],
        ]);

        return redirect('admin/faq/')->with('message', 'Faq Updated Successfully!');
    }

    public function destroy($id)
    {
        $faq = Faq::find($id);

        if($faq->count() > 0){
            

            $faq->delete();
            return redirect('admin/faq')->with('message', 'Faq Deleted Successfully!');
        }
        return redirect('admin/faq')->with('message', 'Something went wrong!');
    }
    
    public function faq_item_create($id)
    {
        $faq = Faq::findOrFail($id);
        
        Paginator::useBootstrapFive();
        $faqitems = Faqitem::where('faqid', $id)->orderBy('id', 'DESC')->paginate(10);
        return view('admin.faq.itemcreate', compact('faq','faqitems'));
        
    }

    public function faq_item_store(FaqitemFormRequest $request)
    {
        $validatedData = $request->validated();
        $faqid=$validatedData['faqid'];
        Faqitem::create([
            'faqid' => $validatedData['faqid'],
            'title' => $validatedData['title'],
             'description' => $validatedData['description'],
        ]);

        return redirect('admin/faq/faq-item/create/'.$faqid)->with('message', 'FAQ Added Successfully!');
    }
    public function faq_item_destroy($id)
    {
        
        $faqs = Faqitem::where('id', '=', $id)->first();
         $faqid=$faqs->faqid;   
            
        $faqitem = Faqitem::find($id);

        if($faqitem->count() > 0){
            

            $faqitem->delete();
            return redirect('admin/faq/faq-item/create/'.$faqid)->with('message', 'Faq item Deleted Successfully!');
        }
        return redirect('admin/faq/faq-item/create/'.$faqid)->with('message', 'Something went wrong!');
    }
    
    
    
}
