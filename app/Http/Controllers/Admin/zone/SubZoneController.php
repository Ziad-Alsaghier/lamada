<?php

namespace App\Http\Controllers\Admin\zone;

use App\Models\zone\City;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SubZoneController extends Controller
{
    protected $requestSupZone = ['city','country_id','delivery_fees','status'];
    // This Controller About All Sup Zone In Cities
 public function store_sup_zone(Request $request){
     $newZone = $request->only($this->requestSupZone);
    $request->validate([
            'city'=>['required','unique:cities','min:5'],
            'country_id'=>['required'],
            'delivery_fees'=>['required','max:10'],
        ]);
      
        $createSupZone =City::create($newZone);
        if($createSupZone){
            session()->flash('success','Sup Zone Added Successfully');
            return redirect()->back();
        }
        
  }
public function status_sup_zone($id,$type){
  $country = City::where('id',$id)->update(['status'=>$type]);
    if($country){
            session()->flash('success','Status Sup Zone Updated Successfully');
            return redirect()->back();
    }
  }
public function sup_zone_delete($id){
    $country = City::where('id', $id);
    if($country){
       $country->delete();
            session()->flash('success','Status Sup Zone Deleted Successfully');
            return redirect()->back();
    }
  }

}
