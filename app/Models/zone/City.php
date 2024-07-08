<?php

namespace App\Models\zone;

use App\Models\zone\Country;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class City extends Model
{
    use HasFactory;

    protected $fillable = [
        'city',
        'country_id',
        'delivery_fees',
        'status'
    ];

    public function country()
    {
    return $this->belongsTo(Country::class);
    }
}
