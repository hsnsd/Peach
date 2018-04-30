<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function addProduct(Request $request){
        $Name='Red Rose';
        $Photo='Rose.jpg';
        $category_id='1';
        $Unit_price='120';
       DB::insert("insert into Product values(null, '$Name', '$Photo', '$category_id', '$Unit_price')");
   
     
             
        
          }

        return "Success";
    }
}
