<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Category;
use App\Product;
use DB;
use Image;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(){
        $categories = Category::where('publication_status',1)->get();
        $brands = Brand::where('publication_status',1)->get();
        return view('admin.product.add-product',[
            'categories'=>$categories,
            'brands'=>$brands,
        ]);
    }

    protected function productImageUpload($request){
        $productImage = $request->file('product_image');
        $imageName = $productImage->getClientOriginalName();
        $directory = 'product-images/';
        $imageUrl = $directory.$imageName;
        $image = Image::make($productImage)->resize(500, 300);
        $image-> save($imageUrl);
        return $imageUrl;
    }

    protected function saveProductBasicInfo($request,$imageUrl){
        $product = new Product();
        $product -> category_id         = $request -> category_id;
        $product -> brand_id            = $request -> brand_id;
        $product -> product_name        = $request -> product_name;
        $product -> product_price       = $request -> product_price;
        $product -> product_quantity    = $request -> product_quantity;
        $product -> short_description   = $request -> short_description;
        $product -> long_description    = $request -> long_description;
        $product -> product_image       = $imageUrl;
        $product -> publication_status  = $request -> publication_status;
        $product -> save();
    }

    protected function productInfoValidate($request){
        $this->validate($request,[
            'category_id'=>'required',
            'brand_id'=>'required',
            'product_name'=>'required|max:100',
            'product_price'=>'required|numeric',
            'product_quantity'=>'required',
            'short_description'=>'required|max:500',
            'long_description'=>'max:5000',
            'product_image'=>'required|image',

        ]);
    }

    public function saveProduct(Request $request){

        $this->productInfoValidate($request);
        $imageUrl = $this->productImageUpload($request);
        $this->saveProductBasicInfo($request,$imageUrl);
        return redirect('/product/add-product')->with('message','Product info save success');
    }

    public function manageProduct(){

        $products = DB::table('products')
            ->join('categories','products.category_id','=','categories.id')
            ->join('brands','products.brand_id','=','brands.id')
            ->select('products.*','categories.category_name','brands.brand_name')
            ->paginate('7');
//            ->get();

        return view('admin.product.manage-product',['products'=>$products]);
    }

    public function viewProduct($id){
        $product = Product::find($id);
        return view('admin.product.view-product',['product'=>$product]);
    }

    public function unpublishedProduct($id){
        $product = Product::find($id);
        $product->publication_status= 0;
        $product->save();

        return redirect('/product/manage-product')->with('message','Product info Unpublished');
    }
    public function publishedProduct($id){
        $product = Product::find($id);
        $product->publication_status= 1;
        $product->save();

        return redirect('/product/manage-product')->with('message','Product info Published');
    }

    public function editProduct($id){
//        $product = Product::find($id);
        $categories = Category::where('publication_status',1)->get();
        $brands = Brand::where('publication_status',1)->get();

        return view('admin.product.edit-product',[
            'product'=>Product::find($id),
            'categories'=>$categories,
            'brands'=>$brands
            ]);
    }
    public function updateProduct(Request $request){
        $this->validate($request,[
            'category_id'=>'required',
            'brand_id'=>'required',
            'product_name'=>'required|max:100',
            'product_price'=>'required|numeric',
            'product_quantity'=>'required',
            'short_description'=>'required|max:500',
            'long_description'=>'max:5000',
            'product_image'=>'image',

        ]);

        $productImage = $request->file('product_image');
        if($productImage){
            $product = Product::find($request->product_id);
            unlink($product->product_image);

            $imageName = $productImage->getClientOriginalName();
            $directory = 'product-images/';
            $imageUrl = $directory.$imageName;
            $image = Image::make($productImage)->resize(500, 300);
            $image-> save($imageUrl);

            $product -> category_id         = $request -> category_id;
            $product -> brand_id            = $request -> brand_id;
            $product -> product_name        = $request -> product_name;
            $product -> product_price       = $request -> product_price;
            $product -> product_quantity    = $request -> product_quantity;
            $product -> short_description   = $request -> short_description;
            $product -> long_description    = $request -> long_description;
            $product -> product_image       = $imageUrl;
            $product -> publication_status  = $request -> publication_status;
            $product -> save();

            return redirect('/product/manage-product')->with('message','Product info Updated');



        }else{
            $product = Product::find($request->product_id);

            $product -> category_id         = $request -> category_id;
            $product -> brand_id            = $request -> brand_id;
            $product -> product_name        = $request -> product_name;
            $product -> product_price       = $request -> product_price;
            $product -> product_quantity    = $request -> product_quantity;
            $product -> short_description   = $request -> short_description;
            $product -> long_description    = $request -> long_description;
//        $product -> product_image       = $imageUrl;
            $product -> publication_status  = $request -> publication_status;
            $product -> save();

            return redirect('/product/manage-product')->with('message','Product info Updated');
        }


    }

    public function deleteProduct($id){
        $product = Product::find($id);
        $product->delete();

        return redirect('/product/manage-product')->with('message','Product info deleted');
    }
}
