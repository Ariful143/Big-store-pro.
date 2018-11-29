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
                    You have to login to complete your valuable order. If you are not register then please register first....
                </div>
            </div>
        </div>
        <h3 class="text-danger text-center">{{Session::get('message')}}</h3>
        <div class="row">
            <br />
            <div class="col-md-6 well">
                <br />
                <h3 class="text-center text-success">Registration Form</h3>
                <hr />
                {{Form::open(['route'=>'new-customer','method'=>'POST','class'=>'form-horizontal'])}}
                <div class="form-group">
                    <label class="col-md-3">First Name</label>
                    <div class="col-md-9">
                        <input type="text" name="first_name" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Last Name</label>
                    <div class="col-md-9">
                        <input type="text" name="last_name" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Email Address</label>
                    <div class="col-md-9">
                        <input type="email" name="email_address" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Password</label>
                    <div class="col-md-9">
                        <input type="password" name="password" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Phone Number</label>
                    <div class="col-md-9">
                        <input type="number" name="phone_number" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Address</label>
                    <div class="col-md-9">
                        <textarea class="form-control" rows="10" name="address"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-md-offset-3">
                        <input type="submit" name="btn" class="btn btn-success btn-block" value="Registration"/>
                    </div>
                </div>
                {{Form::close()}}
            </div>
            <div class="col-md-6 well">
                <br />
                <h3 class="text-center text-success">Login Form</h3>
                <hr />
                {{Form::open(['route'=>'customer-login','method'=>'POST','class'=>'form-horizontal'])}}
                <div class="form-group">
                    <label class="col-md-3">Email Address</label>
                    <div class="col-md-9">
                        <input type="email" name="email_address" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">Password</label>
                    <div class="col-md-9">
                        <input type="password" name="password" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-md-offset-3">
                        <input type="submit" name="btn" class="btn btn-success btn-block" value="LogIn"/>
                    </div>
                </div>
                {{Form::close()}}
            </div>
        </div>
    </div>
@endsection