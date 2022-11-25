<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer_Fav_Food extends Model
{
    use HasFactory;

    protected $table = "Customer_Fav_Food";
    protected $primarykey = "fav_id";


}
