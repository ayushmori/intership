<?php
// app/Http/Controllers/Admin/ColorSettingController.php
namespace App\Http\Controllers\Admin;

use App\Models\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ColorSettingController extends Controller
{
    // Show the form to edit the color settings
    public function editColors()
    {
        // Get the current color settings from the database
        $settings = Setting::first();  // Assuming there's only one settings record
        return view('admin.setting.color', compact('settings'));
    }

    // Save the updated color settings
    public function saveColors(Request $request)
    {
        // Validate the incoming color input
        $request->validate([
            'header_color' => 'required|string|regex:/^#[0-9A-Fa-f]{6}$/', // Hex color code validation
            'footer_color' => 'required|string|regex:/^#[0-9A-Fa-f]{6}$/', // Hex color code validation
        ]);

        // Get the first settings record
        $settings = Setting::first();

        // If settings exist, update them
        if ($settings) {
            $settings->header_color = $request->input('header_color');
            $settings->footer_color = $request->input('footer_color');
            $settings->save();  // Save the updated settings
        }

        // Redirect back with a success message
        return redirect()->back()->with('message', 'Color settings updated successfully!');
    }
}
