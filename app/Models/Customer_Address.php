<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer_Address extends Model
{
    use HasFactory;
    protected $table = "Customer_Address";
    protected $primarykey = "address_id";


}
