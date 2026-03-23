<?php

namespace App\Http\Controllers\Admin;

use App\Models\{Directories,DirectoryHour};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\DirectoryFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class DirectoryController extends Controller
{
    public function index()
    {       
        $directories=Directories::get();
        return view('admin.directory.index',compact('directories'));
    }

    public function create()
    {
        return view('admin.directory.create');
    }

    public function store(DirectoryFormRequest $request)
    {
        $validatedData = $request->validated(); 
        $all=$request->all();
        $directory=Directories::create([
            'title' => $validatedData['title'],
            'type' => $validatedData['type'],
            'address'=>$validatedData['address'],
            'city'=>$validatedData['city'],
            'phone'=>$request->phone,
            'url'=>$request->url,
        ]);

        // If directory is created successfully
        if ($directory) { 
            // Check if directory hours are provided
            if ($request->has('days') && $request->has('timings')) { 
                // Loop through the zipped data to create directory hours
                foreach ($request['days'] as $key => $day) {                  
                    DirectoryHour::create([
                        'directory_id' => $directory->id,
                        'days' => $day,
                        'timing' => $request['timings'][$key],
                    ]);
                }
            }
        }
        // Redirect back with a success message
        return redirect()->route('admin.directories')->with('message', 'Directory Added Successfully!');
    }

    public function edit($id)
    {
        $directory = Directories::findOrFail($id);
        return view('admin.directory.edit', compact('directory'));
    }

    public function update(DirectoryFormRequest $request, $id)
    {
        
        $validatedData = $request->validated();
        $directory = Directories::findOrFail($id);
        $all=$request->all();
        // echo "<pre>";
        // print_r($directory->hours);die;
        $directory->title=$validatedData['title'];
        $directory->type=$validatedData['type'];
        $directory->address=$validatedData['address'];
        $directory->city=$validatedData['city'];
        $directory->phone=$validatedData['phone'];
        $directory->url=$request->url;
        $directory->save();
        if($directory){
            if ($directory->hours->isNotEmpty()) {
                $directory->hours()->delete();
            }
            if ($request->has('days') && $request->has('timings')) { 
                // Loop through the zipped data to create directory hours
                foreach ($request['days'] as $key => $day) {                  
                    DirectoryHour::create([
                        'directory_id' => $id,
                        'days' => $day,
                        'timing' => $request['timings'][$key],
                    ]);
                }
            }
        }

        return redirect()->route('admin.directories')->with('message', 'Directory Updated Successfully!');
    }

    public function destroy($id)
    {
        $directory = Directories::find($id);

        if($directory->count() > 0){           
            $directory->hours()->delete();
            $directory->delete();
            return redirect()->route('admin.directories')->with('message', 'Directory Deleted Successfully!');
        }
        return redirect()->route('admin.directories')->with('message', 'Something went wrong!');
    }
    
   
    
    
    
}
