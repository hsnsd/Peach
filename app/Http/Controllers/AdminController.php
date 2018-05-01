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

        return view('admin')->with('products', $products);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');

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
        $product_id = $request->input('product_id');

        // Handle File Upload
        if($request->hasFile('cover_image')){
            
            // Get just ext
            $extension = $request->file('cover_image')->getClientOriginalExtension();
            // Filename to store
            $fileNameToStore= $product_id.'.'.$extension;
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
        $water = $request->input('water');
        $plant_type = $request->input('plant_type');
        $life = $request->input('life');
        // Create Post
        DB::select(DB::raw("INSERT into product (product_id, Name, Photo, category_id, Unit_price)
        values ('$product_id', '$name', '$fileNameToStore', '$category_id', '$Unit_price' )"));

        DB::select(DB::raw("INSERT into plants (product_id, height,width,light,water,plant_type,life )
        values ('$product_id', '$height', '$width', '$light', '$water', '$plant_type', '$life')"));

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
        
        DB::select(DB::raw("DELETE from plants where product_id = '$id'"));
        DB::select(DB::raw("DELETE from product where product_id = '$id'"));

        return redirect('/admin')->with('success', 'Product Removed');
    }
}
