<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Food_Category extends Model
{
    use HasFactory;

    protected $table = "Food_Category";
    protected $primarykey = 'category_id';

    public function Food_Category(){
        return $this->hasMany(Food::class);
    }
}
