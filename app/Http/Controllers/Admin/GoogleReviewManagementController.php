<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use App\Models\GoogleReview;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use App\Http\Requests\GoogleFormRequest;
use Illuminate\Support\Carbon;


class GoogleReviewManagementController extends Controller
{
    public function index()
    {
         $reviews = GoogleReview::orderBy('id', 'DESC')->paginate(10);
        return view('admin.review.index', ['reviews' => $reviews]);
        
    }

    public function create()
    {
        return view('admin.review.create');
    }

    public function store(GoogleFormRequest $request)
    {


        $validatedData = $request->validated();

        $review = new GoogleReview;
        $review->name = $validatedData['name'];
        $review->last_name = $validatedData['last_name'];
        $review->comment = $validatedData['comment'];
        $review->rating = $validatedData['rating'];
        if (empty($validatedData['review_date'])) {
            $review->review_date = Carbon::now();
        } else {
            $review->review_date = $validatedData['review_date'];
        }
        

        $uploadPath = 'uploads/review/';
        if($request->hasFile('image')){
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/review/', $filename);
            $review->profile_image = $uploadPath.$filename;
        }
    
        $review->save();

        return redirect('admin/review')->with('message', 'Review Added Successfully!');
    }

    public function edit(GoogleReview $review)
    {

          if (!empty($review->review_date)) {
            $review->review_date = Carbon::parse($review->review_date)->format('Y-m-d');
        }
        return view('admin.review.edit', compact('review'));
    }

    public function update(GoogleFormRequest $request, $category)
    {
        $validatedData = $request->validated();

        $review = GoogleReview::findOrFail($category);

        $review->name = $validatedData['name'];
        $review->last_name = $validatedData['last_name'];
        $review->comment = $validatedData['comment'];

        if (empty($validatedData['review_date'])) {
            $review->review_date = Carbon::now();
        } else {
            $review->review_date = $validatedData['review_date'];
        }
        
        $review->rating = $validatedData['rating'];

        if($request->hasFile('image')){
            $uploadPath = 'uploads/review/';
            $path = $review->image;
            if(File::exists($path)){
                File::delete($path);
            }
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/review/', $filename);
            $review->profile_image = $uploadPath.$filename;
        }

        $review->update();

        return redirect('admin/review')->with('message', 'Review Updated Successfully!');
    }

     public function destroyReview($id)
    {
        if($id) {
            $category = GoogleReview::find($id);
            $path = 'uploads/review/'.$category->profile_image;
            if(File::exists($path)){
                File::delete($path);
            }
            $category->delete();
            session()->flash('message', 'Review Deleted Successfully!');
        }

        
    }

}
