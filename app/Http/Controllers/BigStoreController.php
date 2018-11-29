<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class BigStoreController extends Controller
{
    public function index(){
//        $categories = Category::where('publication_status',1)->get();
//        $products = Product::orderBy('id','ASC')->skip(5)->take(3)->get();
        $products = Product::orderBy('id','DESC')->take(8)->get();
//        return $products;
        return view('front-end.home.home',['products'  =>$products]);
    }
    public function contactUs(){
        return view('front-end.contact.contact');
    }
    public function categoryProduct($id){
        $products = Product::where('category_id',$id)
                ->where('publication_status',1)
                ->orderBy('id','DESC')
                ->get();
        return view('front-end.category.category',['products'  =>$products]);
    }
    public function productDetails($id){
        $product = Product::find($id);
        return view('front-end.product.product-details',['product'  =>$product]);
    }
    public function brandProduct($id){
        $products = Product::where('brand_id',$id)
            ->where('publication_status',1)
            ->orderBy('id','DESC')
            ->get();
        return view('front-end.category.category',['products'  =>$products]);
    }
    public function singleProduct(){
        return view('front-end.category.single-product');
    }
}
