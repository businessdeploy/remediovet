<?php

namespace App\Http\Livewire\Admin\Brand;

use App\Models\Brand;
use App\Models\Category;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithPagination;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Storage;


class Index extends Component
{

    use WithPagination;
    use WithFileUploads;
    protected $paginationTheme = 'bootstrap';

    public $name, $slug, $status, $brand_id, $category_id, $position, $image;

    public function render()
    {
        $categories = Category::where('status','0')->get();
        $brands = Brand::orderBy('id', 'DESC')->paginate(10);
        return view('livewire.admin.brand.index', ['brands' => $brands, 'categories' => $categories])        
                        ->extends('layouts.admin',['layout'=>'brand'])
                        ->section('content');
    }

    public function rules()
    {

        return [
            'name' => 'required|string',
            'slug' => 'required|string',
            'position' => 'required',
            'image' => 'nullable|mimes:jpeg,jpg,png|max:2048',
            'status' => 'nullable',
        ];
    }

    public function resetInput()
    {
        $this->name = NULL;
        $this->slug = NULL;
        $this->status = NULL;
        $this->image = null;
        $this->position = NULL;
        $this->brand_id = NULL;
    }

    public function storeBrand()
    {
        $validatedData = $this->validate();

        if ($this->image) {
            $file = $this->image;
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            Storage::putFileAs('public/uploads/brands', $file, $filename);
            $validatedData['image'] = 'uploads/brands/'.$filename;
        }

        Brand::create([
            'name' => $this->name,
            'slug' => Str::slug($this->slug),
            'image' => $validatedData['image'],
            'position' => (int) $this->position,
            'status' => $this->status == true ? '1':'0',
        ]);
        session()->flash('message', 'Brand Added Successfully!');
        $this->dispatchBrowserEvent('close-modal');
        $this->resetInput();
    }

    public function closeModal()
    {
        $this->resetInput();
    }

    public function openModal()
    {
        $this->resetInput();
    }

    public function editBrand(int $brand_id)
    {
        $this->brand_id = $brand_id;
        $brand = Brand::findOrFail($brand_id);
        $this->name = $brand->name;
        $this->slug = $brand->slug;
        $this->image = $brand->image;
        $this->position = $brand->position;
        $this->status = $brand->status;
        $this->category_id = $brand->category_id;
    }

    public function updateBrand()
    {

       // $validatedData1 = $this->validate();

        $brand = Brand::find($this->brand_id);
        if($brand) {
                if ($this->image && is_object($this->image)) {
                    $file = $this->image;
                    $ext = $file->getClientOriginalExtension();
                    $filename = time().'.'.$ext;
                    Storage::putFileAs('public/uploads/brands', $file, $filename);
                    $uploaded_image = 'uploads/brands/'.$filename;
                }

                $brand->update([
                    'name' => $this->name,
                    'slug' => Str::slug($this->slug),
                    'image' => $uploaded_image ?? $brand->image,
                    'position' => (int) $this->position,
                    'status' => $this->status ? '1' : '0',
                ]);
        }

        session()->flash('message', 'Brand Updated Successfully!');
        $this->dispatchBrowserEvent('close-modal');
        $this->resetInput();
    }

    public function deleteBrand($brand_id)
    {
        $this->brand_id = $brand_id;
    }

    public function destroyBrand()
    {
        Brand::findOrFail($this->brand_id)->delete();
        session()->flash('message', 'Brand Deleted Successfully!');
        $this->dispatchBrowserEvent('close-modal');
        $this->resetInput();
    }

}
