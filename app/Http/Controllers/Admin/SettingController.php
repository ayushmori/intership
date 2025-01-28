<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function index()
    {
        $setting = Setting::first();
        return view('admin.setting.index',compact('setting'));
    }
    // public function store(Request $request)
    // {
    //     $setting = Setting::first();
    //     if($setting)
    //     {
    //         $setting->update([
    //             'website_name' => $request->website_name,
    //             'website_url' => $request->website_url,
    //             'page_title' => $request->page_title,
    //             'meta_keyword' => $request->meta_keyword,
    //             'meta_description' => $request->meta_description,
    //             'address' => $request->address,
    //             'phone1' => $request->phone1,
    //             'phone2' => $request->phone2,
    //             'email1' => $request->email1,
    //             'email2' => $request->email2,
    //             'facebook' => $request->facebook,
    //             'twitter' => $request->twitter,
    //             'instagram' => $request->instagram,
    //             'youtube' => $request->youtube
    //         ]);

    //         return redirect()->back()->with('message','Settings Saved');

    //     }
    //     else
    //     {
    //         Setting::create([
    //             'website_name' => $request->website_name,
    //             'website_url' => $request->website_url,
    //             'page_title' => $request->page_title,
    //             'meta_keyword' => $request->meta_keyword,
    //             'meta_description' => $request->meta_description,
    //             'address' => $request->address,
    //             'phone1' => $request->phone1,
    //             'phone2' => $request->phone2,
    //             'email1' => $request->email1,
    //             'email2' => $request->email2,
    //             'facebook' => $request->facebook,
    //             'twitter' => $request->twitter,
    //             'instagram' => $request->instagram,
    //             'youtube' => $request->youtube
    //         ]);

    //         return redirect()->back()->with('message','Settings Saved');
    //     }
    // }

//     public function store(Request $request)
// {
//     // Retrieve the first setting if it exists
//     $setting = Setting::first();

//     // Handle file upload if a new logo is provided
//     if ($request->hasFile('brand_logo')) {
//         $file = $request->file('brand_logo');
//         $filename = time() . '_' . $file->getClientOriginalName();
//         $file->move(public_path('uploads/brand'), $filename);

//         // Set the new brand logo path
//         $brand_logo = 'uploads/brand/' . $filename;

//         // Delete the old logo file if exists
//         if ($setting && $setting->brand_logo) {
//             // Check if the file exists before deleting
//             $oldFilePath = public_path($setting->brand_logo);
//             if (file_exists($oldFilePath)) {
//                 unlink($oldFilePath);
//             }
//         }
//     } else {
//         // If no new file is uploaded, keep the old logo or set it to null
//         $brand_logo = $setting->brand_logo ?? null;
//     }

//     // Prepare the data to save
//     $data = [
//         'website_name' => $request->website_name,
//         'website_url' => $request->website_url,
//         'page_title' => $request->page_title,
//         'meta_keyword' => $request->meta_keyword,
//         'meta_description' => $request->meta_description,
//         'address' => $request->address,
//         'phone1' => $request->phone1,
//         'phone2' => $request->phone2,
//         'email1' => $request->email1,
//         'email2' => $request->email2,
//         'facebook' => $request->facebook,
//         'twitter' => $request->twitter,
//         'instagram' => $request->instagram,
//         'youtube' => $request->youtube,
//         'brand_logo' => $brand_logo
//     ];

//     // If settings exist, update them. Otherwise, create new settings.
//     if ($setting) {
//         $setting->update($data);
//     } else {
//         Setting::create($data);
//     }

//     // Redirect with a success message
//     return redirect()->back()->with('message', 'Settings Saved');
// }


// public function store(Request $request)
// {
//     $request->validate([
//         'website_name' => 'required|string|max:255',
//         'brand_logo' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
//     ]);

//     $setting = Setting::first();

//     // Handle file upload
//     if ($request->hasFile('brand_logo')) {
//         $file = $request->file('brand_logo');
//         $filename = time() . '_' . $file->getClientOriginalName();
//         $file->move(public_path('uploads/brand-logo'), $filename);

//         $brand_logo = 'uploads/brand-logo/' . $filename;

//         // Delete old logo if it exists
//         if ($setting && $setting->brand_logo && file_exists(public_path($setting->brand_logo))) {
//             unlink(public_path($setting->brand_logo));
//         }
//     } else {
//         $brand_logo = $setting->brand_logo ?? null;
//     }

//     $data = [
//         'website_name' => $request->website_name,
//         'website_url' => $request->website_url,
//         'page_title' => $request->page_title,
//         'meta_keyword' => $request->meta_keyword,
//         'meta_description' => $request->meta_description,
//         'address' => $request->address,
//         'phone1' => $request->phone1,
//         'phone2' => $request->phone2,
//         'email1' => $request->email1,
//         'email2' => $request->email2,
//         'facebook' => $request->facebook,
//         'twitter' => $request->twitter,
//         'instagram' => $request->instagram,
//         'youtube' => $request->youtube,
//         'brand_logo' => $brand_logo
//     ];

//     if ($setting) {
//         $setting->update($data);
//     } else {
//         Setting::create($data);
//     }

//     return redirect()->back()->with('message', 'Settings Saved');
// }

// public function store(Request $request)
// {
//     $request->validate([
//         'website_name' => 'required|string|max:255',
//         'brand_logo' => 'nullable'
//     ]);

//     $setting = Setting::first();

//     if ($request->hasFile('brand_logo')) {
//         $file = $request->file('brand_logo');
//         $filename = time() . '_' . $file->getClientOriginalName();
//         $file->move(public_path('uploads/brand-logo'), $filename);

//         $brand_logo = 'uploads/brand-logo/' . $filename;

//         if ($setting && $setting->brand_logo && file_exists(public_path($setting->brand_logo))) {
//             unlink(public_path($setting->brand_logo));
//         }
//     } else {
//         $brand_logo = $setting->brand_logo ?? null;
//     }

//     $data = [
//         'website_name' => $request->website_name,
//         'brand_logo' => $brand_logo,
//         'website_url' => $request->website_url,
//         'page_title' => $request->page_title,
//         'meta_keyword' => $request->meta_keyword,
//         'meta_description' => $request->meta_description,
//         'address' => $request->address,
//         'phone1' => $request->phone1,
//         'phone2' => $request->phone2,
//         'email1' => $request->email1,
//         'email2' => $request->email2,
//         'facebook' => $request->facebook,
//         'twitter' => $request->twitter,
//         'instagram' => $request->instagram,
//         'youtube' => $request->youtube,

//     ];

//     try {
//         if ($setting) {
//             $setting->update($data);
//         } else {
//             Setting::create($data);
//         }
//     } catch (\Exception $e) {
//         dd($e->getMessage());  // Show any errors
//     }

//     return redirect()->back()->with('message', 'Settings Saved');
// }

public function store(Request $request)
{
    $request->validate([
        'website_name' => 'required|string|max:255',
        'brand_logo' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
    ]);

    // Retrieve the first Setting instance or create a new one
    $setting = Setting::firstOrNew();

    // Handle file upload if brand_logo is provided
    if ($request->hasFile('brand_logo')) {
        $file = $request->file('brand_logo');
        $filename = time() . '_' . $file->getClientOriginalName();
        $file->move(public_path('uploads/brand-logo'), $filename);
        $setting->brand_logo = 'uploads/brand-logo/' . $filename;
    }

    // Save other form data
    $setting->website_name = $request->website_name;
    $setting->website_url = $request->website_url;
    $setting->page_title = $request->page_title;
    $setting->meta_keyword = $request->meta_keyword;
    $setting->meta_description = $request->meta_description;
    $setting->address = $request->address;
    $setting->phone1 = $request->phone1;
    $setting->phone2 = $request->phone2;
    $setting->email1 = $request->email1;
    $setting->email2 = $request->email2;
    $setting->facebook = $request->facebook;
    $setting->twitter = $request->twitter;
    $setting->instagram = $request->instagram;
    $setting->youtube = $request->youtube;

    // Save settings to the database
    $setting->save();

    return redirect()->back()->with('message', 'Settings Saved');
}


}
