<?php

    Route::get('/',[
        'uses'  => 'BigStoreController@index',
        'as'    => '/'
    ]);

    Route::get('/contac-us',[
        'uses'  => 'BigStoreController@contactUs',
        'as'    => 'contact'
    ]);

    Route::get('/category-product/{id}',[
        'uses'  => 'BigStoreController@categoryProduct',
        'as'    => 'category-product'
    ]);

    Route::get('/product-details/{id}',[
        'uses'  => 'BigStoreController@productDetails',
        'as'    => 'product-details'
    ]);

    Route::post('/add-to-cart',[
        'uses'  => 'CartController@addToCart',
        'as'    => 'add-to-cart'
    ]);

    Route::get('/show-cart',[
        'uses'  => 'CartController@showCart',
        'as'    => 'show-cart'
    ]);
    Route::get('/delete-cart-product/{id}',[
        'uses'  => 'CartController@deleteCartProduct',
        'as'    => 'delete-cart-product'
    ]);
    Route::post('/update-cart',[
        'uses'  => 'CartController@updateCartProduct',
        'as'    => 'update-cart'
    ]);

    Route::get('/checkout',[
        'uses'  => 'CheckoutController@index',
        'as'    => 'checkout'
    ]);

Route::post('/checkout/customer-registration',[
    'uses'  => 'CheckoutController@saveCustomerInfo',
    'as'    => 'new-customer'
]);
//Route::get('/checkout/show-shipping',[
//    'uses'  => 'CheckoutController@showShippingInfo',
//    'as'    => 'show-shipping'
//]);

Route::post('/checkout/save-shipping',[
    'uses'  => 'CheckoutController@saveShippingInfo',
    'as'    => 'new-shipping'
]);

//Route::get('/checkout/show-payment',[
//    'uses'  => 'CheckoutController@showPaymentInfo',
//    'as'    => 'show-payment',
//    'middleware'    => 'bitm'
//]);



Route::group(['middleware' => 'bitm'], function () {
    Route::get('/checkout/show-shipping',[
        'uses'  => 'CheckoutController@showShippingInfo',
        'as'    => 'show-shipping'
    ]);
    Route::get('/checkout/show-payment',[
        'uses'  => 'CheckoutController@showPaymentInfo',
        'as'    => 'show-payment'
    ]);

});




Route::post('/checkout/new-order',[
    'uses'  => 'CheckoutController@saveOrderInfo',
    'as'    => 'new-order'
]);

Route::get('/checkout/complete-order',[
    'uses'  => 'CheckoutController@completeOrderInfo',
    'as'    => 'complete-order'
]);

Route::get('/customer-logout',[
    'uses'  => 'CheckoutController@customerLogout',
    'as'    => 'customer-logout'
]);

Route::post('/customer-login',[
    'uses'  => 'CheckoutController@customerLogin',
    'as'    => 'customer-login'
]);

Route::get('/order/manage-order',[
    'uses'  => 'OrderController@manageOrder',
    'as'    => 'manage-order'
]);

Route::get('/order/view-order-detail/{id}',[
    'uses'  => 'OrderController@viewOrderDetail',
    'as'    => 'view-order-detail'
]);

Route::get('/order/view-order-invoice/{id}',[
    'uses'  => 'OrderController@viewOrderInvoice',
    'as'    => 'view-order-invoice'
]);

Route::get('/order/download-invoice/{id}',[
    'uses'  => 'OrderController@downloadOrderInvoice',
    'as'    => 'download-invoice'
]);




    Route::get('/brand-product/{id}',[
        'uses'  => 'BigStoreController@brandProduct',
        'as'    => 'brand-product'
    ]);

    Route::get('/single-product',[
        'uses'  => 'BigStoreController@singleProduct',
        'as'    => 'single'
    ]);

    Route::get('/category/add-category',[
        'uses'  => 'CategoryController@index',
        'as'    => 'add-category'
    ]);

    Route::get('/category/manage-category',[
        'uses'  => 'CategoryController@manageCategory',
        'as'    => 'manage-category'
    ]);

    Route::post('/category/save-category',[
        'uses'  => 'CategoryController@saveCategory',
        'as'    => 'new-category'
    ]);

    Route::get('/category/unpublished/{id}',[
            'uses'  => 'CategoryController@unpublishedCategory',
            'as'    => 'unpublished-category'
    ]);

    Route::get('/category/published/{id}',[
            'uses'  => 'CategoryController@publishedCategory',
            'as'    => 'published-category'
    ]);

    Route::get('/category/edit/{id}',[
            'uses'  => 'CategoryController@editCategory',
            'as'    => 'edit-category'
    ]);

    Route::post('/category/update',[
        'uses'  => 'CategoryController@updateCategory',
        'as'    => 'update-category'
    ]);

    Route::get('/category/delete/{id}',[
        'uses'  => 'CategoryController@deleteCategory',
        'as'    => 'delete-category'
    ]);

    Route::get('/brand/add-brand',[
        'uses'=>'BrandController@index',
        'as'  =>'add-brand'
    ]);

    Route::post('/brand/save-brand',[
        'uses'=>'BrandController@saveBrand',
        'as'  =>'save-brand'
    ]);

    Route::get('/brand/manage-brand',[
        'uses'=>'BrandController@manageBrand',
        'as'  =>'manage-brand'
    ]);

    Route::get('/brand/unpublished-brand/{id}',[
        'uses'=>'BrandController@unpublishedBrand',
        'as'  =>'unpublished-brand'
    ]);

    Route::get('/brand/published-brand/{id}',[
        'uses'=>'BrandController@publishedBrand',
        'as'  =>'published-brand'
    ]);

    Route::get('/brand/edit-brand/{id}',[
        'uses'=>'BrandController@editBrand',
        'as'  =>'edit-brand'
    ]);

    Route::post('/brand/update-brand',[
        'uses'=>'BrandController@updateBrand',
        'as'  =>'update-brand'
    ]);

    Route::get('/brand/delete-brand/{id}',[
        'uses'=>'BrandController@deleteBrand',
        'as'  =>'delete-brand'
    ]);

    Route::get('/product/add-product',[
        'uses'=>'ProductController@index',
        'as'  =>'add-product'
    ]);

    Route::post('/product/save',[
        'uses'=>'ProductController@saveProduct',
        'as'  =>'new-product'
    ]);

    Route::get('/product/manage-product',[
        'uses'=>'ProductController@manageProduct',
        'as'  =>'manage-product'
    ]);

    Route::get('/product/view/{id}',[
        'uses'=>'ProductController@viewProduct',
        'as'  =>'view-product'
    ]);

    Route::get('/product/unpublished/{id}',[
        'uses'  => 'ProductController@unpublishedProduct',
        'as'    => 'unpublished-product'
    ]);

    Route::get('/product/published/{id}',[
        'uses'  => 'ProductController@publishedProduct',
        'as'    => 'published-product'
    ]);

    Route::get('/product/edit-product/{id}',[
        'uses'=>'ProductController@editProduct',
        'as'  =>'edit-product'
    ]);

    Route::post('/product/update-product',[
        'uses'=>'ProductController@updateProduct',
        'as'  =>'update-product'
    ]);

    Route::get('/product/delete/{id}',[
        'uses'  => 'ProductController@deleteProduct',
        'as'    => 'delete-product'
    ]);

    Auth::routes();

    Route::get('/home', 'HomeController@index')->name('home');
