@extends('admin.master')

@section('body')

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="text-success text-center">Add Product Form</h4>
                </div>
                <div class="panel-body">
                    <h3 class="text-success">{{Session::get('message')}}</h3>
                    {{Form::open(['route'=>'new-product','method'=>'POST','class'=>'form-horizontal','enctype'=>'multipart/form-data'])}}
                        <div class="form-group">
                            <label class="control-label col-md-4">Category Name</label>
                            <div class="col-md-8">
                                <select class="form-control" name="category_id">
                                    <option value="">--- Select Category Name ---</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->category_name}}</option>
                                    @endforeach
                                </select>
                                <span class="text-danger">{{$errors->has('category_id') ? $errors->first('category_id'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Brand Name</label>
                            <div class="col-md-8">
                                <select class="form-control" name="brand_id">
                                    <option value="">--- Select Brand Name ---</option>
                                    @foreach($brands as $brand)
                                        <option value="{{$brand->id}}">{{$brand->brand_name}}</option>
                                    @endforeach
                                </select>
                                <span class="text-danger">{{$errors->has('brand_id') ? $errors->first('brand_id'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Product Name</label>
                            <div class="col-md-8">
                                <input type="text" name="product_name" class="form-control" />
                                <span class="text-danger">{{$errors->has('product_name') ? $errors->first('product_name'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Product Price</label>
                            <div class="col-md-8">
                                <input type="text" name="product_price" class="form-control" />
                                <span class="text-danger">{{$errors->has('product_price')? $errors->first('product_price'):''}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Product Quantity</label>
                            <div class="col-md-8">
                                <input type="number" name="product_quantity" class="form-control" />
                                <span class="text-danger">{{$errors->has('product_quantity') ? $errors->first('product_quantity'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Short Description</label>
                            <div class="col-md-8">
                                <textarea name="short_description" class="form-control"></textarea>
                                <span class="text-danger">{{$errors->has('short_description') ? $errors->first('short_description'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Long Description</label>
                            <div class="col-md-8">
                                <textarea name="long_description" id="editor" class="form-control"></textarea>
                                <span class="text-danger">{{$errors->has('long_description') ? $errors->first('long_description'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Product Image</label>
                            <div class="col-md-8">
                                <input type="file" name="product_image" accept="image/*"/>
                                <span class="text-danger">{{$errors->has('product_image') ? $errors->first('product_image'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Publication Status</label>
                            <div class="col-md-8 radio">
                                <label><input type="radio" checked name="publication_status" value="1" />Published</label>
                                <label><input type="radio" name="publication_status" value="0" />Unpublished</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-4">
                                <input type="submit" name="btn" class="btn btn-success btn-block" value="Save Product Info" />
                            </div>
                        </div>
                    {{Form::close()}}
                </div>
            </div>
        </div>
    </div>

@endsection