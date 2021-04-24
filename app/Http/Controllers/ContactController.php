<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;

class ContactController extends Controller
{
    function index(){
        return view('contact_us');
    }
    function contactSubmit(Request $request){
        
        Mail::send('emails.contactmail', [
            'name'      => $request->name,
            'email'     => $request->email,
            'mobile'    => $request->mobile,
            'type'      => $request->type,
            'country'   => $request->country,
            'msj'       => $request->msj
        ],function($mail) use($request){
            $mail->from(env('MAIL_FROM_ADDRESS'), $request->name);
            $mail->to('info@dr-loop.com')->subject('Contact Us Message');
        });
        return redirect()->back()->with('success-message', "Message Sent");
    }
}