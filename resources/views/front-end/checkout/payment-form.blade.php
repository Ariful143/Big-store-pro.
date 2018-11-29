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
                    Dear <strong>{{Session::get('customerName')}} </strong>, You have to give us product Payment info to complete your valuable order.
                </div>
            </div>
        </div>
        <div class="row">
            <br />
            <div class="col-md-6 col-md-offset-3 well">
                <br />
                <h3 class="text-center text-success">Payment Form</h3>
                <hr />
                {{Form::open(['route'=>'new-order','method'=>'POST','class'=>'form-horizontal'])}}
                <table class="table table-bordered">
                    <tr>
                        <th>Cash on Delivery</th>
                        <td><input type="radio" name="payment_type" value="Cash"/></td>
                    </tr>
                    <tr>
                        <th>Paypal</th>
                        <td><input type="radio" name="payment_type" value="Paypal"/></td>
                    </tr>
                    <tr>
                        <th>Bkash</th>
                        <td><input type="radio" name="payment_type" value="Bkash"/></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td><input type="submit" name="btn" class="btn btn-success btn-block" value="Confirm Order"/></td>
                    </tr>
                </table>
                {{Form::close()}}
            </div>
        </div>
    </div>
@endsection