<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ZoneController extends Controller
{
    // This Is About All Location Sup Zone

    public function get_sup_zone(Request $request){
        return 'connection Success';     
        $user_id = (bool)auth('api')->user() ? auth('api')->user()->id : $request['guest_id'];
             $user_type = (bool)auth('api')->user() ? 0 : 1;
    }
}
