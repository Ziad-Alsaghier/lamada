<?php

namespace App\Models\zone;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;
     protected $fillable = [
     'country',
     'status'
     ];

     public function cities(){
     return $this->hasMany(City::class);
     }

}
