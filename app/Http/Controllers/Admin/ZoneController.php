<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\zone\Country;
use Illuminate\Http\Request;

class ZoneController extends Controller
{
    // This Is About All Zoone For Country 
    public function index (){
        $countries = Country::get(); 
        return view('admin-views.zone.zone-list',compact('countries'));
    }
}
