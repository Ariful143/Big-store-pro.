@extends('front-end.master')

@section('title')
    Home
@endsection

@section('body')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <br />
                <div class="well text-success text-center">
                    Welcome Dear <strong>{{Session::get('customerName')}} </strong>, You have to give us product shipping info to complete your valuable order.If your billing info and shipping info are same then just press on Save Shipping Info button.
                </div>
            </div>
        </div>
        <div class="row">
            <br />
            <div class="col-md-6 col-md-offset-3 well">
                <br />
                <h3 class="text-center text-success">Shipping Form</h3>
                <hr />
                {{Form::open(['route'=>'new-shipping','method'=>'POST','class'=>'form-horizontal'])}}
                <div class="form-group">
                    <label class="col-md-3">Full Name</label>
                    <div class="col-md-9">
                        <input type="text" value="{{$customer->first_name.' '.$customer->last_name}}" name="full_name" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Email Address</label>
                    <div class="col-md-9">
                        <input type="email" value="{{$customer->email_address}}" name="email_address" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Phone Number</label>
                    <div class="col-md-9">
                        <input type="number" value="{{$customer->phone_number}}" name="phone_number" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Address</label>
                    <div class="col-md-9">
                        <textarea class="form-control" rows="10" name="address">{{$customer->address}}</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-md-offset-3">
                        <input type="submit" name="btn" class="btn btn-success btn-block" value="Save Shipping Info"/>
                    </div>
                </div>
                {{Form::close()}}
            </div>
        </div>
    </div>
@endsection