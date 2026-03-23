<?php

namespace App\Http\Livewire\Frontend\Product;

use App\Models\{Product,Brand,Category};
use Livewire\Component;
use Livewire\WithPagination;
class Index extends Component
{   
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $products = [];
    public $category, $brandInputs = [], $priceInput, $categoryInput = [], $featureInputs, $seasonalInputs;

    protected $queryString = [
        'brandInputs' => ['except' => '', 'as' => 'brand'],
        'priceInput' => ['except' => '', 'as' => 'price'],
        'categoryInput' => ['except' => '', 'as' => 'category'],
        'featureInputs' => ['except' => '', 'as' => 'feature'],
        'seasonalInputs' => ['except' => '', 'as' => 'seasonal'],
    ];

    public function mount($category)
    {
        $this->category = $category;
    }
    
    // 
    
    public function render()
    {
        $this->products = Product::join('product_cat_mapings', 'products.id', '=', 'product_cat_mapings.pid')   
            ->when($this->categoryInput, function($q) {
                $q->whereIn('product_cat_mapings.cat_id', $this->categoryInput);
            })
            ->when($this->brandInputs, function($q) {
                $q->whereIn('brand', $this->brandInputs);
            })
            ->when($this->priceInput, function($q) {
                $q->when($this->priceInput == '199', function($q2) {
                    $q2->where('products.selling_price', '<=', 199);                                
                })->when($this->priceInput == '299', function($q2) {
                   $q2->where('products.selling_price', '<=', 299);
                })->when($this->priceInput == '399', function($q2) {
                   $q2->where('products.selling_price', '<=', 399);
                })->when($this->priceInput == '499', function($q2) {
                   $q2->where('products.selling_price', '<=', 499);
                })->when($this->priceInput == '999', function($q2) {
                   $q2->where('products.selling_price', '<=', 999);
                })->when($this->priceInput == '4999', function($q2) {
                   $q2->where('products.selling_price', '<=', 4999);
                })->when($this->priceInput == '7999', function($q2) {
                   $q2->where('products.selling_price', '<=', 7999);
                })->when($this->priceInput == '9999', function($q2) {
                   $q2->where('products.selling_price', '<=', 9999);
                });
            })->when($this->featureInputs, function($q) {
                 $q->where('products.featured', '=', 1);                                
            })->when($this->seasonalInputs, function($q) {
                 $q->where('products.seasonal_special', '=', 1);                                
            })
            ->where('status', '0')
            ->select('products.*') // Select only columns from products table
            ->distinct('products.id');


        
            
        $this->products=$this->products->paginate(15);   

        $productCount =$this->products->count();
       

        $this->brands=Brand::get();

        $this->topCategories = Category::with('children.products','children.children.products')->where('parent_id', 0)->get();

        return view('livewire.frontend.product.index', [
            'products' => $this->products,
            'productCount' => $productCount,
            'category' => $this->category,
            'brands' =>$this->brands,
            'topCategories' =>$this->topCategories,           
        ]);
    }
}
