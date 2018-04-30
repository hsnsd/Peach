<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class PagesController extends Controller
{
    public function index(){
        $title = 'Welcome To Peach Blossom!';
        //return view('pages.index', compact('title'));
        return view('pages.index')->with('title', $title);
    }

    public function products(){
        $title = 'About Us';
        $products = DB::select('SELECT * from products');
        return view('pages.products')->with('products', $products);
    }

    public function services(){
        $data = array(
            'title' => 'Services',
            'services' => ['Web Design', 'Programming', 'SEO']
        );
        return view('pages.services')->with($data);
    }
}
