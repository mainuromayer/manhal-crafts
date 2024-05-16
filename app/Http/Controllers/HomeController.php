<?php

namespace App\Http\Controllers;

use App\Models\About;
use App\Models\Commitment;
use App\Models\Contact;
use App\Models\Header;
use App\Models\Membership;
use App\Models\Navigation;
use App\Models\SocialMedia;
use App\Models\Subscription;
use App\Models\Work;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $navigation = Navigation::get();
        $header = Header::first();

        $aboutDiv1 = About::find(1);
        $aboutDiv2 = About::find(2);

        $commitment1 = Commitment::find(1);
        $commitment2 = Commitment::find(2);
        $commitment3 = Commitment::find(3);
        $commitment4 = Commitment::find(4);

        $works = Work::get();
        $work1 = Work::find(1);
        $work2 = Work::find(2);
        $work3 = Work::find(3);

        $memberships = Membership::get();
        $contact = Contact::first();
        $social_media = SocialMedia::get();

        return view('index', compact('navigation', 'header', 'aboutDiv1', 'aboutDiv2', 'commitment1', 'commitment2', 'commitment3', 'commitment4', 'works', 'work1', 'work2', 'work3', 'memberships', 'contact', 'social_media'));
    }



    public function subscribe(Request $request){
         Subscription::create([
            'email' => $request->email,
        ]);

        return back()->with('success', 'Thank you for subscribing!');
    }
}
