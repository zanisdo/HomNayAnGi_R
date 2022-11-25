<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer_Infor extends Model
{
    use HasFactory;

    protected $table = "Customer_Infor";
    protected $primarykey = "account_id";

    public function Customer_Infor() {
        return $this->belongsTo(User::class);
    }
}
