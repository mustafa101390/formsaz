<?php

namespace App\Models\Eform;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Form extends Model
{

    protected $fillable = [
        'name', 'form_subcategory_id', 'group', 'subgroup', 'status', 'link',
    ];


    public function form_subcategory(){
        return $this->belongsTo(FormSubcategory::class);
    }


    public function form_coloumns(){
        return $this->hasMany(FormColoumn::class , 'form_id');
    }





}
