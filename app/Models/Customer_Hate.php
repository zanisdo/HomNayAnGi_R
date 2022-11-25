<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer_Hate extends Model
{
    use HasFactory;

    protected $table = "Customer_Hate";
    protected $primarykey = "hate_id";

}
