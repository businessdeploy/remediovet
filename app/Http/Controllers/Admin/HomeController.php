<?php

namespace App\Http\Controllers\Admin;

use App\Models\About;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\AboutFormRequest;
use App\Http\Requests\DonateFormRequest;
use App\Http\Requests\HomeFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;
use App\Models\Donate;
use App\Models\Home;

class HomeController extends Controller
{
    public function edit()
    {
        $data = Home::find(1);
        return view('admin.home.edit', ['data' => $data]);
    }

    public function update(HomeFormRequest $request, $id = 1)
    {
        $validatedData = $request->validated();
        Home::updateOrCreate(
            ['id' => 1],
            [
                'title' => $validatedData['title'],
                'meta_title' => $validatedData['meta_title'],
                'meta_keyword' => $validatedData['meta_keyword'],
                'meta_description' => $validatedData['meta_description'],
            ]
        );

        return redirect('/admin/home')->with('message', 'Home Page Updated Successfully!');
    }

}
