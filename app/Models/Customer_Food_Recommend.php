<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer_Food_Recommend extends Model
{
    use HasFactory;

    protected $table = "Customer_Food_Recommend";
    protected $primarykey = "recommend_id";


}
