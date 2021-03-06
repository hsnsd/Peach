<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\User;


class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $user_id = auth()->user()->id;
        $user = User::find($user_id);
        $products = DB::select(DB::raw("call show_plants()"));
        
        $data = array(
            'products' => DB::select(DB::raw("call show_plants()")),
            'user_id' => $user->id
        );
        return view('admin')->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        

        $this->validate($request, [
            'product_id' => 'integer|min:0',
            'name' => 'required',
            'cover_image' => 'image|nullable|max:1999',
            'category_id' => 'integer|min:0',
            'Unit_price' => 'required',
            'height' => 'integer|min:0',
            'width' => 'integer|min:0',
            'light' => 'required',
            'water' => 'required',
            'plant_type' => 'required',
            'life' => 'required'

        ]);
        


        // Handle File Upload
        if($request->hasFile('cover_image')){
            // Get filename with the extension
            $filenameWithExt = $request->file('cover_image')->getClientOriginalName();
            // Get just filename
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            // Get just ext
            $extension = $request->file('cover_image')->getClientOriginalExtension();
            // Filename to store
            $fileNameToStore= $filename.'_'.time().'.'.$extension;
            // Upload Image
            $path = $request->file('cover_image')->storeAs('/', $fileNameToStore);
        } else {
            $fileNameToStore = 'noimage.jpg';
        }

        $name = $request->input('name');
        $category_id = $request->input('category_id');
        $Unit_price = $request->input('Unit_price');
        $height = $request->input('height');
        $width = $request->input('width');
        $light = $request->input('light');
        if ($light == 0){
            $light = 'Full';
        }
        elseif($light == 1){
            $light = 'Partial';
        }
        else{
            $light = 'Nolight';
        }
        $water = $request->input('water');
        if ($water == 0){
            $water = '1 to 2 days';
        }
        elseif($water == 1){
            $water = '2 to 3 days';
        }
        else{
            $water = '6 to 7 days';
        }
        $plant_type = $request->input('plant_type');
        if ($plant_type == 0){
            $plant_type = 'flowering plant';
        }
        elseif($plant_type == 1){
            $plant_type = 'leafy plant';
        }
        else{
            $plant_type = 'tree';
        }
        $life = $request->input('life');
        if ($life == 0){
            $life = 'seasonal';
        }
        elseif($life == 1){
            $life = 'annual';
        }
        else{
            $life = 'evergreen';
        }
        
        // Create Post
        //DB::select(DB::raw("INSERT into product (product_id, Name, Photo, category_id, Unit_price)
        //values ('$product_id', '$name', '$fileNameToStore', '$category_id', '$Unit_price' )"));

        //DB::select(DB::raw("INSERT into plants (product_id, height,width,light,water,plant_type,life )
        //values ('$product_id', '$height', '$width', '$light', '$water', '$plant_type', '$life')"));
        DB::select(DB::raw("call addProduct('$name', '$fileNameToStore','$category_id','$Unit_price')"));
        $val = DB::select(DB::raw("call getProductCount()"));
        $product_id = $val[0]->count;
        DB::select(DB::raw("call addPlant('$product_id', '$height', '$width', '$light', '$water', '$plant_type', '$life')"));
        return redirect('/admin')->with('success', 'Post Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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

        DB::select(DB::raw("call deletePlant('$id')"));
        //DB::select(DB::raw("call deleteProduct('$id')"));

        return redirect('/admin')->with('success', 'Product Removed');
    }
}
