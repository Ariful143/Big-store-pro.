<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index(){
//        return 'Hello World form controller';
        $name = 'Jamal Uddin';
        $age = 25;
//        return view('demo',compact('name','age'));
//        return view('demo')
//            ->with('name',$name)
//            ->with('a',$age);
        return view('demo',[
            'name'=>$name,
            'age'=>$age
        ]);
        return view('demo');
//        return view('admin.home.home');
    }
    public function newOne(){
       return 'hello new one';
    }
    public function newTwo(){
        return 'hello new two';
    }
}
