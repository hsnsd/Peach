<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class SeedsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = DB::select(DB::raw("select * from seeds natural join product"));
        return view('kitchengarden.seeds')->with('products', $products);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $c1 = $request->input('ready');
        $data = array(
            'products' => DB::select(DB::raw("select * from seeds natural join product")),
            'ready' => $c1

        );
        return view('kitchengarden.filter')->with($data);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $date1 = date('Y-m-d');
        $date1 = strtotime($date1);
        $date2 = DB::select(DB::raw("call getEndDate('$id')"));
        $date2 = strtotime($date2[0]->date);
        
        if ($date2<$date1)
            $status = 'The sowing time has expired. Please wait for the next season';
        else
            $status = 'You can still plant this seed! Buy it now and get started.';
        $data = array(
            'products' =>DB::select(DB::raw("call select_seeds_by_product_id('$id')")),
            'status' => $status
        );
        
            
        return view('kitchengarden.show')->with($data);
    }

    public static function getStatus($id){
        $date1 = date('Y-m-d');
        $date1 = strtotime($date1);
        $date2 = DB::select(DB::raw("call getEndDate('$id')"));
        $date2 = strtotime($date2[0]->date);
        
        if ($date2<$date1)
            $status = 'All';
        else
            $status = 'Yes';
        return $status;
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
