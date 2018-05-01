<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Input;


class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'About Us';
        $products = DB::select(DB::raw("call show_plants()"));
        return view('products.products')->with('products', $products);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        switch($request->submitbutton) {

            case 'Filter':
                
                $c1 = $request->input('water_type');
                $c2 = $request->input('light_type');
                $c3 = $request->input('life_type');
                if (is_null($c1)){
                    $c1 = '%';
                }
                if (is_null($c2)){
                    $c2 = '%';
                }
                if (is_null($c3)){
                    $c3 = '%';
                }
                $products = DB::select(DB::raw("select * from plants natural join product where (water like '$c1' and light like '$c2' and life like '$c3')"));

                return view('products.products')->with('products',$products);
            break;
            case 'Clear':
                $products = DB::select(DB::raw("select * from plants natural join product"));
                return view('products.filter')->with('products',$products);

            break;
        }

    }

    public function clear(Request $request){

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $products = DB::select(DB::raw("call select_by_product_id('$id')"));
        return view('products.show')->with('products', $products);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
