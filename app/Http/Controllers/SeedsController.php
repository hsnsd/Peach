<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SeedsController extends Controller
{
    //
    
    public function index()
    {
     $products = DB::select(DB::raw("select * from seeds natural join product"));
     return view('products.seeds')->with('products', $products);
    }
   /*  public function show($id)
    {
        $products = DB::select(DB::raw("call select_by_product_id('$id')"));
        return view('products.show')->with('products', $products);
    } */

}
