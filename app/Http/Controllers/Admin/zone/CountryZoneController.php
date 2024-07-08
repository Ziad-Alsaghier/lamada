<?php

namespace App\Http\Controllers\Admin\zone;

use App\Http\Controllers\Controller;
use App\Models\zone\Country;
use Illuminate\Http\Request;

class CountryZoneController extends Controller
{

    protected $requestCountrt= [
        'country',
    ]; 
  // This Controller About All Process Country Zone

  public function stor_country(Request $request){
        $request->validate([
            'country'=>['required','unique:countries','min:5'],
        ]);
        $newCountry = $request->only($this->requestCountrt);
        $createCountry =Country::create($newCountry);
        if($createCountry){
            session()->flash('success','Country Added Successfully');
            return redirect()->back();
        }

        
  }

  public function status_country($id,$type){
  $country = Country::where('id',$id)->update(['status'=>$type]);

    if($country){
            session()->flash('success','Status Country Updated Successfully');
            return redirect()->back();
    }
  }
}
