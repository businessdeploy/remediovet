<?php

namespace App\Http\Controllers\Admin;

use App\Models\PetFlight;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\FlightFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class FlightController extends Controller
{
    #@==== Edit Pet Flight ====@#
    public function edit($id)
    {
        $flight = PetFlight::findOrFail($id);
        return view('admin.flight.edit', compact('flight'));
    }

    #@==== Update pet Flight ====@#
    public function update(FlightFormRequest $request,$id){

        $validatedData = $request->validated();
        $flight = PetFlight::findOrFail($id);
        if($request->hasFile('main_banner')){
            $destination = $flight->main_banner;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('main_banner');
            $ext = $file->getClientOriginalExtension();
            $filename = 'main_banner'.time().'.'.$ext;
            $file->move('uploads/pet_flight/',$filename);
            $validatedData['main_banner'] = 'uploads/pet_flight/'.$filename;
        }

        if($request->hasFile('best_service_image')){
            $destination = $flight->best_service_image;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('best_service_image');
            $ext = $file->getClientOriginalExtension();
            $filename = 'best_service_image'.time().'.'.$ext;
            $file->move('uploads/pet_flight/',$filename);
            $validatedData['best_service_image'] = 'uploads/pet_flight/'.$filename;
        }
        if($request->hasFile('gallery_img_1')){
            $destination = $flight->gallery_img_1;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('gallery_img_1');
            $ext = $file->getClientOriginalExtension();
            $filename ='gallery_img_1'.time().'.'.$ext;
            $file->move('uploads/pet_flight/',$filename);
            $validatedData['gallery_img_1'] = 'uploads/pet_flight/'.$filename;
        }
        if($request->hasFile('gallery_img_2')){
            $destination = $flight->gallery_img_1;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('gallery_img_2');
            $ext = $file->getClientOriginalExtension();
            $filename ='gallery_img_2'.time().'.'.$ext;
            $file->move('uploads/pet_flight/',$filename);
            $validatedData['gallery_img_2'] = 'uploads/pet_flight/'.$filename;
        }
        if($request->hasFile('gallery_img_3')){
            $destination = $flight->gallery_img_3;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('gallery_img_3');
            $ext = $file->getClientOriginalExtension();
            $filename = 'gallery_img_3'.time().'.'.$ext;
            $file->move('uploads/pet_flight/',$filename);
            $validatedData['gallery_img_3'] = 'uploads/pet_flight/'.$filename;
        }

        if($request->hasFile('beloved_image')){
            $destination = $flight->beloved_image;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('beloved_image');
            $ext = $file->getClientOriginalExtension();
            $filename = 'beloved_image'.time().'.'.$ext;
            $file->move('uploads/pet_flight/',$filename);
            $validatedData['beloved_image'] = 'uploads/pet_flight/'.$filename;
        }

        if($request->hasFile('pet_flight_image')){
            $destination = $flight->pet_flight_image;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('pet_flight_image');
            $ext = $file->getClientOriginalExtension();
            $filename = 'pet_flight_image'.time().'.'.$ext;
            $file->move('uploads/pet_flight/',$filename);
            $validatedData['pet_flight_image'] = 'uploads/pet_flight/'.$filename;
        }

        if($request->hasFile('expert_image')){
            $destination = $flight->expert_image;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('expert_image');
            $ext = $file->getClientOriginalExtension();
            $filename = 'expert_image'.time().'.'.$ext;
            $file->move('uploads/pet_flight/',$filename);
            $validatedData['expert_image'] = 'uploads/pet_flight/'.$filename;
        }

        

        $flight->update([
            'main_banner' => $validatedData['main_banner'] ?? $flight->main_banner,
            'best_service_heading' => $validatedData['best_service_heading'],
            'best_service_sub_heading' => $validatedData['best_service_sub_heading'],
            'best_service_content' => $validatedData['best_service_content'],            
            'best_service_image' => $validatedData['best_service_image'] ?? $flight->best_service_image,
            'pet_flight_heading' => $validatedData['pet_flight_heading'],
            'pet_flight_content' => $validatedData['pet_flight_content'],            
            'pet_flight_image' => $validatedData['pet_flight_image'] ?? $flight->pet_flight_image,
            'transport_heading' => $validatedData['transport_heading'],
            'transport_content' => $validatedData['transport_content'],   
            'transport_tab_1_heading' => $validatedData['transport_tab_1_heading'],
            'transport_tab_1_content' => $validatedData['transport_tab_1_content'], 
            'transport_tab_2_heading' => $validatedData['transport_tab_2_heading'],
            'transport_tab_2_content' => $validatedData['transport_tab_2_content'],  
            'transport_tab_3_heading' => $validatedData['transport_tab_3_heading'],
            'transport_tab_3_content' => $validatedData['transport_tab_3_content'],
            'transport_tab_4_heading' => $validatedData['transport_tab_4_heading'],
            'transport_tab_4_content' => $validatedData['transport_tab_4_content'],   
            'transport_tab_5_heading' => $validatedData['transport_tab_5_heading'],
            'transport_tab_5_content' => $validatedData['transport_tab_5_content'],
            'beloved_heading' => $validatedData['beloved_heading'],
            'beloved_sub_heading' => $validatedData['beloved_sub_heading'],
            'beloved_phone' => $validatedData['beloved_phone'],
            'beloved_image' => $validatedData['beloved_image'] ?? $flight->beloved_image,
            'expert_handlers'=>$validatedData['expert_handlers'],
            'safe_travel'=>$validatedData['safe_travel'],
            'pet_friendly_travel'=>$validatedData['pet_friendly_travel'],
            'expert_heading' => $validatedData['expert_heading'],
            'expert_content' => $validatedData['expert_content'],            
            'expert_image' => $validatedData['expert_image'] ?? $flight->expert_image,
            'gallery_img_1' => $validatedData['gallery_img_1'] ?? $flight->gallery_img_1,
            'gallery_img_2' => $validatedData['gallery_img_2'] ?? $flight->gallery_img_2,
            'gallery_img_3' => $validatedData['gallery_img_3'] ?? $flight->gallery_img_3,
            'meta_title' => $validatedData['meta_title'],
            'meta_keyword' => $validatedData['meta_keyword'],
            'meta_description' => $validatedData['meta_description'],
        ]);
        return redirect('admin/pet-flight/edit/1')->with('message', 'Pet Flight Updated Successfully!');
    }
}