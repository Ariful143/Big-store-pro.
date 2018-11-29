@extends('admin.master')

@section('body')
    <style>
        .clearfix:after {
            content: "";
            display: table;
            clear: both;
        }

        header {
            padding: 10px 0;
            margin-bottom: 30px;
        }

        #logo {
            text-align: center;
            margin-bottom: 10px;
        }

        #logo img {
            width: 90px;
        }

        h1 {
            border-top: 1px solid  #5D6975;
            border-bottom: 1px solid  #5D6975;
            color: #5D6975;
            font-size: 2.4em;
            line-height: 1.4em;
            font-weight: normal;
            text-align: center;
            margin: 0 0 20px 0;
            background: url(dimension.png);
        }

        #project {
            float: left;
        }

        #project span {
            color: #5D6975;
            text-align: right;
            width: 52px;
            margin-right: 10px;
            display: inline-block;
            font-size: 0.8em;
        }

        #company {
            float: right;
            text-align: right;
        }

        #project div,
        #company div {
            white-space: nowrap;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px;
        }

        table tr:nth-child(2n-1) td {
            background: #F5F5F5;
        }

        table th,
        table td {
            text-align: center;
        }

        table th {
            padding: 5px 20px;
            color: #5D6975;
            border-bottom: 1px solid #C1CED9;
            white-space: nowrap;
            font-weight: normal;
        }

        table .service,
        table .desc {
            text-align: left;
        }

        table td {
            padding: 20px;
            text-align: right;
        }

        table td.service,
        table td.desc {
            vertical-align: top;
        }

        table td.unit,
        table td.qty,
        table td.total {
            font-size: 1.2em;
        }

        table td.grand {
            border-top: 1px solid #5D6975;;
        }

        #notices .notice {
            color: #5D6975;
            font-size: 1.2em;
        }
    </style>
    <div class="row">
        <div class="col-md-12">
            <header class="clearfix">
                <div id="logo">
                    <img src="logo.png">
                </div>
                <h1>INVOICE 3-2-1</h1>
                <div id="company" class="clearfix col-md-4">
                    <h4 class="text-primary">Company Info</h4>
                    <div>Company Name</div>
                    <div>455 Foggy Heights,<br /> AZ 85004, US</div>
                    <div>(602) 519-0450</div>
                    <div><a href="mailto:company@example.com">company@example.com</a></div>
                </div>
                <div id="project" class="col-md-4">
                    <h4 class="text-primary">Billing Info</h4>
                    <div>{{$customer->first_name.' '.$customer->last_name}}</div>
                    <div>{{$customer->email_address}}</div>
                    <div>{{$customer->phone_number}}</div>
                    <div>{{$customer->address}}</div>
                </div>
                <div id="project" class="col-md-4">
                    <h4 class="text-primary">Shipping Info</h4>
                    <div>{{$shipping->full_name}}</div>
                    <div>{{$shipping->email_address}}</div>
                    <div>{{$shipping->phone_number}}</div>
                    <div>{{$shipping->address}}</div>
                </div>
            </header>
            <main>
                <table>
                    <thead>
                    <tr>
                        <th class="service">Sl No</th>
                        <th class="desc">Product Name</th>
                        <th>PRICE</th>
                        <th>QTY</th>
                        <th>TOTAL</th>
                    </tr>
                    </thead>
                    <tbody>
                    @php($i=1)
                    @php($sum=0)
                    @foreach($products as $product)
                    <tr>
                        <td class="service">{{$i++}}</td>
                        <td class="desc">{{$product->product_name}}</td>
                        <td class="unit">Tk. {{$product->product_price}}</td>
                        <td class="qty">{{$product->product_quantity}}</td>
                        <td class="total">Tk. {{$total = $product->product_price*$product->product_quantity}}</td>
                    </tr>
                    @php($sum = $sum+$total)
                    @endforeach
                    <tr>
                        <td colspan="4" class="grand total">GRAND TOTAL</td>
                        <td class="grand total">Tk. {{$sum}}</td>
                    </tr>
                    </tbody>
                </table>
                <div id="notices">
                    <div>NOTICE:</div>
                    <div class="notice">A finance charge of 1.5% will be made on unpaid balances after 30 days.</div>
                </div>
            </main>
        </div>
    </div>
@endsection