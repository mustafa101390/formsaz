<?php

namespace App\Models\Eform;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FormSubcategory extends Model
{



    protected $fillable = [
        'name', 'status', 'link',
    ];


    public function form_category(){
        return $this->belongsTo(CompanyPlan::class);
    }



}
