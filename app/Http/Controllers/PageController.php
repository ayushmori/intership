<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use Illuminate\Support\Facades\Mail;

class PageController extends Controller
{
    public function about()
    {
        return view('frontend.pages.about');
    }

    // Show the Contact Us page
    public function contact()
    {
        return view('frontend.pages.contact');
    }

    // Handle the contact form submission
    public function submitContactForm(Request $request)
{
    $request->validate([
        'name' => 'required|max:255',
        'lastname' => 'required|max:250',
        'email' => 'required|email',
        'phone' => 'required|min:10',
        'message' => 'required|min:10',
    ]);

    // Store the contact form data in the database
    Contact::create([
        'name' => $request->name,
        'lastname' => $request->lastname,
        'email' => $request->email,
        'phone' => $request->phone,
        'message' => $request->message,
    ]);

    // Send an email (optional)
    // Send the message to the admin

    return redirect()->route('contact')->with('success', 'Your message has been sent!');
}
}
