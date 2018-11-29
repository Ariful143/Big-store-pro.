<?php

namespace App\Providers;

use App\Brand;
use View;
use App\Category;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
//        View::share('name','jamal uddin');
        View::composer('front-end.includes.header',function($view){
            $view->with('categories' , Category::where('publication_status',1)->get());
        });
        View::composer('front-end.includes.footer',function($view){
            $view->with('brands' , Brand::where('publication_status',1)->get());
        });

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
