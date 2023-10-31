<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>الزعزعي تكنلوجي للتجهيزات البنكية والامنية </title>
    <meta content='الزعزعي تكنلوجي للتجهيزات البنكية والامنية خدماتنا هي بيع و قطع غيار و صيانة لالات عد النقود في اليمن' name='description' />
    <!-- Metadata for Open Graph protocol. See http://ogp.me/. -->
  
    <meta content='الزعزعي تكنلوجي للتجهيزات البنكية والامنية' property='og:title' />
    <meta content='http://smart4mn.com/' property='og:url' />
    <meta content='الزعزعي تكنلوجي للتجهيزات البنكية والامنية خدماتنا هي بيع و قطع غيار و صيانة لالات عد النقود في اليمن' property='og:description' />
    <meta content='الزعزعي تكنلوجي للتجهيزات البنكية والامنية' property='og:site_name' />
    <meta content='summary_large_image' name='twitter:card' />

    <meta content='http://smart4mn.com/' name='twitter:domain' />
    <meta content='الزعزعي تكنلوجي للتجهيزات البنكية والامنية خدماتنا هي بيع و قطع غيار و صيانة لالات عد النقود في اليمن' name='twitter:description' />
    <meta  name="keywords"   content="الزعزعي تكنلوجي للتجهيزات البنكية والامنية,الات عد النقود,الات عد النقود اليمن,صيانة الات عد النقود,بيع الات عد النقود,الزعزعي تكنلوجي للتجهيزات البنكية والامنية"/>
    

    <!-- Google tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-240610569-1">
</script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-240610569-1');
</script>

    <!-- FACEBOOK OPENGRAPH END-->




    <script>

        dataLayer = [];

        var Microless = {

            products: [],
            product_lists: [],
            count_down: [],
            page_type: 'CATEGORY',
            currency: {
                name: 'درهم',
                rate: parseFloat(1.00000000),
                decimals: 2
            },
            language: {
                id: 2,
                url: 'ar'
            },
            review_image_path: 'https://microless.com/cdn/reviews/',

            wishlist_add_path: 'https://uae.microless.com/wishlist/',
            product_image_path: 'https://microless.com/cdn/products/',
            no_image_path: 'https://uae.microless.com/cdn/',
            notification: [],
            base_url: 'https://uae.microless.com',
            user_url_prefix: 'user',
            user_id: '',
            wishlist_hash: '',
            brand_image_path: 'https://microless.com/cdn/brands/',
            cdn_path: 'https://uae.microless.com/cdn/',
            dir: 'rtl',
            deliver_to: { "country_code": "YE", "city_id": 489120, "city": "صنعاء" }

        };

        Microless.variant_covers = {};





        Microless._sw_user_addresses = [];
        Microless._sw_user_address_additional = [];












        window.Microless = Microless;

        function addProductToList(product, product_list) {

            var found = false;

            for (var x in Microless.products) {
                if (Microless.products[x].id == product.id) {
                    found = true;
                    break;
                }
            }

            if (!found) {
                Microless.products.push(product);
            }

            found = false;

            if (typeof Microless.product_lists[product_list] == 'undefined') {
                Microless.product_lists[product_list] = [];
            }

            for (var x in Microless.product_lists[product_list]) {
                if (Microless.product_lists[product_list][x].product_id == product.id) {
                    found = true;
                    break;
                }
            }

            if (!found) {
                Microless.product_lists[product_list].push({
                    product_id: product.id,
                    position: Microless.product_lists[product_list].length
                });
            }

        }

        function sendProductImpressions(current_product) {

            var product_impressions = [];

            for (var x in Microless.product_lists) {

                for (var i in Microless.product_lists[x]) {

                    var product = null;

                    for (var z in Microless.products) {
                        if (Microless.products[z].id == Microless.product_lists[x][i].product_id) {
                            product = Microless.products[z];
                            break;
                        }
                    }

                    if (product) {

                        var position = Microless.product_lists[x][i].position;

                        product_impressions.push({
                            id: product.id,
                            name: product.name,
                            brand: product.brand,
                            category: product.category,
                            price: product.price,
                            list: x,
                            position: position
                        });

                    }

                }

            }

            var obj = {
                'ecommerce': {
                    'currencyCode': 'درهم'
                }
            };

            if (product_impressions.length) {
                obj.ecommerce.impressions = product_impressions
            }

            if (typeof current_product != 'undefined' && current_product) {
                obj.ecommerce.detail = {
                    products: [current_product]
                }
            }

            dataLayer.push(obj);

        }

        function sendCartView() {

            var product_impressions = [], cart_items = [];

            for (var x in Microless.product_lists) {

                for (var i in Microless.product_lists[x]) {

                    var product = null;

                    for (var z in Microless.products) {
                        if (Microless.products[z].id == Microless.product_lists[x][i].product_id) {
                            product = Microless.products[z];
                            break;
                        }
                    }

                    if (product) {

                        var position = Microless.product_lists[x][i].position;

                        if (x == 'cart') {

                            cart_items.push({
                                id: product.id,
                                name: product.name,
                                brand: product.brand,
                                category: product.category,
                                price: product.price,
                                quantity: 1
                            });

                        } else {

                            product_impressions.push({
                                id: product.id,
                                name: product.name,
                                brand: product.brand,
                                category: product.category,
                                price: product.price,
                                list: x,
                                position: position
                            });

                        }

                    }

                }

            }

            dataLayer.push({
                'event': 'checkout',
                'ecommerce': {
                    'checkout': {
                        'actionField': { 'step': 1, 'payment_method': 'COD' },
                        'products': cart_items
                    },
                    impressions: product_impressions
                }
            });

        }

        function sendCheckoutView() {

            var cart_items = [];

            if (typeof Microless.product_lists['cart'] != 'undefined' && Microless.product_lists['cart']) {

                for (var i in Microless.product_lists['cart']) {

                    var product = null;

                    for (var z in Microless.products) {
                        if (Microless.products[z].id == Microless.product_lists['cart'][i].product_id) {
                            product = Microless.products[z];
                            break;
                        }
                    }

                    if (product) {

                        cart_items.push({
                            id: product.id,
                            name: product.name,
                            brand: product.brand,
                            category: product.category,
                            price: product.price,
                            quantity: 1
                        });

                    }

                }

                dataLayer.push({
                    'event': 'checkout',
                    'ecommerce': {
                        'checkout': {
                            'actionField': { 'step': 2, 'payment_method': 'COD' },
                            'products': cart_items
                        }
                    }
                });

            }

        }

        function sendCheckoutCompleteView(order_id, total, shipping) {

            var order_items = [];

            if (typeof Microless.product_lists['order'] != 'undefined' && Microless.product_lists['order']) {

                for (var i in Microless.product_lists['order']) {

                    var product = null;

                    for (var z in Microless.products) {
                        if (Microless.products[z].id == Microless.product_lists['order'][i].product_id) {
                            product = Microless.products[z];
                            break;
                        }
                    }

                    if (product) {

                        order_items.push({
                            id: product.id,
                            name: product.name,
                            brand: product.brand,
                            category: product.category,
                            price: product.price,
                            quantity: Microless.product_lists['order'][i].quantity
                        });

                    }

                }

                dataLayer.push({
                    'ecommerce': {
                        'purchase': {
                            'actionField': {
                                'id': order_id,
                                'affiliation': 'Online Store',
                                'revenue': total,                     // Total transaction value (incl. tax and shipping)
                                'shipping': shipping
                            },
                            'products': order_items
                        }
                    }
                });

            }

        }



        sendProductImpressions();


        Microless.price_slider_ranges = {
            "min_price": "0",
            "max_price": "0",
            "current_page_min_price": "0",
            "current_page_max_price": "0"
        };








    </script>

    <!-- Google Tag Manager -->
  
    <!-- End Google Tag Manager -->
    <!-- web push notifications start -->
    <link rel="manifest" href="/manifest.json">
    <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async></script>
  
    <!-- web push notifications end -->










    <link rel="stylesheet" href="https://uae.microless.com/assets/css/49c15b21.css?v=2.0.0">


    <!-- Load Bootstrap RTL theme from RawGit -->
    <link rel="stylesheet" href="//cdn.rawgit.com/morteza/bootstrap-rtl/v3.3.4/dist/css/bootstrap-rtl.min.css">
    <link rel="stylesheet" type="text/css" href="https://uae.microless.com/assets/css/rtl-overides.css?v=1.0.13">




    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">

    <meta name="theme-color" content="#ffffff">

    <meta name="csrf-token" content="v8cDnFNCDZNql4Pub3L799T3ZglMWBAkCjQyeJ1q">
    <link href="fontawesome/css/all.css" rel="stylesheet">


    <style>
        #mySidenav a {
            position: fixed;
            left: -5px;
            transition: 0.3s;
            padding: 13px;
            text-decoration: none;
            font-size: 14px;
            color: white;
            border-radius: 5px 0 0 5px;
            z-index: 998;
        }

            #mySidenav a:hover {
            }

        #facebook {
            top: 240px;
            background-color: #4fb68d;
        }

        #twitter {
            top: 360px;
            background-color: #2196F3;
        }

        #whatsapp {
            top: 300px;
            background-color: #14477B;
        }
        #tik {
            top: 420px;
            color: #ebebeb;
            background-color: black;
        }

        #instagram {
            top: 480px;
            background-color: #B03D07;
        }

        #snap {
            top: 600px;
            background-color: #FFFC00;
        }

        #telegram {
            top: 540px;
        }

        #goback {
            display: none;
            position: fixed;
            bottom: 20px;
            left: 30px;
            z-index: 99;
            border: 1px #FFFFFF solid;
            outline: none;
            background-color: #08588F;
            color: white;
            cursor: pointer;
            padding: 15px;
            border-radius: 50%;
        }

            #goback:hover {
                background-color: #8C8C8C;
                color: #0F0F0F;
            }

        .ffa {
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        .ffa {
            float: left;
            padding: 0px;
        }






        .if {
            float: left;
        }
       .banner-area-wrap {
            display: none;
        }
        
     /*   @media screen and (max-width:671px) {
            .banner-area-wrap {
                display:none;
            }
        }*/

         .banner-item{
             background-size:contain;
         }


        @media screen and (max-width: 880px) {

            .ml-home-content #mainbanner, .ml-home-content #mainbanner .banner-item {
                display: block;
                position: relative;
                width: 100%;
                height: 0;
               padding-bottom: 55.4%;
                background-size: 83%;
                background-repeat: no-repeat;
            }
            .banner-area-wrap {
                display: block;
            }
        }


        body.rtl #mobile-menu:before {
            background-image: url(images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg);
            background-size: 61%;
        }



    </style>
</head>
   <body class="rtl device-theme  body-page-category cusom-next-prev">
    <form id="form1" runat="server">
    <div>




     



    <!-- Google Tag Manager (noscript) -->
    <!-- End Google Tag Manager (noscript) -->

    <div class="blue visible-xs-block " id="header-mobile">
        <a class="mobile-menu-toggle" href="#mobile-menu">
            <i class="fa fa-bars"></i>
        </a>

        <a class="mobile-header-cart" >
           

        </a>

        <a  class="site-logo" title="smart4mn.com">

            <span style=" font-size: 14px; color: white; ">الزعزعي تكنولوجي للتجهيزات البنكية والامنية</span>

        </a>

        <div id="header-search-mobile">
            <form action="/web-search/" method="POST">
                <input class="form-control input-sm query-autocomplete" value="" placeholder="عما تبحث؟" name="query" id="query" type="text" style="width: 100%;">
                <input type="hidden" name="language" value="2">
                <div class="autocomplete-wrapper">
                    <div class="header-mobile-autocomplete"><ul></ul><a href="#" class="auto-complete-close">close</a></div><!-- /.header-mobile-autocomplete -->
                </div><!-- /.autocomplete-wrapper -->
            </form>
        </div><!-- #header-search-mobile -->


    </div>

    <div class="ml-fireworks">
    </div><!-- /.ml-fireworks -->

    <div id="header-first" class="ml-header-first  ">

        <script>
            let deliverTo = {
                country_code: "YE",
                city: "صنعاء"
            };
        </script>

        <!-- ML HEADER TOP -->
        <div class="ml-top-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div id="ml-top-header">

                            <div class="ml-top-header-left">

                                <div class="site-switcher-control dropdown f32">
                                    <a href="" class="dropdown-toggle active global flag ye" data-toggle="dropdown">
                                        <span>التوصيل إلى </span>
                                        صنعاء
                                    </a>







                                </div><!-- / .site-switcher-control.dropdown -->


                                <div class="ml-phone-text">
                                    <i class="fa fa-phone fa-fw"></i>
                                    <span class="mi-ph-number">+967772607581</span>
                                    <span>
                                        &nbsp; 8:00 صباحًا - 10:00 مساءً
                                    </span>
                                </div>
                                <div class="ml-header-features ml-line-left hidden-sm">
                                    <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                    الدفع عند الاستلام
                                </div>
                                <div class="ml-header-features ml-line-left">
                                    <i class="fa fa-truck fa-flip-horizontal fa-fw"></i>
                                    بيع جملة و تجزئه
                                </div>
                                <div class="ml-header-features ml-line-left hidden-md hidden-sm">
                                    <i class="fa fa-repeat" aria-hidden="true"></i>
                                    مبيعات - صيانة
                                </div>
                                <div class="ml-header-features ml-line-left top-head-loaction">
                                    <a ><i class="fa fa-map-marker fa-fw"></i></a>
                                    <a >عنوان المتجر</a>
                                </div>
                                <div class="ml-header-features ml-line-left top-head-sellon hidden-sm">
                                    <a >
                                        البيع معنا
                                    </a>
                                </div>

                            </div><!-- /.ml-top-header-left -->



                            <div class="ml-top-header-right header-country-switcher">

                                <div class="ml-header-features mode-switcher ml-line-right hidden-md hidden-sm">
                                    <i class="theme-toggle fa fa-moon-o" aria-hidden="true"></i>
                                </div>



                            </div><!-- /.ml-top-header-right -->

                        </div> <!-- /#ml-top-header -->
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div> <!-- /.ml-top-header -->
        <!-- ML HEADER CENTER -->
        <div class="container-fluid ml-head-middle" style="">
            <div class="row" id="header">
                <div class="col-md-12">
                    <div class="ml-head">
                        <div class="ml-head-logo">
                            <a  class="site-logo" title="microless.com">

                                <span style="font-size: 20px; color: white;">الزعزعي تكنلوجي للتجهيزات البنكية والامنية</span>



                            </a>
                        </div>
                        <div class="ml-head-search">
                            <div id="header-search">

                                <form action="/web-search/" method="POST" autocomplete="off">
                                    <div class="input-group">
                                        <input type="text" class="form-control input-lg query-autocomplete" placeholder="عما تبحث؟" value="" name="query" id="query-desktop">
                                        <input type="hidden" name="language" value="2">
                                        <span class="input-group-btn">
                                            <button class="btn" title="Search"><i class="fa fa-search fa-lg fa-fw"></i></button>
                                        </span>
                                    </div>
                                </form>

                                <div id="search-auto-complete"><ul></ul></div>

                            </div><!-- header-search -->
                        </div>
                        <div class="ml-head-right">
                            <div class="ml-head-wrapp">
                                <div class="ml-head-account">
                                    <div class="header-first-popover">
                                        <div class="ml-head-account-drop">
                                        

                                            <div class="popover bottom">
                                                <div class="arrow"></div>
                                                <div class="popover-content">
                                                  
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- header-first-popover -->
                                </div><!-- /.ml-head-account -->

                                <div class="ml-head-favorites">

                                    <div class="header-first-popover">
                                        <a class="button-link">
                                            <i class="fa fa-heart-o head-icon" aria-hidden="true"></i>
                                            <span class="header-link-text">قائمة الرغبات</span>


                                        </a>
                                    </div>

                                </div><!-- /.ml-head-favorites -->

                                <div class="ml-head-cart">

                                    <div class="header-first-popover">
                                        <a  class="button-link">
                                            <span class="head-icon"><img src="https://uae.microless.com/assets/img/shopping-cart-outline.png" width="20px"></span>


                                            <span class="header-link-text">سلة التسوق</span>
                                        </a>
                                    </div>

                                </div><!-- /.ml-head-cart -->

                            </div><!-- /.ml-head-wrapp -->


                        </div><!-- /.ml-head-right -->
                    </div><!-- /.ml-head -->

                </div><!-- /.col-md-12 -->
            </div><!-- /# header -->
        </div><!-- /.container-fluid -->
        <!-- ML HEADER BOTTOM -->
        <div class="ml-head-btm">
            <div class="container-fluid menu-inactive" id="default-menu">

                <div class="row" id="menu">


                    <nav id="mobile-menu">
                        <ul>




                            <li class=submenu-computer-components>
                                <a>
                                    الات عد النقود اليمن
                                </a>

                            </li>
                            <li class=submenu-computer-accessories>
                                <a >
                                    بيع الات عد النقود
                                </a>

                            </li>
                            <li class=submenu-computers-desktops>
                                <a>
                                    قطع غيار الات عد النقود
                                </a>

                            </li>
                            <li class=submenu-notebooks>
                                <a >
                                    الات عد النقود
                                </a>

                            </li>

                            <li class=menu-deals>
                                <a >
                                    افضل العروض
                                </a>
                            </li>



                            <li class="site-switcher-control site-switcher-mb f32">
                                <a class="dropdown-toggle active global flag ye">
                                    <span>التوصيل إلى </span>
                                    صنعاء
                                </a>
                            </li>





                            <li class="mobile-theme-switcher">

                                <label>
                                    <span>الوضع المظلم</span>
                                    <div class="--switch">
                                        <input type="checkbox" id="darkCheck">
                                        <span class="--slider theme-toggle">
                                            <i class="fa fa-moon-o"></i>
                                            <i class="fa fa-sun-o"></i>
                                        </span>
                                    </div>
                                </label>

                            </li>
                        </ul>
                    </nav><!-- #mobile-menu -->

                </div>

                <div class="hidden-xs innerPage-menusection-wrap">

                    <div class="ml-btm-menu">
                        <div id="menu-toggle">
                            <div id="menu-toggle-button" class="open">
                                <i class="fa fa-bars fa-fw"></i>&nbsp;الات عد النقود اليمن
                            </div>
                            <div id="menu-wrapper">


                            </div>
                        </div><!-- /.menu-toggle -->
                        <div class="ml-menu-horizontal">
                            <ul class="desktop-menu">
                                <!-- class="rippleme" -->
                                <li>
                                    <a>بيع الات عد النقود</a>
                                    <div class="menu-dropdown have-subheading">




                                    </div>
                                </li>
                                <li>
                                    <a>قطع غيار الات عد النقود</a>
                                    <div class="menu-dropdown have-subheading">


                                    </div>
                                </li>
                                <li>
                                    <a>الات عد النقود</a>
                                    <div class="menu-dropdown have-subheading">


                                    </div>
                                </li>



                            </ul><!-- /. desktop-menu -->
                        </div><!-- /. ml-menu-horizontal -->
                    </div><!-- ml-btm-menu -->



                </div><!-- innerPage-menusection-wrap -->

            </div> <!-- /.container-fluid -->
        </div> <!-- /.ml-head-btm -->


    </div><!-- /.header-first -->

    <div class="ml-deliver-to">
        <div class="header_deliver_to_mb_wrapp">
            <div class="site-switcher-control head_deliver_to">
                <a href="" class="dropdown-toggle" data-toggle="dropdown">
                    <div class="head_deliver_to_cnt">
                        التوصيل إلى
                        <strong>
                            صنعاء
                        </strong>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div class="ml-home-content">
        <div class="container-fluid">





            <div class="banner-area-wrap">

                <div id="main-banner">
                    <!-- Home Slider Mobile -->
                    <div class="owl-carousel owl-rtl owl-loaded owl-drag" id="mainbanner" style="">












































                        <div class="owl-stage-outer">
                            <div class="owl-stage" style="transform: translate3d(3000px, 0px, 0px); transition: all 0.25s ease 0s; width: 7500px;">
                                <div class="owl-item cloned" style="width: 375px;">
                                    <a  >
                                        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
                                    </a>
                                </div><div class="owl-item cloned" style="width: 375px;">
                                    <a  >
                                        <div class="item banner-item" style="background-image: url('images/1.jpeg'); "></div>
                                    </a>
                                </div><div class="owl-item cloned" style="width: 375px;">
                                    <a >
                                        <div class="item banner-item" style="background-image: url('images/2.jpeg'); "></div>
                                    </a>
                                </div><div class="owl-item cloned" style="width: 375px;">
                                  <a>
                                        <div class="item banner-item" style="background-image: url('images/3.jpeg'); "></div>
                                    </a>
                                </div>
      
                                <div class="owl-item" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item active" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item" style="width: 375px;"><div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg');"></div></div><div class="owl-item" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item cloned" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item cloned" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item cloned" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item cloned" style="width: 375px;">
    <a>
        <div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg'); "></div>
    </a>
</div><div class="owl-item cloned" style="width: 375px;"><div class="item banner-item" style="background-image: url('images/WhatsApp Image 2023-04-06 at 12.50.03 AM.jpeg');"></div></div>
                            </div>
                        </div>
                        
                        <div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots"><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div>
                    </div>
                    <!-- Home Slider PC -->
                    <div class="owl-carousel owl-rtl owl-loaded owl-drag" id="pcmainbanner" style="">



































                        <div class="owl-stage-outer">
                            <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s;">
                                <div class="owl-item">
                                    <a>
                                        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/nvidia_back_in_stock_pc.png'); "></div>
                                    </a>
                                </div><div class="owl-item">
    <a>
        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/canyon-pc.png'); "></div>
    </a>
</div><div class="owl-item">
    <a>
        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/dominator-ddr5-pc.png'); "></div>
    </a>
</div><div class="owl-item">
    <a>
        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/vengence-ddr5-pc.png'); "></div>
    </a>
</div><div class="owl-item"><div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/mada-card-pc.jpg');"></div></div><div class="owl-item">
    <a>
        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/3d-printer-pc.jpg'); "></div>
    </a>
</div><div class="owl-item">
    <a>
        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/lego_pc.jpg'); "></div>
    </a>
</div><div class="owl-item">
    <a>
        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/GeforceRTX-pc.png'); "></div>
    </a>
</div><div class="owl-item">
    <a>
        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/gaming_laptops_pc.jpg'); "></div>
    </a>
</div><div class="owl-item">
    <a>
        <div class="item banner-item" style="background-image: url('https://microless.com/cdn/banners/selling_on_microless_pc.jpg'); "></div>
    </a>
</div>
                            </div>
                        </div><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots"><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div>
                    </div>
                </div><!-- main-banner -->

                <div class="clearfix"></div>

            </div>












            <div class="row" id="content">
                <div class="col-md-12" id="content-data">







                    <div class="row">


                        <!-- /.hidden-md hidden-lg -->
                        <!-- FILTER PART -->
                        <!-- =========== -->

                        <div class="filter-wrap collapse" id="collapseFilter">
                            <div class="close-filter"><a href="#">X</a></div><!-- /.close-filter -->
                            <script type="text/javascript">

                                var $url_filters = [];

                                var $selected_filters = Object.keys($url_filters).map(function (key) {
                                    return parseInt($url_filters[key]);
                                });

                                var $selected_filter_values = [];


                            </script>

                            <ul id="search-filter">


                                <li>
                                    <h4>
                                        <a data-toggle="collapse" data-parent="#search-filter" href="#filter-category">
                                            التصنيفة <span class="fa fa-fw fa-chevron-right pull-left"></span>
                                        </a>
                                    </h4>
                                </li>
                                <li>
                                    <ul data-param="category" class="sub-menu collapse in" id="filter-category">

                                        <li class="cat">
                                            <a data-param="filter-category" data-paramval="632">
                                                <i class="fa fa-angle-right"></i>&nbsp; الات عد النقود اليمن
                                            </a>
                                        </li>
                                        <li class="cat">
                                            <a  data-param="filter-category" data-paramval="681">
                                                <i class="fa fa-angle-right"></i>&nbsp;بيع الات عد النقود
                                            </a>
                                        </li>
                                        <li class="cat">
                                            <a data-param="filter-category" data-paramval="247">
                                                <i class="fa fa-angle-right"></i>&nbsp;قطع غيار الات عد النقود
                                            </a>
                                        </li>

                                        <li class="cat">الات عد النقود</li>

                                        <li>

                                            <ul data-param="category" class="sub-category">
                                            </ul>
                                        </li>




                                    </ul>
                                </li>



















                            </ul>
                        </div><!-- /.fiter-wrap -->
                        <!-- END FILTER PART -->
                        <!-- =========== -->
                        <div id="mySidenav" class="sidenav">
                            <a href="https://wa.me/+967772607581" id="facebook"><i class="fa fa-whatsapp ffa"></i>  </a>
                            <a href="https://m.facebook.com/112138114818352/" id="whatsapp"> <i class="fa fa-facebook ffa"></i></a>
                            <a href="https://twitter.com/DSmart4mn" id="twitter"> <i class="fa fa-twitter ffa"></i></a>

                            <a href="https://vm.tiktok.com/ZSdmBodDk/" id="tik"><i class="fa fa-tiktok ffa"></i> </a>

                            <a href="https://www.instagram.com/smart4mn" id="instagram"> <i class="fa fa-instagram ffa"></i></a>



                            <a href="https://www.snapchat.com/add/smart4mn"  id="snap"><i class="fa fa-snapchat ffa"></i> </a>


                            <a href="https://t.me/smart4mn" style="color: white; background-color:#2481cc;" id="telegram"><i class="fa fa-telegram ffa"></i> </a>


                            <a id="namecookie" runat="server"></a>
                            <a id="phone" runat="server"></a>


                        </div>









                        <div id="search-results" class=" view-grid">




                            <div class="main-heading-wrapper">
                                <div class="search-title-wrap">

                                    <h1 class="page-title" style="text-align:center">
                                        الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                    </h1>


                                </div>

                                <p> - يتوفر لدينا الان الات عد النقود الوكالة تعمل علي MG الاشعه فوق البنفسجية تعد العملة اليمنية المتهاكلة ضمان سنتين توفير قطع غيار نجاشي NC75 - الات عد النقود نجاشي ضمان عامين وكالة توفير قطع غيار</p>


                                
                                            <iframe width: 92%; height:70%; src="https://www.youtube.com/embed/XwWvmVrA_I4">
</iframe>


                            </div>



















                            <h2 class="category-subheading">الات عد النقود </h2>

                            <div id="heading">


                                <div class="breadcrumps-wrap">

                                    <ol class="breadcrumb hidden-xs hidden-sm">


                                        <li>

                                            <a>
                                                الصفحة الرئيسية
                                            </a>
                                        </li>


                                        <li>
                                            <a>
                                                الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </a>
                                        </li>




                                        <li>
                                            <a>
                                                بيع الات عد النقود جملة
                                            </a>
                                        </li>




                                        <li>
                                            <a>
                                                صيانة الات عد النقود
                                            </a>
                                        </li>




                                        <li>


                                            <a>
                                                ماكينات عد النقود
                                            </a>



                                        </li>





                                    </ol>

                                </div><!-- /.breadcrumps-wrap -->
                             



                                <div class="sort-options-wrap ">
                                    <span class="icon"><i class="fa fa-sort-alpha-desc" aria-hidden="true"></i>&nbsp;&nbsp;</span>
                                    <span class="text">ترتيب حسب</span>

                                    <select class="form-control input-sm" style="float: none; display: inline-block;" id="search-sort">

                                        <option value="newest">الأحدث أولا</option>
                                        <option value="price-asc">السعر: أدنى إلى أعلى</option>
                                        <option value="price-desc">السعر: من الاعلى الى الادنى</option>
                                        <option value="name">الاسم</option>
                                    </select>
                                </div><!-- /.sort-options-wrap -->

                                <div class="filter-switch ">
                                    <button class="btn btn-default">
                                        <i class="fa fa-filter"></i>
                                    </button><!-- /.btn btn-default -->
                                </div><!-- /.filter-switch -->


                                <div class="view-option">
                                    <div class="btn-group">
                                        <a href="#" data-view="list" id="list" class="btn btn-default btn-sm">
                                            <span class="fa fa-th-list"></span> قائمة
                                        </a>
                                        <a href="#" data-view="grid" id="grid" class="btn btn-default btn-sm active">
                                            <span class="fa fa-th"></span> شبكة
                                        </a>
                                    </div>
                                </div><!-- /.view-option -->



                            </div><!-- heading -->

                            <div id="selected-filter-tag-holder">
                                <div class="selected-filter-wrap">


                                </div><!-- ./selected-filter-wrap -->

                            </div><!-- /#selected-filter-tag-holder -->

                            <div id="search-results-products">


                                 



                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>







                                <div data-prodid="41025"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>

                                            <img class="lazyload" data-effect="fadeIn" src="admin/images/<%#Eval("nameimage") %>" data-src="admin/images/<%#Eval("nameimage") %>" alt="الزعزعي تكنلوجي للتجهيزات البنكية والامنية" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                               <%#Eval("name") %>
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <!--<li>الموديل: Zeus-10</li>-->

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->

                                    </div><!-- /.product-details -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>



                                
                                    </ItemTemplate>

                                </asp:Repeater>



                                <!----------------------------------------------------------------->
                                <div data-prodid="41025"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>

                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/3b714e7d65a41e08ab60ef9d85c48d10-md.jpg" alt="الزعزعي تكنلوجي للتجهيزات البنكية والامنية" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                آلة عد عملات كاسيدا زيوس ، حتى 10 دول - أبيض | زيوس 10
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: Zeus-10</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->

                                    </div><!-- /.product-details -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>


                                <div data-prodid="13950"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/35968-md.jpg" alt="Cassida 5520 UV / MG - عداد نقود أمريكي مع كشف التزييف بالأشعة فوق البنفسجية / MG / IR ، آلة عد الفواتير مع عدد القيم ، أوضاع الإضافة والدُفعات ، شاشة LCD كبيرة وسرعة عد سريعة 1،300 ورقة / دقيقة | 552" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                Cassida 5520 UV / MG - عداد نقود أمريكي مع كشف التزييف بالأشعة فوق البنفسجية / MG / IR ، آلة عد الفواتير مع عدد القيم ، أوضاع الإضافة والدُفعات ، شاشة LCD كبيرة وسرعة عد سريعة 1،300 ورقة / دقيقة | 552
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: 5520UVMG</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="13950" class="compare-add-item" id="product-13950">
                                                    <label for="product-13950"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="109952"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/c14f59ba30e5af59cf73f17af0f33336-md.jpg" alt="Nigachi NC-10 آلة عد النقود المختلطة ، سعة وعاء الأوراق بحد أقصى 500 ورقة ، سعة مكدس الأوراق النقدية بحد أقصى 200 ، نظام تغذية احتكاك الأسطوانة ، 800،1000،1200 ملاحظة / سرعة العد ، أسود | NC-10 ميكس" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                Nigachi NC-10 آلة عد النقود المختلطة ، سعة وعاء الأوراق بحد أقصى 500 ورقة ، سعة مكدس الأوراق النقدية بحد أقصى 200 ، نظام تغذية احتكاك الأسطوانة ، 800،1000،1200 ملاحظة / سرعة العد ، أسود | NC-10 ميكس
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: NC-10 Mix</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="109952" class="compare-add-item" id="product-109952">
                                                    <label for="product-109952"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="102708"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/c5ceb01f5e8119ec8f56481f517b8c34-md.jpg" alt="شاشة هيتاشي الخارجية ، متوافقة مع IH-110 ، ST-150NF ، ST-150 | شاشة خارجية" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                شاشة هيتاشي الخارجية ، متوافقة مع IH-110 ، ST-150NF ، ST-150 | شاشة خارجية
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: External Screen</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="102708" class="compare-add-item" id="product-102708">
                                                    <label for="product-102708"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="108837"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/2df4d3c275b390693cea98be0aabdad3-md.jpg" alt="عداد عملات Mirage SY-400 ، 2300 عملة في الدقيقة ، مثالي لأماكن العمل ، سعة القادوس 12000 عملة ، أبيض | SY-400" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                عداد عملات Mirage SY-400 ، 2300 عملة في الدقيقة ، مثالي لأماكن العمل ، سعة القادوس 12000 عملة ، أبيض | SY-400
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: SY-400</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="108837" class="compare-add-item" id="product-108837">
                                                    <label for="product-108837"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="108636"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/64e7652fd8e27263b25072d3995d184b-md.jpg" alt="Ribao HCS-3300 عداد وفرز العملات المعدنية عالي السرعة ، مخزن قياسي ممتد ، سعة وعاء 12000 عملة معدنية ، سرعة عد 2300 عملة / دقيقة ، 3 أوضاع للعد ، وظيفة النسخ الاحتياطي للذاكرة ، أبيض | HCS-3300" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                Ribao HCS-3300 عداد وفرز العملات المعدنية عالي السرعة ، مخزن قياسي ممتد ، سعة وعاء 12000 عملة معدنية ، سرعة عد 2300 عملة / دقيقة ، 3 أوضاع للعد ، وظيفة النسخ الاحتياطي للذاكرة ، أبيض | HCS-3300
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: HCS-3300</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="108636" class="compare-add-item" id="product-108636">
                                                    <label for="product-108636"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="108113"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/4372dd1dfc4843992ca0d552de9cb46e-md.jpg" alt="فارز الأوراق النقدية من كيسان نيوتن 30 ، سعة 600 وعاء ، سعة 200 مكدس ، ما يصل إلى 48 عملة ، شاشة لمس 4.3 بوصة ، منفذ تسلسلي ، واجهة LAN / USB ، رفض 100 ، أزرق | نيوتن 30" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                فارز الأوراق النقدية من كيسان نيوتن 30 ، سعة 600 وعاء ، سعة 200 مكدس ، ما يصل إلى 48 عملة ، شاشة لمس 4.3 بوصة ، منفذ تسلسلي ، واجهة LAN / USB ، رفض 100 ، أزرق | نيوتن 30
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: Newton30</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="108113" class="compare-add-item" id="product-108113">
                                                    <label for="product-108113"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="102569"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/c5893391fff608067464ba48e9231d47-md.jpg" alt="جهاز كشف العملات من ميراج ، جيب واحد مزدوج رابطة الدول المستقلة ، أداة تمييز الأوراق النقدية ، نطاق سرعة 800 إلى 1000 ورقة ، واجهة USB 3.0 ، للعد / المصادقة / التصنيف ، متعدد العملات | سي -100" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                جهاز كشف العملات من ميراج ، جيب واحد مزدوج رابطة الدول المستقلة ، أداة تمييز الأوراق النقدية ، نطاق سرعة 800 إلى 1000 ورقة ، واجهة USB 3.0 ، للعد / المصادقة / التصنيف ، متعدد العملات | سي -100
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: SY-100</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="102569" class="compare-add-item" id="product-102569">
                                                    <label for="product-102569"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">



                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="102000"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/753eb7b06c26178985f7681f11d36dd7-md.jpg" alt="آلة عد وكشف العملات الأوتوماتيكية Mirage SY-12 UV ، سعة 200 قطعة من مكدس / قادوس ، استهلاك طاقة 60 واط ، سرعة عد 1000 ملاحظة / دقيقة ، شاشة LCD | SY-12UV / MG" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                آلة عد وكشف العملات الأوتوماتيكية Mirage SY-12 UV ، سعة 200 قطعة من مكدس / قادوس ، استهلاك طاقة 60 واط ، سرعة عد 1000 ملاحظة / دقيقة ، شاشة LCD | SY-12UV / MG
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: SY-12UV/MG</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="102000" class="compare-add-item" id="product-102000">
                                                    <label for="product-102000"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="98739"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/b3e4796f8ab64f2274afb6f809fdb5e9-md.jpg" alt="Nigachi NC-6055 UV / MG / WM كاشف التزوير ، كابل USB ، بطارية قابلة لإعادة الشحن ، مصدر طاقة 5 فولت / 1 أمبير ، يكتشف العملات / الشيكات / جوازات السفر / إلخ ، أحمر | NC-6055" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                Nigachi NC-6055 UV / MG / WM كاشف التزوير ، كابل USB ، بطارية قابلة لإعادة الشحن ، مصدر طاقة 5 فولت / 1 أمبير ، يكتشف العملات / الشيكات / جوازات السفر / إلخ ، أحمر | NC-6055
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: NC-6055</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="98739" class="compare-add-item" id="product-98739">
                                                    <label for="product-98739"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">



                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="88688"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/101fa1269cf87ad06faa4c3f9a6b6388-md.jpg" alt="بريماكس AL-920 آلة عد قيمة متعددة العملات | PM-VC110" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                بريماكس AL-920 آلة عد قيمة متعددة العملات | PM-VC110
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: PM-VC110</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="88688" class="compare-add-item" id="product-88688">
                                                    <label for="product-88688"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="88686"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/b4c2e84539c7561b1a110a33c72bf155-md.jpg" alt="ماكينة عد النقود من بريماكس PM-CC90D | PM-CC90D" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                ماكينة عد النقود من بريماكس PM-CC90D | PM-CC90D
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: PM-CC90D</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="88686" class="compare-add-item" id="product-88686">
                                                    <label for="product-88686"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="77304"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/6474958a2b54d7c624ea55df6759e563-md.jpg" alt="Cassida Neo 2 عداد قيمة ومفرز للجيب ، عداد فواتير ، حتى 12 آلة عدّاد عملات متعددة | نيو 2" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                Cassida Neo 2 عداد قيمة ومفرز للجيب ، عداد فواتير ، حتى 12 آلة عدّاد عملات متعددة | نيو 2
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: Neo-2</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="77304" class="compare-add-item" id="product-77304">
                                                    <label for="product-77304"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="69461"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/bf342444be42476c674ff1562a0b24b3-md.jpg" alt="آلة عد العملات من Chuha CH-C202N مع عداد عملات ثقيل مع وحدة تلقيم آلي للعملات المعدنية | CH-C202N" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                آلة عد العملات من Chuha CH-C202N مع عداد عملات ثقيل مع وحدة تلقيم آلي للعملات المعدنية | CH-C202N
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: CH-C202N</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="69461" class="compare-add-item" id="product-69461">
                                                    <label for="product-69461"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="69460"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/bc2e6330af9be3ce75879783baf1862d-md.jpg" alt="E-Banking EB-10 للكشف عن الأشعة فوق البنفسجية و MG ، متخصص في الأوراق النقدية ذات الحالة السيئة | EB-10" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                E-Banking EB-10 للكشف عن الأشعة فوق البنفسجية و MG ، متخصص في الأوراق النقدية ذات الحالة السيئة | EB-10
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: EB-10</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="69460" class="compare-add-item" id="product-69460">
                                                    <label for="product-69460"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">



                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="69456"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/e79061eca7f0049ea82270d7d2dc77dd-md.jpg" alt="E-Banking EB-300 وحدة جيب مفردة للخزانة ، عداد الملاحظات النقدية | EB-300" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                E-Banking EB-300 وحدة جيب مفردة للخزانة ، عداد الملاحظات النقدية | EB-300
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: SF5230</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="69456" class="compare-add-item" id="product-69456">
                                                    <label for="product-69456"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">



                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="58096"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/07d80b9bec022c86c29663dc1ffa5962-md.jpg" alt="عداد أوراق البنك جلوري EV8650 | جلوري 8650" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                عداد أوراق البنك جلوري EV8650 | جلوري 8650
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: GLORY 8650</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="58096" class="compare-add-item" id="product-58096">
                                                    <label for="product-58096"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">



                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="56979"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/4da4579b9e11fb5a1ac20a02fe5a4c8f-md.jpg" alt="بالإضافة إلى آلة عد النقود / الأوراق النقدية الأوتوماتيكية | P-409A" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                بالإضافة إلى آلة عد النقود / الأوراق النقدية الأوتوماتيكية | P-409A
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: P-409A</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="56979" class="compare-add-item" id="product-56979">
                                                    <label for="product-56979"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">



                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="43465"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/a8d5ef8aa10493f9174497628d8a82da-md.jpg" alt="آلة عد العملات G&amp;amp;D BPS B1 | BPS B1" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                آلة عد العملات G&amp;amp;D BPS B1 | BPS B1
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: BPS B1</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="43465" class="compare-add-item" id="product-43465">
                                                    <label for="product-43465"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="41024"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/3b714e7d65a41e08ab60ef9d85c48d10-md.jpg" alt="آلة عد العملات من Cassida Zeus - بيضاء | زيوس 7" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                آلة عد العملات من Cassida Zeus - بيضاء | زيوس 7
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: Zeus-7</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="41024" class="compare-add-item" id="product-41024">
                                                    <label for="product-41024"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="41021"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/6afe904c09b7faad8648fc26699ceb1c-md.jpg" alt="CASSIDA 5510 عداد فاتورة فعال للأشعة فوق البنفسجية لآلة عد التجزئة ، 1300 ورقة في الدقيقة | 5510" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                CASSIDA 5510 عداد فاتورة فعال للأشعة فوق البنفسجية لآلة عد التجزئة ، 1300 ورقة في الدقيقة | 5510
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: 5510</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="41021" class="compare-add-item" id="product-41021">
                                                    <label for="product-41021"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="40566"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">








                                    <div class="product-discount-badge"> 10% خصم</div><!-- /.product-discount-badge -->

                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/78164caf68c6df74d0b6d33f5b16eab3-md.jpg" alt="Ribao HCS-3300 آلة عد عملات معدنية للخدمة الشاقة وعالية السرعة | 3300" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                Ribao HCS-3300 آلة عد عملات معدنية للخدمة الشاقة وعالية السرعة | 3300
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: hcs-3300</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="40566" class="compare-add-item" id="product-40566">
                                                    <label for="product-40566"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="40562"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">









                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/c12c17e30bc0c707e6240104ec40c02d-md.jpg" alt="Glory Brand 8672 الأوراق النقدية المزيفة أو الكشف عن الأوراق النقدية المارقة حسب الارتفاع (SD) | 8672" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                Glory Brand 8672 الأوراق النقدية المزيفة أو الكشف عن الأوراق النقدية المارقة حسب الارتفاع (SD) | 8672
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: 8672</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="40562" class="compare-add-item" id="product-40562">
                                                    <label for="product-40562"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>
                                <div data-prodid="40558"
                                     data-listid="search"
                                     class="product product-carousel grid-list ">








                                    <div class="product-discount-badge"> 11% خصم</div><!-- /.product-discount-badge -->

                                    <div class="product-image loading">
                                        <a>
                                            <img class="lazyload" data-effect="fadeIn" src="https://microless.com/cdn/pixel-paceholder-1x1.png" data-src="https://microless.com/cdn/products/ad36a3b52f41262b90400e6466170f3d-md.jpg" alt="Plus 409D آلة عد الحزم مع ضوء UV ، شاشة LED | P-409D" />
                                        </a>
                                    </div><!-- /.product-image -->
                                    <!-- /.product-image-wrap -->
                                    <!-- +++++++++++++++++ -->



                                    <div class="badges">

                                    </div><!-- /.badges -->


                                    <div class="product-details">

                                        <div class="product-title">
                                            <a>
                                                Plus 409D آلة عد الحزم مع ضوء UV ، شاشة LED | P-409D
                                            </a>
                                        </div><!-- /.product-title -->

                                        <div class="fbm-label-wrap">
                                            <div class="fbm-label">
                                            الزعزعي تكنلوجي للتجهيزات البنكية والامنية
                                            </div><!-- /.fbm-label -->
                                        </div><!-- /.fbm-label-wrap -->
                                        <!-- /.Star Rating -->
                                        <!-- /.Star Rating -->

                                        <div class="attribute-list">
                                            <ul>
                                                <li>الموديل: P-409D</li>

                                            </ul>
                                        </div><!-- /.attribute-list -->

                                        <div class="variants-wrap">


                                        </div><!-- /.variants-wrap -->
                                        <div class="compare-list-view">
                                            <div class="compare-checkbox-container clearfix">
                                                <div class="checkbox checkbox-default compare-checkbox pull-right">
                                                    <input type="checkbox" name="compare" value="40558" class="compare-add-item" id="product-40558">
                                                    <label for="product-40558"> مقارنة</label>
                                                </div><!-- /.checkbox checkbox-success -->
                                            </div><!-- /.clearfix -->
                                        </div>
                                    </div><!-- /.product-details -->
                                    <div class="product-price">
                                        <div class="prices clearfix">




                                        </div>


                                    </div><!-- /.product-price -->
                                    <!-- /.product-details-wrap -->
                                    <!-- /.clearfix -->


                                </div>


                                <div class="clear"></div>
                            </div><!-- /#search-results-products -->



                            <div id="pagination-footer">

                          

                            </div>
                        </div>




                    </div>

                    <div class="clear"></div>




                  




                </div><!-- content-data-->
            </div><!-- content -->
        </div>
    </div>

    <!-- section show build your pc and assistant -->

    <div id="footer">
        <div class="footer-contacts-container">
            <div class="container-fluid footer-contact">

                <div class="row footer-contact-bottom">
                    <!-- <div class="col-sm-12 col-md-3">
                        <a class="first" href="https://wa.me/97142623337?text=Hi"><div class="fdwrap"><i class="fa fa-whatsapp fa-fw"></i> راسلنا على WhatsApp</div></a>
                    </div> -->

                    <div class="col-sm-12 col-md-4">
                        <a href="tel:+967772607581"><div class="fdwrap"><i class="fa fa-phone fa-fw"></i><span style="unicode-bidi: plaintext;direction: ltr;">+967772607581</span></div></a>
                    </div>

                    <div class="col-sm-12 col-md-4">
                        <a href="mailto:alzazaisami@gmail.com">
                            <div class="fdwrap">
                                <i class="fa fa-envelope fa-fw"></i>
                                <span>alzazaisami@gmail.com</span>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-12 col-md-4">
                        <a >
                            <div class="fdwrap">
                                <i class="fa fa-map-marker fa-fw"></i>
                                <span> العنوان</span>
                            </div>
                        </a>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
        </div>


        <div id="footer">



            <div class="container-fluid">
                <div class="row">

                    <!-- footer_widget_1_2 -->
                    <div class="col-xs-12 col-md-4 about-us">

                        <div class="footer-heading">معلومات عنا</div>

                        يتوفر لدينا الان الات عد النقود الوكالة تعمل علي MG الاشعه فوق البنفسجية تعد العملة اليمنية المتهاكلة ضمان سنتين توفير قطع غيار نجاشي NC75
                    </div>



                    <!-- footer_widget_1_2 -->

                    <div class="col-xs-12 col-md-2">
                        <div class="footer-heading">عمليات بحث شعبية</div>
                        <div class="popular-search-badges">

                            <a class="badge">الات عد النقود</a>

                             <a href="Default.aspx?name='الزعزعي تكنلوجي للتجهيزات البنكية والامنية'" class="badge">الزعزعي تكنلوجي للتجهيزات البنكية والامنية</a>

                           <a  class="badge">الات عد النقود اليمن</a>

                             <a class="badge">صيانة الات عد النقود</a>

                              <a class="badge">الات عد النقود جملة تجزئة</a>

                            <a class="badge">الزعزعي تكنلوجي للتجهيزات البنكية والامنية</a>

                             <a class="badge">الات عد النقود</a>

                             <a class="badge">ماكينات عد النقود</a>

                            <a class="badge">الزعزعي تكنلوجي للتجهيزات البنكية والامنية</a>

                             <a class="badge">الزعزعي تكنلوجي للتجهيزات البنكية والامنية</a>

                             <a class="badge">الات عد النقود اليمن</a>

                             <a class="badge">الات عد النقود</a>


                        </div><!-- popular-search-badges -->

                    </div><!-- /.col-xs-6 col-md-4 -->
                    <!-- footer_widget_3_2 -->


                    <div class="col-xs-12 col-md-3 quick-links">
                        <div class="footer-heading">روابط سريعة</div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6">
                                <ul class="list-none">
                                    <li><a >اتصل بنا</a></li>
                                    <li><a >حول الموقع</a></li>
                                    <li><a >حالة الطلب</a></li>
                                    <li><a >الشحن</a></li>
                                    <li><a >المرتجعات</a></li>
                                    <li><a >الضمانات</a></li>
                    

                                </ul>
                            </div><!-- /.col-xs-6 col-sm-6 col-md-4 -->
                            <div class="col-xs-6 col-sm-6">
                         
                            </div><!-- /.col-xs-6 col-sm-6 col-md-4 -->
                        </div><!-- /.row -->
                    </div><!-- /.col-xs-12 col-md-7 -->
                    <!-- footer_widget_3_2 -->
                    <!-- footer_app_link -->
                    <div class="col-xs-12 col-md-3">
                     
                    </div>
                    <!-- footer_app_link -->
                    <!-- footer_subscriber -->
                 

                </div>
            </div>

            <!-- footer_logos_social_links -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="clearfix">

                            <div class="payment-options-logos"></div><!-- /.payment-options-logo -->

                            <div class="social">
                                اتصل بنا:
                                <ul>
                                    <li>
                                        <a  >
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a  >
                                            <i class="fa fa-twitter "></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a >
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                    <!--
                                                        <li><a href="https://plus.google.com/100002629511264799137" rel="nofollow noopener noreferrer" title="Microless JLT" target="_blank" class="gpl">
                                                          <i class="fa fa-google-plus-square fa-fw"></i></a>
                                                        </li> -->
                                </ul>
                            </div><!-- /.social -->

                        </div>

                    </div><!-- /.col-xs-12 -->
                    <!-- /.col-xs-6 -->

                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
            <!-- footer_logos_social_links -->

        </div>

      
       
       
       
       
       
    </div><!-- /#footer -->

    <div class="blue" id="copyright">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-xs-12 col-sm-6">

                    <div class="copyright-info">
                        © 2011 - 2022 برجمة وتصميم ابداع ميديا.
                    </div><!-- /.copyright-info -->
                </div>
                <div class="col-md-6 col-xs-12 col-sm-6">
                    <div class="copyright-info privacy-terms">

                        <a >سياسة الخصوصية</a> |
                        <a >اتفاقية استخدام الموقع</a>
                    </div><!-- /.copyright-info -->

                </div><!-- /.col-md-6 -->
            </div>
        </div>
    </div>


    <!-- Go to www.addthis.com/dashboard to customize your tools -->
    <script src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5abf8600e62c84fa&async=1"></script>







    <div id="compare-list-bottom-drawer" class="hidden draw-down">

        <div class="compare-items-wrapper">


         

           
        

           

          

        </div><!-- /.compare-items-wrapper -->
    </div><!-- #compare-list-bottom-drawer -->




    <div class="image"></div><!-- /.image -->

    <script id="language-switcher-template" type="text/template">
        <div class="mobile-language-switcher">
            <a >English</a>
        </div>
    </script>

  

    <script id="configurator-list-template" type="text/template">

   

    </script>



 

    <script id="bestseller-list-template" type="text/template">
        <div class="panel panel-warning" style="border: 1px solid #dcb000">
            <div class="panel-heading" style="font-weight: bold; background-color: #FECB00; color: #000; border-bottom: 1px solid #dcb000">BEST SELLERS</div>
            <div class="panel-body" style="padding: 0; overflow: hidden;" id="bestsellers-container">

            </div>
        </div>
    </script>

    <script id="product-list-none-template" type="text/template">
        <br />
        <br />
        Your search -  - did not match any documents.
        <br />
        <br />
        Suggestions:
        <br />
        <br />
        <ul>
            <li>Make sure that all words are spelled correctly.</li>
            <li>Try different keywords.</li>
            <li>Try more general keywords.</li>
        </ul>
        <br />
        <br />
    </script>

    <script id="search-header-template" type="text/template">

        <div class="clearfix">
           
            <div class="pull-right">

                <div class="clearfix">

                    <div style="float: left;">
                        <div class="fb-like" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
                    </div>

                    <div class="pull-left" style="margin: 0 30px;">
                        <a  class="twitter-share-button">Tweet</a>
                    </div>

                    <div class="pull-left">
                        <!-- Place this tag where you want the +1 button to render. -->
                        <div class="g-plusone" data-size="medium"></div>

                        <!-- Place this tag after the last +1 button tag. -->
                    </div>

                </div><!-- /.clearfix -->

            </div>


        </div>
        <br />
    </script>

    <script id="search-filter-template" type="text/template">

     

        <li>
            <h4>
                <a data-toggle="collapse" data-parent="#search-filter" href="#filter-category" class="">
                    التصنيفة<span class="fa fa-fw pull-right fa-minus"></span>
                </a>
            </h4>
        </li>
      

        <li>

            <ul data-param="category" class="sub-menu collapse in" id="filter-category">
  

           

                <li>
                    <ul data-param="category" class="sub-category">
                    
                 

                
                    </ul>
                </li>



  


            

     


        </ul>
        </li>


        <li>
            <h4>
                <span class="section-head">يوم التوصيل</span>
            </h4>
        </li>

        <li>

            <ul class="parameter">

              

            </ul>

        </li>



    </script>









    <!-- Compare Sidebar -->












    <script id="search-filter-control-show-more" type="text/template">
        المزيد
    </script>

    <script id="search-filter-control-show-less" type="text/template">
        عرض أقل
    </script>


    <script id="checkout-address-error-notify" type="text/template">
        يبدو أن بعض المعلومات في العنوان المحدد خاطئة. يرجى تعديل والمحاولة مرة أخرى
    </script>

 

    <script id="checkout-processing-payment-wait" type="text/template">
        <div class="message-please-wait">معالجة طلب الدفع. ارجوك انتظر!</div>
    </script>






    <script id="checkout-missing-delivery-address-notify" type="text/template">
        يجب أن تعطينا عنوان الاستلام للمتابعة
    </script>

    <script id="checkout-collection-info" type="text/template">
        <i class="fa fa-check" aria-hidden="true"></i> يمكن جمعها الآن.
    </script>

  

    <script id="checkout-place-order" type="text/template">
        تأكيد الطلب
    </script>

    <script id="checkout-place-order-pay" type="text/template">
        تأكيد الطلب
    </script>

    <script id="checkout-approximate" type="text/template">
        تقريبي
    </script>

    <script id="checkout-oman-delivery-charge" type="text/template">
        <small> <i> تسري رسوم تسليم <strong> 3 - 5 ريال عماني </ strong> عند استلام الشحنة (الشحنات) + الرسوم الجمركية إن وجدت </ i> </ small>
    </script>

    <script id="checkout-free-delivery" type="text/template">
        <strong> مجاناً </strong>

    </script>




    <script id="validatephone" type="text/template">
        يبدو أن رقم الهاتف المقدم غير صالح
    </script>



    <script id="field-is-required" type="text/template">
        هذه الخانة مطلوبه
    </script>
    <script id="enter-full-name" type="text/template">
        من فضلك ادخل اسمك الكامل
    </script>
    <script id="enter-card-number" type="text/template">
        أدخل رقم البطاقة
    </script>
    <script id="name-on-card" type="text/template">
        الاسم على البطاقة
    </script>
    <script id="invalid-card-number" type="text/template">
        رقم البطاقة غير صالحة
    </script>
    <script id="enter-card-month" type="text/template">
        اختر الشهر
    </script>
    <script id="enter-card-year" type="text/template">
        حدد السنة
    </script>
    <script id="cvv-required" type="text/template">
        CVV مطلوبة
    </script>
    <script id="lettersonly" type="text/template">
        حروف فقط
    </script>
    <script id="atleast_letter" type="text/template">
        يجب أن يكون عدد الأحرف {0} على الأقل
    </script>
    <script id="validatephone" type="text/template">
        يبدو أن رقم الهاتف المقدم غير صالح
    </script>







    <!-- SENTRY BEGIN -->

    <script src="https://browser.sentry-cdn.com/6.19.6/bundle.min.js" integrity="sha384-XITe7oDiyULCpVPtGc52+ISVyD2MAEbbfpNsmYcfxClZXDw+IA906MSf6rhcdf3L" crossorigin="anonymous"></script>
    <script>
        Sentry.init({
            dsn: 'https://87b2c8764a084cdbb5281715ecd262bb@o50904.ingest.sentry.io/138196',
            release: "49c15b21",

            // We recommend adjusting this value in production, or using tracesSampler
            // for finer control
            tracesSampleRate: 1.0,
            ignoreErrors: [
                // Random plugins/extensions
                "top.GLOBALS",
                // See: http://blog.errorception.com/2012/03/tale-of-unfindable-js-error.html
                "originalCreateNotification",
                "canvas.contentDocument",
                "MyApp_RemoveAllHighlights",
                "http://tt.epicplay.com",
                "Can't find variable: ZiteReader",
                "jigsaw is not defined",
                "ComboSearch is not defined",
                "http://loading.retry.widdit.com/",
                "atomicFindClose",
                // Facebook borked
                "fb_xd_fragment",
                // ISP "optimizing" proxy - `Cache-Control: no-transform` seems to
                // reduce this. (thanks @acdha)
                // See http://stackoverflow.com/questions/4113268
                "bmi_SafeAddOnload",
                "EBCallBackMessageReceived",
                // See http://toolbar.conduit.com/Developer/HtmlAndGadget/Methods/JSInjection.aspx
                "conduitPage",
                "Can not detect viewport width"
            ],
            denyUrls: [
                // Facebook flakiness
                /graph\.facebook\.com/i,
                // Facebook blocked
                /connect\.facebook\.net\/en_US\/all\.js/i,
                // Woopra flakiness
                /eatdifferent\.com\.woopra-ns\.com/i,
                /static\.woopra\.com\/js\/woopra\.js/i,
                // Chrome extensions
                /extensions\//i,
                /^chrome:\/\//i,
                // Other plugins
                /127\.0\.0\.1:4001\/isrunning/i, // Cacaoweb
                /webappstoolbarba\.texthelp\.com\//i,
                /metrics\.itunes\.apple\.com\.edgesuite\.net\//i,
            ]
        });
    </script>


    <!-- SENTRY END -->


    <script>
        Microless.all_countries_cities = { "AD": { "name": "\u0623\u0646\u062f\u0648\u0631\u0627", "country_code": "AD", "cities": [], "city_areas": [], "pobox_required": false }, "AE": { "name": "\u0627\u0644\u0625\u0645\u0627\u0631\u0627\u062a \u0627\u0644\u0639\u0631\u0628\u064a\u0629 \u0627\u0644\u0645\u062a\u062d\u062f\u0629", "country_code": "AE", "cities": [], "city_areas": [], "pobox_required": false }, "AF": { "name": "\u0623\u0641\u063a\u0627\u0646\u0633\u062a\u0627\u0646", "country_code": "AF", "cities": [], "city_areas": [], "pobox_required": false }, "AG": { "name": "\u0623\u0646\u062a\u064a\u063a\u0648\u0627 \u0648\u0628\u0627\u0631\u0628\u0648\u062f\u0627", "country_code": "AG", "cities": [], "city_areas": [], "pobox_required": false }, "AI": { "name": "\u0623\u0646\u063a\u0648\u064a\u0644\u0627", "country_code": "AI", "cities": [], "city_areas": [], "pobox_required": false }, "AL": { "name": "\u0623\u0644\u0628\u0627\u0646\u064a\u0627", "country_code": "AL", "cities": [], "city_areas": [], "pobox_required": false }, "AM": { "name": "\u0623\u0631\u0645\u064a\u0646\u064a\u0627", "country_code": "AM", "cities": [], "city_areas": [], "pobox_required": false }, "AO": { "name": "\u0623\u0646\u063a\u0648\u0644\u0627", "country_code": "AO", "cities": [], "city_areas": [], "pobox_required": false }, "AQ": { "name": "\u0627\u0644\u0642\u0627\u0631\u0629 \u0627\u0644\u0642\u0637\u0628\u064a\u0629 \u0627\u0644\u062c\u0646\u0648\u0628\u064a\u0629", "country_code": "AQ", "cities": [], "city_areas": [], "pobox_required": false }, "AR": { "name": "\u0627\u0644\u0623\u0631\u062c\u0646\u062a\u064a\u0646", "country_code": "AR", "cities": [], "city_areas": [], "pobox_required": false }, "AS": { "name": "\u0633\u0627\u0645\u0648\u0627 \u0627\u0644\u0623\u0645\u0631\u064a\u0643\u064a\u0629", "country_code": "AS", "cities": [], "city_areas": [], "pobox_required": false }, "AT": { "name": "\u0627\u0644\u0646\u0645\u0633\u0627", "country_code": "AT", "cities": [], "city_areas": [], "pobox_required": false }, "AU": { "name": "\u0623\u0633\u062a\u0631\u0627\u0644\u064a\u0627", "country_code": "AU", "cities": [], "city_areas": [], "pobox_required": false }, "AW": { "name": "\u0623\u0631\u0648\u0628\u0627", "country_code": "AW", "cities": [], "city_areas": [], "pobox_required": false }, "AX": { "name": "\u062c\u0632\u0631 \u0623\u0648\u0644\u0627\u0646\u062f", "country_code": "AX", "cities": [], "city_areas": [], "pobox_required": false }, "AZ": { "name": "\u0623\u0630\u0631\u0628\u064a\u062c\u0627\u0646", "country_code": "AZ", "cities": [], "city_areas": [], "pobox_required": false }, "BA": { "name": "\u0627\u0644\u0628\u0648\u0633\u0646\u0629 \u0648\u0627\u0644\u0647\u0631\u0633\u0643", "country_code": "BA", "cities": [], "city_areas": [], "pobox_required": false }, "BB": { "name": "\u0628\u0627\u0631\u0628\u0627\u062f\u0648\u0633", "country_code": "BB", "cities": [], "city_areas": [], "pobox_required": false }, "BD": { "name": "\u0628\u0646\u063a\u0644\u0627\u062f\u064a\u0634", "country_code": "BD", "cities": [], "city_areas": [], "pobox_required": false }, "BE": { "name": "\u0628\u0644\u062c\u064a\u0643\u0627", "country_code": "BE", "cities": [], "city_areas": [], "pobox_required": false }, "BF": { "name": "\u0628\u0648\u0631\u0643\u064a\u0646\u0627 \u0641\u0627\u0633\u0648", "country_code": "BF", "cities": [], "city_areas": [], "pobox_required": false }, "BG": { "name": "\u0628\u0644\u063a\u0627\u0631\u064a\u0627", "country_code": "BG", "cities": [], "city_areas": [], "pobox_required": false }, "BH": { "name": "\u0627\u0644\u0628\u062d\u0631\u064a\u0646", "country_code": "BH", "cities": [], "city_areas": [], "pobox_required": false }, "BI": { "name": "\u0628\u0648\u0631\u0648\u0646\u062f\u064a", "country_code": "BI", "cities": [], "city_areas": [], "pobox_required": false }, "BJ": { "name": "\u0628\u0646\u064a\u0646", "country_code": "BJ", "cities": [], "city_areas": [], "pobox_required": false }, "BL": { "name": "\u0633\u0627\u0646 \u0628\u0627\u0631\u062a\u064a\u0644\u0645\u064a", "country_code": "BL", "cities": [], "city_areas": [], "pobox_required": false }, "BM": { "name": "\u0628\u0631\u0645\u0648\u062f\u0627", "country_code": "BM", "cities": [], "city_areas": [], "pobox_required": false }, "BN": { "name": "\u0628\u0631\u0648\u0646\u0627\u064a \u062f\u0627\u0631 \u0627\u0644\u0633\u0644\u0627\u0645", "country_code": "BN", "cities": [], "city_areas": [], "pobox_required": false }, "BO": { "name": "\u0628\u0648\u0644\u064a\u0641\u064a\u0627", "country_code": "BO", "cities": [], "city_areas": [], "pobox_required": false }, "BR": { "name": "\u0627\u0644\u0628\u0631\u0627\u0632\u064a\u0644", "country_code": "BR", "cities": [], "city_areas": [], "pobox_required": false }, "BS": { "name": "\u062c\u0632\u0631 \u0627\u0644\u0628\u0647\u0627\u0645\u0627", "country_code": "BS", "cities": [], "city_areas": [], "pobox_required": false }, "BT": { "name": "\u0628\u0648\u062a\u0627\u0646", "country_code": "BT", "cities": [], "city_areas": [], "pobox_required": false }, "BV": { "name": "\u062c\u0632\u064a\u0631\u0629 \u0628\u0648\u0641\u064a\u062a", "country_code": "BV", "cities": [], "city_areas": [], "pobox_required": false }, "BW": { "name": "\u0628\u0648\u062a\u0633\u0648\u0627\u0646\u0627", "country_code": "BW", "cities": [], "city_areas": [], "pobox_required": false }, "BY": { "name": "\u0628\u064a\u0644\u0627\u0631\u0648\u0633", "country_code": "BY", "cities": [], "city_areas": [], "pobox_required": false }, "BZ": { "name": "\u0628\u064a\u0644\u0632", "country_code": "BZ", "cities": [], "city_areas": [], "pobox_required": false }, "CA": { "name": "\u0643\u0646\u062f\u0627", "country_code": "CA", "cities": [], "city_areas": [], "pobox_required": false }, "CC": { "name": "\u062c\u0632\u0631 \u0643\u0648\u0643\u0648\u0633 (\u0643\u064a\u0644\u064a\u0646\u063a) ", "country_code": "CC", "cities": [], "city_areas": [], "pobox_required": false }, "CD": { "name": "\u062c\u0645\u0647\u0648\u0631\u064a\u0629 \u0627\u0644\u0643\u0648\u0646\u063a\u0648 \u0627\u0644\u062f\u064a\u0645\u0642\u0631\u0627\u0637\u064a\u0629 ", "country_code": "CD", "cities": [], "city_areas": [], "pobox_required": false }, "CG": { "name": "\u0627\u0644\u0643\u0648\u0646\u063a\u0648", "country_code": "CG", "cities": [], "city_areas": [], "pobox_required": false }, "CH": { "name": "\u0633\u0648\u064a\u0633\u0631\u0627", "country_code": "CH", "cities": [], "city_areas": [], "pobox_required": false }, "CI": { "name": "\u0633\u0627\u062d\u0644 \u0627\u0644\u0639\u0627\u062c", "country_code": "CI", "cities": [], "city_areas": [], "pobox_required": false }, "CK": { "name": "\u062c\u0632\u0631 \u0643\u0648\u0643", "country_code": "CK", "cities": [], "city_areas": [], "pobox_required": false }, "CL": { "name": "\u062a\u0634\u064a\u0644\u064a", "country_code": "CL", "cities": [], "city_areas": [], "pobox_required": false }, "CM": { "name": "\u0627\u0644\u0643\u0627\u0645\u064a\u0631\u0648\u0646", "country_code": "CM", "cities": [], "city_areas": [], "pobox_required": false }, "CN": { "name": "\u0627\u0644\u0635\u064a\u0646", "country_code": "CN", "cities": [], "city_areas": [], "pobox_required": false }, "CO": { "name": "\u0643\u0648\u0644\u0648\u0645\u0628\u064a\u0627", "country_code": "CO", "cities": [], "city_areas": [], "pobox_required": false }, "CR": { "name": "\u0643\u0648\u0633\u062a\u0627\u0631\u064a\u0643\u0627", "country_code": "CR", "cities": [], "city_areas": [], "pobox_required": false }, "CU": { "name": "\u0643\u0648\u0628\u0627", "country_code": "CU", "cities": [], "city_areas": [], "pobox_required": false }, "CV": { "name": "\u062c\u0645\u0647\u0648\u0631\u064a\u0629 \u0627\u0644\u0631\u0623\u0633 \u0627\u0644\u0623\u062e\u0636\u0631", "country_code": "CV", "cities": [], "city_areas": [], "pobox_required": false }, "CX": { "name": "\u062c\u0632\u064a\u0631\u0629 \u0643\u0631\u064a\u0633\u0645\u0627\u0633", "country_code": "CX", "cities": [], "city_areas": [], "pobox_required": false }, "CY": { "name": "\u0642\u0628\u0631\u0635", "country_code": "CY", "cities": [], "city_areas": [], "pobox_required": false }, "CZ": { "name": "\u062c\u0645\u0647\u0648\u0631\u064a\u0629 \u0627\u0644\u062a\u0634\u064a\u0643", "country_code": "CZ", "cities": [], "city_areas": [], "pobox_required": false }, "DE": { "name": "\u0623\u0644\u0645\u0627\u0646\u064a\u0627", "country_code": "DE", "cities": [], "city_areas": [], "pobox_required": false }, "DJ": { "name": "\u062c\u064a\u0628\u0648\u062a\u064a", "country_code": "DJ", "cities": [], "city_areas": [], "pobox_required": false }, "DK": { "name": "\u0627\u0644\u062f\u0646\u0645\u0627\u0631\u0643", "country_code": "DK", "cities": [], "city_areas": [], "pobox_required": false }, "DM": { "name": "\u062f\u0648\u0645\u064a\u0646\u064a\u0643\u0627", "country_code": "DM", "cities": [], "city_areas": [], "pobox_required": false }, "DO": { "name": "\u062c\u0645\u0647\u0648\u0631\u064a\u0629 \u0627\u0644\u062f\u0648\u0645\u064a\u0646\u064a\u0643", "country_code": "DO", "cities": [], "city_areas": [], "pobox_required": false }, "DZ": { "name": "\u0627\u0644\u062c\u0632\u0627\u0626\u0631", "country_code": "DZ", "cities": [], "city_areas": [], "pobox_required": false }, "EC": { "name": "\u0627\u0644\u0625\u0643\u0648\u0627\u062f\u0648\u0631", "country_code": "EC", "cities": [], "city_areas": [], "pobox_required": false }, "EE": { "name": "\u0625\u0633\u062a\u0648\u0646\u064a\u0627", "country_code": "EE", "cities": [], "city_areas": [], "pobox_required": false }, "EG": { "name": "\u0645\u0635\u0631", "country_code": "EG", "cities": [], "city_areas": [], "pobox_required": false }, "EH": { "name": "\u0627\u0644\u0635\u062d\u0631\u0627\u0621 \u0627\u0644\u063a\u0631\u0628\u064a\u0629", "country_code": "EH", "cities": [], "city_areas": [], "pobox_required": false }, "ER": { "name": "\u0625\u0631\u064a\u062a\u0631\u064a\u0627", "country_code": "ER", "cities": [], "city_areas": [], "pobox_required": false }, "ES": { "name": "\u0625\u0633\u0628\u0627\u0646\u064a\u0627", "country_code": "ES", "cities": [], "city_areas": [], "pobox_required": false }, "ET": { "name": "\u0625\u062b\u064a\u0648\u0628\u064a\u0627", "country_code": "ET", "cities": [], "city_areas": [], "pobox_required": false }, "FI": { "name": "\u0641\u0646\u0644\u0646\u062f\u0627", "country_code": "FI", "cities": [], "city_areas": [], "pobox_required": false }, "FJ": { "name": "\u0641\u064a\u062c\u064a", "country_code": "FJ", "cities": [], "city_areas": [], "pobox_required": false }, "FK": { "name": "\u062c\u0632\u0631 \u0641\u0648\u0643\u0644\u0627\u0646\u062f (\u062c\u0632\u0631 \u0645\u0627\u0644\u0641\u064a\u0646\u0627\u0633)", "country_code": "FK", "cities": [], "city_areas": [], "pobox_required": false }, "FM": { "name": "\u0648\u0644\u0627\u064a\u0627\u062a \u0645\u064a\u0643\u0631\u0648\u0646\u064a\u0633\u064a\u0627 \u0627\u0644\u0645\u062a\u062d\u062f\u0629", "country_code": "FM", "cities": [], "city_areas": [], "pobox_required": false }, "FO": { "name": "\u062c\u0632\u0631 \u0641\u0627\u0631\u0648", "country_code": "FO", "cities": [], "city_areas": [], "pobox_required": false }, "FR": { "name": "\u0641\u0631\u0646\u0633\u0627", "country_code": "FR", "cities": [], "city_areas": [], "pobox_required": false }, "GA": { "name": "\u0627\u0644\u063a\u0627\u0628\u0648\u0646", "country_code": "GA", "cities": [], "city_areas": [], "pobox_required": false }, "GB": { "name": "\u0627\u0644\u0645\u0645\u0644\u0643\u0629 \u0627\u0644\u0645\u062a\u062d\u062f\u0629", "country_code": "GB", "cities": [], "city_areas": [], "pobox_required": false }, "GD": { "name": "\u063a\u0631\u064a\u0646\u0627\u062f\u0627", "country_code": "GD", "cities": [], "city_areas": [], "pobox_required": false }, "GE": { "name": "\u062c\u0648\u0631\u062c\u064a\u0627", "country_code": "GE", "cities": [], "city_areas": [], "pobox_required": false }, "GF": { "name": "\u063a\u0648\u064a\u0627\u0646\u0627 \u0627\u0644\u0641\u0631\u0646\u0633\u064a\u0629", "country_code": "GF", "cities": [], "city_areas": [], "pobox_required": false }, "GG": { "name": "\u063a\u064a\u0631\u0646\u0632\u064a", "country_code": "GG", "cities": [], "city_areas": [], "pobox_required": false }, "GH": { "name": "\u063a\u0627\u0646\u0627", "country_code": "GH", "cities": [], "city_areas": [], "pobox_required": false }, "GI": { "name": "\u062c\u0628\u0644 \u0637\u0627\u0631\u0642", "country_code": "GI", "cities": [], "city_areas": [], "pobox_required": false }, "GL": { "name": "\u062c\u0631\u064a\u0646\u0644\u0627\u0646\u062f", "country_code": "GL", "cities": [], "city_areas": [], "pobox_required": false }, "GM": { "name": "\u063a\u0627\u0645\u0628\u064a\u0627", "country_code": "GM", "cities": [], "city_areas": [], "pobox_required": false }, "GN": { "name": "\u063a\u064a\u0646\u064a\u0627", "country_code": "GN", "cities": [], "city_areas": [], "pobox_required": false }, "GP": { "name": "\u063a\u0648\u0627\u062f\u0644\u0648\u0628", "country_code": "GP", "cities": [], "city_areas": [], "pobox_required": false }, "GQ": { "name": "\u063a\u064a\u0646\u064a\u0627 \u0627\u0644\u0627\u0633\u062a\u0648\u0627\u0626\u064a\u0629", "country_code": "GQ", "cities": [], "city_areas": [], "pobox_required": false }, "GR": { "name": "\u0627\u0644\u064a\u0648\u0646\u0627\u0646", "country_code": "GR", "cities": [], "city_areas": [], "pobox_required": false }, "GS": { "name": "\u062c\u0648\u0631\u062c\u064a\u0627 \u0627\u0644\u062c\u0646\u0648\u0628\u064a\u0629 \u0648\u062c\u0632\u0631 \u0633\u0627\u0646\u062f\u0648\u064a\u062a\u0634 \u0627\u0644\u062c\u0646\u0648\u0628\u064a\u0629", "country_code": "GS", "cities": [], "city_areas": [], "pobox_required": false }, "GT": { "name": "\u062c\u0648\u0627\u062a\u064a\u0645\u0627\u0644\u0627", "country_code": "GT", "cities": [], "city_areas": [], "pobox_required": false }, "GU": { "name": "\u063a\u0648\u0627\u0645", "country_code": "GU", "cities": [], "city_areas": [], "pobox_required": false }, "GW": { "name": "\u063a\u064a\u0646\u064a\u0627 \u0628\u064a\u0633\u0627\u0648", "country_code": "GW", "cities": [], "city_areas": [], "pobox_required": false }, "GY": { "name": "\u063a\u064a\u0627\u0646\u0627", "country_code": "GY", "cities": [], "city_areas": [], "pobox_required": false }, "HK": { "name": "\u0647\u0648\u0646\u063a \u0643\u0648\u0646\u063a", "country_code": "HK", "cities": [], "city_areas": [], "pobox_required": false }, "HM": { "name": "\u062c\u0632\u064a\u0631\u0629 \u0647\u064a\u0631\u062f \u0648\u062c\u0632\u0631 \u0645\u0627\u0643\u062f\u0648\u0646\u0627\u0644\u062f", "country_code": "HM", "cities": [], "city_areas": [], "pobox_required": false }, "HN": { "name": "\u0647\u0646\u062f\u0648\u0631\u0627\u0633", "country_code": "HN", "cities": [], "city_areas": [], "pobox_required": false }, "HR": { "name": "\u0643\u0631\u0648\u0627\u062a\u064a\u0627", "country_code": "HR", "cities": [], "city_areas": [], "pobox_required": false }, "HT": { "name": "\u0647\u0627\u064a\u062a\u064a", "country_code": "HT", "cities": [], "city_areas": [], "pobox_required": false }, "HU": { "name": "\u0647\u0646\u063a\u0627\u0631\u064a\u0627", "country_code": "HU", "cities": [], "city_areas": [], "pobox_required": false }, "ID": { "name": "\u0625\u0646\u062f\u0648\u0646\u064a\u0633\u064a\u0627", "country_code": "ID", "cities": [], "city_areas": [], "pobox_required": false }, "IE": { "name": "\u0623\u064a\u0631\u0644\u0646\u062f\u0627", "country_code": "IE", "cities": [], "city_areas": [], "pobox_required": false }, "IL": { "name": "\u0625\u0633\u0631\u0627\u0626\u064a\u0644", "country_code": "IL", "cities": [], "city_areas": [], "pobox_required": false }, "IM": { "name": "\u062c\u0632\u064a\u0631\u0629 \u0625\u064a\u0644 \u0623\u0648\u0641 \u0645\u0627\u0646", "country_code": "IM", "cities": [], "city_areas": [], "pobox_required": false }, "IN": { "name": "\u0627\u0644\u0647\u0646\u062f", "country_code": "IN", "cities": [], "city_areas": [], "pobox_required": false }, "IO": { "name": "\u0625\u0642\u0644\u064a\u0645 \u0627\u0644\u0645\u062d\u064a\u0637 \u0627\u0644\u0647\u0646\u062f\u064a \u0627\u0644\u0628\u0631\u064a\u0637\u0627\u0646\u064a", "country_code": "IO", "cities": [], "city_areas": [], "pobox_required": false }, "IS": { "name": "\u0622\u064a\u0633\u0644\u0646\u062f\u0627", "country_code": "IS", "cities": [], "city_areas": [], "pobox_required": false }, "IT": { "name": "\u0625\u064a\u0637\u0627\u0644\u064a\u0627", "country_code": "IT", "cities": [], "city_areas": [], "pobox_required": false }, "JE": { "name": "\u062c\u064a\u0631\u0633\u064a", "country_code": "JE", "cities": [], "city_areas": [], "pobox_required": false }, "JM": { "name": "\u062c\u0627\u0645\u0627\u064a\u0643\u0627", "country_code": "JM", "cities": [], "city_areas": [], "pobox_required": false }, "JO": { "name": "\u0627\u0644\u0623\u0631\u062f\u0646", "country_code": "JO", "cities": [], "city_areas": [], "pobox_required": false }, "JP": { "name": "\u0627\u0644\u064a\u0627\u0628\u0627\u0646", "country_code": "JP", "cities": [], "city_areas": [], "pobox_required": false }, "KE": { "name": "\u0643\u064a\u0646\u064a\u0627", "country_code": "KE", "cities": [], "city_areas": [], "pobox_required": false }, "KG": { "name": "\u0642\u0631\u063a\u064a\u0632\u0633\u062a\u0627\u0646", "country_code": "KG", "cities": [], "city_areas": [], "pobox_required": false }, "KH": { "name": "\u0643\u0645\u0628\u0648\u062f\u064a\u0627", "country_code": "KH", "cities": [], "city_areas": [], "pobox_required": false }, "KI": { "name": "\u0643\u0631\u064a\u0628\u0627\u062a\u064a", "country_code": "KI", "cities": [], "city_areas": [], "pobox_required": false }, "KM": { "name": "\u0643\u0648\u0645\u0631\u0648\u0633", "country_code": "KM", "cities": [], "city_areas": [], "pobox_required": false }, "KN": { "name": "\u0633\u0627\u0646\u062a \u0643\u064a\u062a\u0633 \u0648\u0646\u064a\u0641\u064a\u0633", "country_code": "KN", "cities": [], "city_areas": [], "pobox_required": false }, "KR": { "name": "\u062c\u0645\u0647\u0648\u0631\u064a\u0629 \u0643\u0648\u0631\u064a\u0627", "country_code": "KR", "cities": [], "city_areas": [], "pobox_required": false }, "KW": { "name": "\u0627\u0644\u0643\u0648\u064a\u062a", "country_code": "KW", "cities": [], "city_areas": [], "pobox_required": false }, "KY": { "name": "\u062c\u0632\u0631 \u0627\u0644\u0643\u0627\u064a\u0645\u0627\u0646", "country_code": "KY", "cities": [], "city_areas": [], "pobox_required": false }, "KZ": { "name": "\u0643\u0627\u0632\u0627\u062e\u0633\u062a\u0627\u0646", "country_code": "KZ", "cities": [], "city_areas": [], "pobox_required": false }, "LA": { "name": "\u062c\u0645\u0647\u0648\u0631\u064a\u0629 \u0644\u0627\u0648 \u0627\u0644\u0634\u0639\u0628\u064a\u0629 \u0627\u0644\u062f\u064a\u0645\u0648\u0642\u0631\u0627\u0637\u064a\u0629", "country_code": "LA", "cities": [], "city_areas": [], "pobox_required": false }, "LB": { "name": "\u0644\u0628\u0646\u0627\u0646", "country_code": "LB", "cities": [], "city_areas": [], "pobox_required": false }, "LC": { "name": "\u0633\u0627\u0646\u062a \u0644\u0648\u0633\u064a\u0627", "country_code": "LC", "cities": [], "city_areas": [], "pobox_required": false }, "LI": { "name": "\u0644\u064a\u062e\u062a\u0646\u0634\u062a\u0627\u064a\u0646", "country_code": "LI", "cities": [], "city_areas": [], "pobox_required": false }, "LK": { "name": "\u0633\u064a\u0631\u064a\u0644\u0627\u0646\u0643\u0627", "country_code": "LK", "cities": [], "city_areas": [], "pobox_required": false }, "LR": { "name": "\u0644\u064a\u0628\u064a\u0631\u064a\u0627", "country_code": "LR", "cities": [], "city_areas": [], "pobox_required": false }, "LS": { "name": "\u0644\u064a\u0633\u0648\u062a\u0648", "country_code": "LS", "cities": [], "city_areas": [], "pobox_required": false }, "LT": { "name": "\u0644\u064a\u062a\u0648\u0627\u0646\u064a\u0627", "country_code": "LT", "cities": [], "city_areas": [], "pobox_required": false }, "LU": { "name": "\u0644\u0648\u0643\u0633\u0645\u0628\u0648\u0631\u063a", "country_code": "LU", "cities": [], "city_areas": [], "pobox_required": false }, "LV": { "name": "\u0644\u0627\u062a\u064a\u0641\u064a\u0627", "country_code": "LV", "cities": [], "city_areas": [], "pobox_required": false }, "MA": { "name": "\u0627\u0644\u0645\u063a\u0631\u0628", "country_code": "MA", "cities": [], "city_areas": [], "pobox_required": false }, "MC": { "name": "\u0645\u0648\u0646\u0627\u0643\u0648", "country_code": "MC", "cities": [], "city_areas": [], "pobox_required": false }, "MD": { "name": "\u062c\u0645\u0647\u0648\u0631\u064a\u0629 \u0645\u0648\u0644\u062f\u0648\u0641\u0627", "country_code": "MD", "cities": [], "city_areas": [], "pobox_required": false }, "ME": { "name": "\u0627\u0644\u062c\u0628\u0644 \u0627\u0644\u0623\u0633\u0648\u062f", "country_code": "ME", "cities": [], "city_areas": [], "pobox_required": false }, "MG": { "name": "\u0645\u062f\u063a\u0634\u0642\u0631", "country_code": "MG", "cities": [], "city_areas": [], "pobox_required": false }, "MH": { "name": "\u062c\u0632\u0631 \u0645\u0627\u0631\u0634\u0627\u0644", "country_code": "MH", "cities": [], "city_areas": [], "pobox_required": false }, "MK": { "name": "\u0645\u0642\u062f\u0648\u0646\u064a\u0627", "country_code": "MK", "cities": [], "city_areas": [], "pobox_required": false }, "MM": { "name": "(\u0628\u0648\u0631\u0645\u0627) \u0645\u064a\u0627\u0646\u0645\u0627\u0631\t", "country_code": "MM", "cities": [], "city_areas": [], "pobox_required": false }, "MN": { "name": "\u0645\u0646\u063a\u0648\u0644\u064a\u0627", "country_code": "MN", "cities": [], "city_areas": [], "pobox_required": false }, "MO": { "name": "\u0645\u0627\u0643\u0627\u0648", "country_code": "MO", "cities": [], "city_areas": [], "pobox_required": false }, "MP": { "name": "\u062c\u0632\u0631 \u0645\u0627\u0631\u064a\u0627\u0646\u0627 \u0627\u0644\u0634\u0645\u0627\u0644\u064a\u0629", "country_code": "MP", "cities": [], "city_areas": [], "pobox_required": false }, "MQ": { "name": "\u0645\u0627\u0631\u062a\u064a\u0646\u064a\u0643", "country_code": "MQ", "cities": [], "city_areas": [], "pobox_required": false }, "MR": { "name": "\u0645\u0648\u0631\u064a\u062a\u0627\u0646\u064a\u0627", "country_code": "MR", "cities": [], "city_areas": [], "pobox_required": false }, "MS": { "name": "\u0645\u0648\u0646\u062a\u064a\u0633\u0631\u0627\u062a", "country_code": "MS", "cities": [], "city_areas": [], "pobox_required": false }, "MT": { "name": "\u0645\u0627\u0644\u0637\u0627", "country_code": "MT", "cities": [], "city_areas": [], "pobox_required": false }, "MU": { "name": "\u0645\u0648\u0631\u064a\u0634\u064a\u0648\u0633", "country_code": "MU", "cities": [], "city_areas": [], "pobox_required": false }, "MV": { "name": "\u0627\u0644\u0645\u0627\u0644\u062f\u064a\u0641", "country_code": "MV", "cities": [], "city_areas": [], "pobox_required": false }, "MW": { "name": "\u0645\u0627\u0644\u0627\u0648\u064a", "country_code": "MW", "cities": [], "city_areas": [], "pobox_required": false }, "MX": { "name": "\u0627\u0644\u0645\u0643\u0633\u064a\u0643", "country_code": "MX", "cities": [], "city_areas": [], "pobox_required": false }, "MY": { "name": "\u0645\u0627\u0644\u064a\u0632\u064a\u0627", "country_code": "MY", "cities": [], "city_areas": [], "pobox_required": false }, "MZ": { "name": "\u0645\u0648\u0632\u0645\u0628\u064a\u0642", "country_code": "MZ", "cities": [], "city_areas": [], "pobox_required": false }, "NA": { "name": "\u0646\u0627\u0645\u064a\u0628\u064a\u0627", "country_code": "NA", "cities": [], "city_areas": [], "pobox_required": false }, "NC": { "name": "\u0643\u0627\u0644\u064a\u062f\u0648\u0646\u064a\u0627 \u0627\u0644\u062c\u062f\u064a\u062f\u0629", "country_code": "NC", "cities": [], "city_areas": [], "pobox_required": false }, "NE": { "name": "\u0627\u0644\u0646\u064a\u062c\u0631", "country_code": "NE", "cities": [], "city_areas": [], "pobox_required": false }, "NF": { "name": "\u062c\u0632\u064a\u0631\u0629 \u0646\u0648\u0631\u0641\u0648\u0644\u0643", "country_code": "NF", "cities": [], "city_areas": [], "pobox_required": false }, "NG": { "name": "\u0646\u064a\u062c\u064a\u0631\u064a\u0627", "country_code": "NG", "cities": [], "city_areas": [], "pobox_required": false }, "NI": { "name": "\u0646\u064a\u0643\u0627\u0631\u0627\u062c\u0648\u0627", "country_code": "NI", "cities": [], "city_areas": [], "pobox_required": false }, "NL": { "name": "\u0647\u0648\u0644\u0646\u062f\u0627", "country_code": "NL", "cities": [], "city_areas": [], "pobox_required": false }, "NO": { "name": "\u0627\u0644\u0646\u0631\u0648\u064a\u062c", "country_code": "NO", "cities": [], "city_areas": [], "pobox_required": false }, "NP": { "name": "\u0646\u064a\u0628\u0627\u0644", "country_code": "NP", "cities": [], "city_areas": [], "pobox_required": false }, "NR": { "name": "\u0646\u0627\u0648\u0631\u0648", "country_code": "NR", "cities": [], "city_areas": [], "pobox_required": false }, "NU": { "name": "\u0646\u064a\u0648\u064a", "country_code": "NU", "cities": [], "city_areas": [], "pobox_required": false }, "NZ": { "name": "\u0646\u064a\u0648\u0632\u064a\u0644\u0646\u062f\u0627", "country_code": "NZ", "cities": [], "city_areas": [], "pobox_required": false }, "OM": { "name": "\u0639\u064f\u0645\u0627\u0646", "country_code": "OM", "cities": [], "city_areas": [], "pobox_required": false }, "PA": { "name": "\u0628\u0646\u0645\u0627", "country_code": "PA", "cities": [], "city_areas": [], "pobox_required": false }, "PE": { "name": "\u0628\u064a\u0631\u0648", "country_code": "PE", "cities": [], "city_areas": [], "pobox_required": false }, "PF": { "name": "\u0628\u0648\u0644\u064a\u0646\u064a\u0632\u064a\u0627 \u0627\u0644\u0641\u0631\u0646\u0633\u064a\u0629", "country_code": "PF", "cities": [], "city_areas": [], "pobox_required": false }, "PG": { "name": "\u0628\u0627\u0628\u0648\u0627 \u063a\u064a\u0646\u064a\u0627 \u0627\u0644\u062c\u062f\u064a\u062f\u0629", "country_code": "PG", "cities": [], "city_areas": [], "pobox_required": false }, "PH": { "name": "\u0627\u0644\u0641\u0644\u0628\u064a\u0646", "country_code": "PH", "cities": [], "city_areas": [], "pobox_required": false }, "PK": { "name": "\u0628\u0627\u0643\u0633\u062a\u0627\u0646", "country_code": "PK", "cities": [], "city_areas": [], "pobox_required": false }, "PL": { "name": "\u0628\u0648\u0644\u0646\u062f\u0627", "country_code": "PL", "cities": [], "city_areas": [], "pobox_required": false }, "PM": { "name": "\u0633\u0627\u0646\u062a \u0628\u064a\u064a\u0631 \u0648\u0645\u064a\u0643\u0644\u0648\u0646", "country_code": "PM", "cities": [], "city_areas": [], "pobox_required": false }, "PN": { "name": "\u0628\u064a\u062a\u0643\u064a\u0631\u0646", "country_code": "PN", "cities": [], "city_areas": [], "pobox_required": false }, "PR": { "name": "\u0628\u0648\u0631\u062a\u0648\u0631\u064a\u0643\u0648", "country_code": "PR", "cities": [], "city_areas": [], "pobox_required": false }, "PS": { "name": "\u0627\u0644\u0641\u0644\u0633\u0637\u064a\u0646\u064a\u0629", "country_code": "PS", "cities": [], "city_areas": [], "pobox_required": false }, "PT": { "name": "\u0627\u0644\u0628\u0631\u062a\u063a\u0627\u0644", "country_code": "PT", "cities": [], "city_areas": [], "pobox_required": false }, "PW": { "name": "\u0628\u0627\u0644\u0627\u0648", "country_code": "PW", "cities": [], "city_areas": [], "pobox_required": false }, "PY": { "name": "\u0628\u0627\u0631\u0627\u063a\u0648\u0627\u064a", "country_code": "PY", "cities": [], "city_areas": [], "pobox_required": false }, "QA": { "name": "\u0642\u0637\u0631", "country_code": "QA", "cities": [], "city_areas": [], "pobox_required": false }, "RE": { "name": "\u0631\u064a\u0648\u0646\u064a\u0648\u0646", "country_code": "RE", "cities": [], "city_areas": [], "pobox_required": false }, "RO": { "name": "\u0631\u0648\u0645\u0627\u0646\u064a\u0627", "country_code": "RO", "cities": [], "city_areas": [], "pobox_required": false }, "RS": { "name": "\u0635\u0631\u0628\u064a\u0627", "country_code": "RS", "cities": [], "city_areas": [], "pobox_required": false }, "RU": { "name": "\u0631\u0648\u0633\u064a\u0627", "country_code": "RU", "cities": [], "city_areas": [], "pobox_required": false }, "RW": { "name": "\u0631\u0648\u0627\u0646\u062f\u0627", "country_code": "RW", "cities": [], "city_areas": [], "pobox_required": false }, "SA": { "name": "\u0627\u0644\u0645\u0645\u0644\u0643\u0629 \u0627\u0644\u0639\u0631\u0628\u064a\u0629 \u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629", "country_code": "SA", "cities": [], "city_areas": [], "pobox_required": false }, "SB": { "name": "\u062c\u0632\u0631 \u0633\u0644\u064a\u0645\u0627\u0646", "country_code": "SB", "cities": [], "city_areas": [], "pobox_required": false }, "SC": { "name": "\u0633\u064a\u0634\u0644", "country_code": "SC", "cities": [], "city_areas": [], "pobox_required": false }, "SD": { "name": "\u0627\u0644\u0633\u0648\u062f\u0627\u0646", "country_code": "SD", "cities": [], "city_areas": [], "pobox_required": false }, "SE": { "name": "\u0627\u0644\u0633\u0648\u064a\u062f", "country_code": "SE", "cities": [], "city_areas": [], "pobox_required": false }, "SG": { "name": "\u0633\u0646\u063a\u0627\u0641\u0648\u0631\u0629", "country_code": "SG", "cities": [], "city_areas": [], "pobox_required": false }, "SH": { "name": "\u0633\u0627\u0646\u062a \u0647\u064a\u0644\u064a\u0646\u0627", "country_code": "SH", "cities": [], "city_areas": [], "pobox_required": false }, "SI": { "name": "\u0633\u0644\u0648\u0641\u064a\u0646\u064a\u0627", "country_code": "SI", "cities": [], "city_areas": [], "pobox_required": false }, "SJ": { "name": "\u0633\u0641\u0627\u0644\u0628\u0627\u0631\u062f \u0648\u064a\u0627\u0646 \u0645\u0627\u064a\u0646", "country_code": "SJ", "cities": [], "city_areas": [], "pobox_required": false }, "SK": { "name": "\u0633\u0644\u0648\u0641\u0627\u0643\u064a\u0627", "country_code": "SK", "cities": [], "city_areas": [], "pobox_required": false }, "SL": { "name": "\u0633\u064a\u0631\u0627\u0644\u064a\u0648\u0646", "country_code": "SL", "cities": [], "city_areas": [], "pobox_required": false }, "SM": { "name": "\u0633\u0627\u0646 \u0645\u0627\u0631\u064a\u0646\u0648", "country_code": "SM", "cities": [], "city_areas": [], "pobox_required": false }, "SN": { "name": "\u0627\u0644\u0633\u0646\u063a\u0627\u0644", "country_code": "SN", "cities": [], "city_areas": [], "pobox_required": false }, "SR": { "name": "\u0633\u0648\u0631\u064a\u0646\u0627\u0645", "country_code": "SR", "cities": [], "city_areas": [], "pobox_required": false }, "ST": { "name": "\u0633\u0627\u0648 \u062a\u0648\u0645\u064a \u0648\u0628\u0631\u064a\u0646\u0633\u064a\u0628", "country_code": "ST", "cities": [], "city_areas": [], "pobox_required": false }, "SV": { "name": "\u0627\u0644\u0633\u0644\u0641\u0627\u062f\u0648\u0631", "country_code": "SV", "cities": [], "city_areas": [], "pobox_required": false }, "SX": { "name": "Sint Maarten", "country_code": "SX", "cities": [], "city_areas": [], "pobox_required": false }, "SY": { "name": "\u0633\u0648\u0631\u064a\u0627", "country_code": "SY", "cities": [], "city_areas": [], "pobox_required": false }, "SZ": { "name": "\u0645\u0645\u0644\u0643\u0629 \u0633\u0648\u0627\u0632\u064a\u0644\u0627\u0646\u062f", "country_code": "SZ", "cities": [], "city_areas": [], "pobox_required": false }, "TC": { "name": "\u062c\u0632\u0631 \u062a\u0631\u0643\u0633 \u0648\u0643\u0627\u064a\u0643\u0648\u0633", "country_code": "TC", "cities": [], "city_areas": [], "pobox_required": false }, "TD": { "name": "\u062a\u0634\u0627\u062f", "country_code": "TD", "cities": [], "city_areas": [], "pobox_required": false }, "TF": { "name": "\u0627\u0644\u0623\u0631\u0627\u0636\u064a \u0627\u0644\u062c\u0646\u0648\u0628\u064a\u0629 \u0644\u0641\u0631\u0646\u0633\u0627", "country_code": "TF", "cities": [], "city_areas": [], "pobox_required": false }, "TG": { "name": "\u062a\u0648\u063a\u0648", "country_code": "TG", "cities": [], "city_areas": [], "pobox_required": false }, "TH": { "name": "\u062a\u0627\u064a\u0644\u0627\u0646\u062f", "country_code": "TH", "cities": [], "city_areas": [], "pobox_required": false }, "TJ": { "name": "\u0637\u0627\u062c\u064a\u0643\u0633\u062a\u0627\u0646", "country_code": "TJ", "cities": [], "city_areas": [], "pobox_required": false }, "TK": { "name": "\u062a\u0648\u0643\u064a\u0644\u0627\u0648", "country_code": "TK", "cities": [], "city_areas": [], "pobox_required": false }, "TL": { "name": "\u062a\u064a\u0645\u0648\u0631 \u0627\u0644\u0634\u0631\u0642\u064a\u0629", "country_code": "TL", "cities": [], "city_areas": [], "pobox_required": false }, "TM": { "name": "\u062a\u0631\u0643\u0645\u0627\u0646\u0633\u062a\u0627\u0646", "country_code": "TM", "cities": [], "city_areas": [], "pobox_required": false }, "TN": { "name": "\u062a\u0648\u0646\u0633", "country_code": "TN", "cities": [], "city_areas": [], "pobox_required": false }, "TO": { "name": "\u062a\u0648\u0646\u063a\u0627", "country_code": "TO", "cities": [], "city_areas": [], "pobox_required": false }, "TR": { "name": "\u062a\u0631\u0643\u064a\u0627", "country_code": "TR", "cities": [], "city_areas": [], "pobox_required": false }, "TT": { "name": "\u062a\u0631\u064a\u0646\u062f\u0627\u062f \u0648\u062a\u0648\u0628\u0627\u063a\u0648", "country_code": "TT", "cities": [], "city_areas": [], "pobox_required": false }, "TV": { "name": "\u062a\u0648\u0641\u0627\u0644\u0648", "country_code": "TV", "cities": [], "city_areas": [], "pobox_required": false }, "TW": { "name": "\u062a\u0627\u064a\u0648\u0627\u0646", "country_code": "TW", "cities": [], "city_areas": [], "pobox_required": false }, "TZ": { "name": "\u062c\u0645\u0647\u0648\u0631\u064a\u0629 \u062a\u0627\u0646\u0632\u0627\u0646\u064a\u0627 \u0627\u0644\u0627\u062a\u062d\u0627\u062f\u064a\u0629", "country_code": "TZ", "cities": [], "city_areas": [], "pobox_required": false }, "UA": { "name": "\u0623\u0648\u0643\u0631\u0627\u0646\u064a\u0627", "country_code": "UA", "cities": [], "city_areas": [], "pobox_required": false }, "UG": { "name": "\u0623\u0648\u063a\u0646\u062f\u0627", "country_code": "UG", "cities": [], "city_areas": [], "pobox_required": false }, "UM": { "name": "\u062c\u0632\u0631\u0627\u0644\u0648\u0644\u0627\u064a\u0627\u062a \u0627\u0644\u0645\u062a\u062d\u062f\u0629 \u0627\u0644\u0635\u063a\u064a\u0631\u0629 \u0627\u0644\u0646\u0627\u0626\u064a\u0629", "country_code": "UM", "cities": [], "city_areas": [], "pobox_required": false }, "US": { "name": "\u0627\u0644\u0648\u0644\u0627\u064a\u0627\u062a \u0627\u0644\u0645\u062a\u062d\u062f\u0629", "country_code": "US", "cities": [], "city_areas": [], "pobox_required": false }, "UY": { "name": "\u0627\u0648\u0631\u0648\u062c\u0648\u0627\u064a", "country_code": "UY", "cities": [], "city_areas": [], "pobox_required": false }, "UZ": { "name": "\u0623\u0648\u0632\u0628\u0643\u0633\u062a\u0627\u0646", "country_code": "UZ", "cities": [], "city_areas": [], "pobox_required": false }, "VA": { "name": "\u0627\u0644\u0643\u0631\u0633\u064a \u0627\u0644\u0631\u0633\u0648\u0644\u064a", "country_code": "VA", "cities": [], "city_areas": [], "pobox_required": false }, "VC": { "name": "\u0633\u0627\u0646\u062a \u0641\u064a\u0646\u0633\u0646\u062a \u0648\u0627\u0644\u063a\u0631\u064a\u0646\u0627\u062f\u064a\u0646", "country_code": "VC", "cities": [], "city_areas": [], "pobox_required": false }, "VE": { "name": "\u0641\u0646\u0632\u0648\u064a\u0644\u0627", "country_code": "VE", "cities": [], "city_areas": [], "pobox_required": false }, "VG": { "name": "\u062c\u0632\u0631 \u0627\u0644\u0639\u0630\u0631\u0627\u0621 \u0627\u0644\u0628\u0631\u064a\u0637\u0627\u0646\u064a\u0629", "country_code": "VG", "cities": [], "city_areas": [], "pobox_required": false }, "VI": { "name": "\u062c\u0632\u0631 \u0627\u0644\u0639\u0630\u0631\u0627\u0621 \u0627\u0644\u0623\u0645\u0631\u064a\u0643\u064a\u0629", "country_code": "VI", "cities": [], "city_areas": [], "pobox_required": false }, "VN": { "name": "\u0641\u064a\u062a\u0646\u0627\u0645", "country_code": "VN", "cities": [], "city_areas": [], "pobox_required": false }, "VU": { "name": "\u0641\u0627\u0646\u0648\u0627\u062a\u0648", "country_code": "VU", "cities": [], "city_areas": [], "pobox_required": false }, "WF": { "name": "\u0648\u0627\u0644\u064a\u0633 \u0648\u0641\u0648\u062a\u0648\u0646\u0627", "country_code": "WF", "cities": [], "city_areas": [], "pobox_required": false }, "WS": { "name": "\u0633\u0627\u0645\u0648\u0627", "country_code": "WS", "cities": [], "city_areas": [], "pobox_required": false }, "YT": { "name": "\u0645\u0627\u064a\u0648\u062a", "country_code": "YT", "cities": [], "city_areas": [], "pobox_required": false }, "ZA": { "name": "\u062c\u0646\u0648\u0628 \u0623\u0641\u0631\u064a\u0642\u064a\u0627", "country_code": "ZA", "cities": [], "city_areas": [], "pobox_required": false }, "ZM": { "name": "\u0632\u0627\u0645\u0628\u064a\u0627", "country_code": "ZM", "cities": [], "city_areas": [], "pobox_required": false }, "ZW": { "name": "\u0632\u064a\u0645\u0628\u0627\u0628\u0648\u064a", "country_code": "ZW", "cities": [], "city_areas": [], "pobox_required": false }, "IC": { "name": "\u062c\u0632\u0631 \u0627\u0644\u0643\u0646\u0627\u0631\u064a", "country_code": "IC", "cities": [], "city_areas": [], "pobox_required": false }, "KV": { "name": "\u0643\u0648\u0633\u0648\u0641\u0648", "country_code": "KV", "cities": [], "city_areas": [], "pobox_required": false }, "XB": { "name": "\u0628\u0648\u0646\u064a\u0631", "country_code": "XB", "cities": [], "city_areas": [], "pobox_required": false }, "XC": { "name": "\u0643\u0648\u0631\u0627\u0633\u0627\u0648", "country_code": "XC", "cities": [], "city_areas": [], "pobox_required": false }, "XE": { "name": "\u0633\u064a\u0646\u062a \u0623\u0648\u0633\u062a\u0627\u062a\u064a\u0648\u0633", "country_code": "XE", "cities": [], "city_areas": [], "pobox_required": false }, "XM": { "name": "\u0633\u0627\u0646\u062a \u0645\u0627\u0631\u062a\u0646", "country_code": "XM", "cities": [], "city_areas": [], "pobox_required": false }, "XN": { "name": "\u0646\u064a\u0641\u064a\u0633", "country_code": "XN", "cities": [], "city_areas": [], "pobox_required": false }, "XY": { "name": "\u0633\u0627\u0646\u062a \u0628\u0627\u0631\u062a\u064a\u0644\u064a\u0645\u064a", "country_code": "XY", "cities": [], "city_areas": [], "pobox_required": false } };
    </script>



    <script src="https://uae.microless.com/assets/js/49c15b21.js"></script>
    <div class="modal fade" data-backdrop="false" id="deliver-to-selector" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">
                        اختر موقع التسليم الخاص بك
                    </h4>
                </div>
                <div class="modal-body">

                    <p class="info">
                        قد تختلف خيارات التسليم وسرعة التسليم حسب الموقع.
                    </p>


                    <a  class="btn btn-default manage-address">
                        تسجيل الدخول لإدارة العناوين
                    </a>


                    <div class="partition">
                        <hr>
                        <span>أو</span>
                    </div><!-- /.partition -->
                    <div class="form-group country-code">

                        <label for="country_code">
                            البلد
                        </label>

                    </div>

                    <div class="form-group cities model-cities">


                        <label for="city">
                            المدينة
                        </label>


                    </div><!-- /.form-group cities -->


                </div>

            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- Latest compiled and minified CSS -->
    <!-- Latest compiled and minified JavaScript -->
    <!--
    *
    *   MICRODATA SCHEMA
    *
    -->
    <!--
    *
    *   MICRODATA SCHEMA BREADCRUMPS
    *
    -->
    <script type="application/ld+json">

        {
            "@context": "http://schema.org",
            "@type": "BreadcrumbList",
            "itemListElement": [
                                                                                {
                            "@type": "ListItem",
                            "position": 1,
                            "item": {
                                                                    "@id": "http://smart4mn.com/",
                                                                "name": "الزعزعي تكنلوجي للتجهيزات البنكية والامنية"
                            }
                        }

                                     ,                                             {
                            "@type": "ListItem",
                            "position": 2,
                            "item": {
                                                                    "@id": "http://smart4mn.com/",
                                                                "name": "الات عد النقود اليمن"
                            }
                        }

                                     ,                                             {
                            "@type": "ListItem",
                            "position": 3,
                            "item": {
                                                                    "@id": "http://smart4mn.com/",
                                                                "name": "بيع الات عد النقود"
                            }
                        }

                                     ,                                             {
                            "@type": "ListItem",
                            "position": 4,
                            "item": {
                                                                    "@id": "http://smart4mn.com/",
                                                                "name": "قطع غيار الات عد النقود"
                            }
                        }

                                     ,                                             {
                            "@type": "ListItem",
                            "position": 5,
                            "item": {
                                                                    "@id": "http://smart4mn.com/",
                                                                "name": "الات عد النقود"
                            }
                        }

                            ]
        }
    </script>



    <!--
    *
    *   ZOOPIM
    *
    -->
    <!-- Start of microless Zendesk Widget script -->
    <!-- <script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=820de6b8-ab6d-45f3-bc62-4d0db2f1db46"> </script> -->
    <!-- <script type="text/javascript">
        window.zESettings = {
            webWidget: {
                zIndex: 999999999
            }
        };
    </script> -->
    <!-- End of microless Zendesk Widget script -->
    <!--
    *
    *   FACEBOOK
    *
    -->

    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '136155509916781',
                xfbml: true,
                version: 'v2.8'
            });
            FB.AppEvents.logPageView();
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>



    <style>
        .variant-images .item img {
            height: 500px !important;
            max-height: 100%;
            object-fit: contain;
            object-position: center;
        }

        body.body-page-product .select2-container {
            z-index: 9999 !important;
        }

        @media screen and (max-width: 767px) {
            body.dark-theme #collapseFilter.filter-wrap.collapse {
                background: var(--bg-main);
            }

            body.dark-theme ul#search-filter {
                border-color: var(--border-color-primary);
            }
        }

        body.rtl.dark-theme #header-search-mobile input.query-autocomplete.is-loading {
            background: url(/assets/img/is-loading.gif) var(--bg-four) no-repeat left 4px center;
            background-size: 22px;
        }
    </style>



    <!--
    *
    *   PRICENA TRACKER
    *
    -->







    
    </div>
    </form>
</body>
</html>
