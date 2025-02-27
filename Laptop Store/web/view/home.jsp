<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/demo4.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:29:23 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>FbtShop.com</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="Porto - Bootstrap eCommerce Template">
        <meta name="author" content="SW-THEMES">

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/icons/favicon.png">


        <script>
            WebFontConfig = {
                google: {
                    families: ['Open+Sans:300,400,600,700,800', 'Poppins:300,400,500,600,700,800', 'Oswald:300,400,500,600,700,800']
                }
            };
            (function (d) {
                var wf = d.createElement('script'),
                        s = d.scripts[0];
                wf.src = 'assets/js/webfont.js';
                wf.async = true;
                s.parentNode.insertBefore(wf, s);
            })(document);
        </script>

        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">

        <!-- Main CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/demo4.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css">
    </head>

    <body>
        <div class="page-wrapper">



            <jsp:include page="/view/common/header.jsp"></jsp:include>
                <!-- End .header -->


                <div class="home-slider slide-animate owl-carousel owl-theme show-nav-hover nav-big mb-2 text-uppercase" data-owl-options="{
                     'loop': false
                     }">
                    <div class="home-slide home-slide1 banner">
                        <img class="slide-bg" src="${pageContext.request.contextPath}/assets/images/demoes/demo4/slider/slide-13.jpg" width="1903" height="499" alt="slider image">
                    <div class="container d-flex align-items-center">
                        <div class="banner-layer appear-animate" data-animation-name="fadeInUpShorter">
                            <h4 class="text-transform-none m-b-3">Bứt phá cùng công nghệ!</h4>
                            <!--                                <h2 class="text-transform-none mb-0">Khuye</h2>-->
                            <h3 class="m-b-3" style="font-size: 3.8em;">Giảm giá 30%</h3>

                            <h5 class="d-inline-block mb-0">
                                <span>Chỉ với</span>
                                <b class="coupon-sale-text text-white bg-secondary align-middle"><sup>vnđ</sup><em
                                        class="align-text-top">16,999,999</em></b>
                            </h5>
                            <a href="category.jsp" class="btn btn-dark btn-lg">Mua ngay!</a>
                        </div>


                        <!-- End .banner-layer -->
                    </div>
                </div>
                <!-- End .home-slide -->

            </div>
            <!-- End .home-slider -->

            <div class="container">
                <div class="info-boxes-slider owl-carousel owl-theme mb-2" data-owl-options="{
                     'dots': false,
                     'loop': false,
                     'responsive': {
                     '576': {
                     'items': 2
                     },
                     '992': {
                     'items': 3
                     }
                     }
                     }">
                    <div class="info-box info-box-icon-left">
                        <i class="icon-shipping"></i>

                        <div class="info-box-content">
                            <h4>MIỄN PHÍ VẬN CHUYỂN &amp; ĐỔI TRẢ</h4>
                            <p class="text-body">Freeship cho đơn hàng từ 1,000,000 vnđ.</p>
                        </div>
                        <!-- End .info-box-content -->
                    </div>
                    <!-- End .info-box -->

                    <div class="info-box info-box-icon-left">
                        <i class="icon-money"></i>

                        <div class="info-box-content">
                            <h4>ĐẢM BẢO HOÀN TIỀN</h4>
                            <p class="text-body">Hoàn tiền 100% nếu không hài lòng.</p>
                        </div>
                        <!-- End .info-box-content -->
                    </div>
                    <!-- End .info-box -->

                    <div class="info-box info-box-icon-left">
                        <i class="icon-support"></i>

                        <div class="info-box-content">
                            <h4>HỖ TRỢ TRỰC TUYẾN 24/7</h4>
                            <p class="text-body">Luôn sẵn sàng hỗ trợ bạn mọi lúc, mọi nơi.</p>
                        </div>
                        <!-- End .info-box-content -->
                    </div>
                    <!-- End .info-box -->
                </div>
                <!-- End .info-boxes-slider -->

                <!--                    <div class="banners-container mb-2">
                                        <div class="banners-slider owl-carousel owl-theme" data-owl-options="{
                                             'dots': false
                                             }">
                                            <div class="banner banner1 banner-sm-vw d-flex align-items-center appear-animate" style="background-color: #ccc;" data-animation-name="fadeInLeftShorter" data-animation-delay="500">
                                                <figure class="w-100">
                                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/banners/banner-1.jpg" alt="banner" width="380" height="175" />
                                                </figure>
                                                <div class="banner-layer">
                                                    <h3 class="m-b-2">Porto Watches</h3>
                                                    <h4 class="m-b-3 text-primary"><sup class="text-dark"><del>20%</del></sup>30%<sup>OFF</sup></h4>
                                                    <a href="category.jsp" class="btn btn-sm btn-dark">Shop Now</a>
                                                </div>
                                            </div>
                                             End .banner 
                
                                            <div class="banner banner2 banner-sm-vw text-uppercase d-flex align-items-center appear-animate" data-animation-name="fadeInUpShorter" data-animation-delay="200">
                                                <figure class="w-100">
                                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/banners/banner-2.jpg" style="background-color: #ccc;" alt="banner" width="380" height="175" />
                                                </figure>
                                                <div class="banner-layer text-center">
                                                    <div class="row align-items-lg-center">
                                                        <div class="col-lg-7 text-lg-right">
                                                            <h3>Deal Promos</h3>
                                                            <h4 class="pb-4 pb-lg-0 mb-0 text-body">Starting at $99</h4>
                                                        </div>
                                                        <div class="col-lg-5 text-lg-left px-0 px-xl-3">
                                                            <a href="category.jsp" class="btn btn-sm btn-dark">Shop Now</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                             End .banner 
                
                                            <div class="banner banner3 banner-sm-vw d-flex align-items-center appear-animate" style="background-color: #ccc;" data-animation-name="fadeInRightShorter" data-animation-delay="500">
                                                <figure class="w-100">
                                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/banners/banner-3.jpg" alt="banner" width="380" height="175" />
                                                </figure>
                                                <div class="banner-layer text-right">
                                                    <h3 class="m-b-2">Handbags</h3>
                                                    <h4 class="m-b-2 text-secondary text-uppercase">Starting at $99</h4>
                                                    <a href="category.jsp" class="btn btn-sm btn-dark">Shop Now</a>
                                                </div>
                                            </div>
                                             End .banner 
                                        </div>
                                    </div>-->
            </div>
            <!-- End .container -->

            <section class="featured-products-section">
                <div class="container">
                    <h2 class="section-title heading-border ls-20 border-0">Sản phẩm nổi bật</h2>

                    <div class="products-slider custom-products owl-carousel owl-theme nav-outer show-nav-hover nav-image-center" data-owl-options="{
                         'dots': false,
                         'nav': true
                         }">
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-1.jpg" width="280" height="280" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-1-2.jpg" width="280" height="280" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                    <div class="product-label label-sale">-20%</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Ultimate 3D Bluetooth Speaker</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="product.jsp" class="btn-icon btn-add-cart"><i
                                            class="fa fa-arrow-right"></i><span>THÊM VÀO GIỎ HÀNG</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-2.jpg" width="280" height="280" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-2-2.jpg" width="280" height="280" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                    <div class="product-label label-sale">-30%</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Brown Women Casual HandBag</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="product.jsp" class="btn-icon btn-add-cart"><i
                                            class="fa fa-arrow-right"></i><span>SELECT
                                            OPTIONS</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg" width="280" height="280" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-3-2.jpg" width="280" height="280" alt="product">
                                </a>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Circled Ultimate 3D Speaker</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
                                            class="icon-shopping-cart"></i><span>ADD TO CART</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-4.jpg" width="280" height="280" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-4-2.jpg" width="280" height="280" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                    <div class="product-label label-sale">-40%</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Blue Backpack for the Young - S</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
                                            class="icon-shopping-cart"></i><span>ADD TO CART</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-5.jpg" width="280" height="280" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-5-2.jpg" width="280" height="280" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                    <div class="product-label label-sale">-15%</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Casual Spring Blue Shoes</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
                                            class="icon-shopping-cart"></i><span>ADD TO CART</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .featured-proucts -->
                </div>
            </section>

            <section class="new-products-section">
                <div class="container">
                    <h2 class="section-title heading-border ls-20 border-0">Sản phẩm mới</h2>

                    <div class="products-slider custom-products owl-carousel owl-theme nav-outer show-nav-hover nav-image-center mb-2" data-owl-options="{
                         'dots': false,
                         'nav': true,
                         'responsive': {
                         '992': {
                         'items': 4
                         },
                         '1200': {
                         'items': 5
                         }
                         }
                         }">
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-6.jpg" width="220" height="220" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-6-2.jpg" width="220" height="220" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Men Black Gentle Belt</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
                                            class="icon-shopping-cart"></i><span>ADD TO CART</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-7.jpg" width="220" height="220" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-7-2.jpg" width="220" height="220" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Brown-Black Men Casual Glasses</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
                                            class="icon-shopping-cart"></i><span>ADD TO CART</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-8.jpg" width="220" height="220" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-8-2.jpg" width="220" height="220" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-sale">-20%</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Brown-Black Men Casual Glasses</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
                                            class="icon-shopping-cart"></i><span>ADD TO CART</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-9.jpg" width="220" height="220" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-9-2.jpg" width="220" height="220" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-sale">-30%</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Black Men Casual Glasses</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="product.jsp" class="btn-icon btn-add-cart"><i
                                            class="fa fa-arrow-right"></i><span>SELECT
                                            OPTIONS</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-10.jpg" width="220" height="220" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-10-2.jpg" width="220" height="220" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Basketball Sports Blue Shoes</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
                                            class="icon-shopping-cart"></i><span>ADD TO CART</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                        <div class="product-default appear-animate" data-animation-name="fadeInRightShorter">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-11.jpg" width="220" height="220" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-11-2.jpg" width="220" height="220" alt="product">
                                </a>
                                <div class="label-group">
                                    <div class="product-label label-sale">-20%</div>
                                </div>
                            </figure>
                            <div class="product-details">
                                <div class="category-list">
                                    <a href="category.jsp" class="product-category">Category</a>
                                </div>
                                <h3 class="product-title">
                                    <a href="product.jsp">Men Sports Travel Bag</a>
                                </h3>
                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:80%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->
                                <div class="price-box">
                                    <del class="old-price">$59.00</del>
                                    <span class="product-price">$49.00</span>
                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
                                            class="icon-heart"></i></a>
                                    <a href="product.jsp" class="btn-icon btn-add-cart"><i
                                            class="fa fa-arrow-right"></i><span>SELECT
                                            OPTIONS</span></a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
                                            class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .featured-proucts -->

                    <div class="banner banner-big-sale appear-animate" data-animation-delay="200" data-animation-name="fadeInUpShorter" style="background: #2A95CB center/cover url('assets/images/demoes/demo4/banners/banner-4.jpg');">
                        <div class="banner-content row align-items-center mx-0">
                            <div class="col-md-9 col-sm-8">
                                <h2 class="text-white text-uppercase text-center text-sm-left ls-n-20 mb-md-0 px-4">
                                    <b class="d-inline-block mr-3 mb-1 mb-md-0">SIÊU KHUYẾN MÃI</b> TẤT CẢ SẢN PHẨM GIẢM ĐẾN 50%
                                    <small class="text-transform-none align-middle">Chỉ áp dụng cho mua sắm trực tuyến</small>
                                </h2>
                            </div>
                            <div class="col-md-3 col-sm-4 text-center text-sm-right">
                                <a class="btn btn-light btn-white btn-lg" href="category.jsp">XEM NGAY</a>
                            </div>
                        </div>
                    </div>

                    <h2 class="section-title categories-section-title heading-border border-0 ls-0 appear-animate" 
                        data-animation-delay="100" data-animation-name="fadeInUpShorter">Khám Phá Sản Phẩm 
                    </h2>

                    <div class="categories-slider owl-carousel owl-theme show-nav-hover nav-outer">
                        <div class="product-category appear-animate" data-animation-name="fadeInUpShorter">
                            <a href="category.jsp">
                                <figure>
                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/products/categories/category-1.jpg" alt="category" width="280" height="240" />
                                </figure>
                                <div class="category-content">
                                    <h3>Dress</h3>
                                    <span><mark class="count">3</mark> products</span>
                                </div>
                            </a>
                        </div>

                        <div class="product-category appear-animate" data-animation-name="fadeInUpShorter">
                            <a href="category.jsp">
                                <figure>
                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/products/categories/category-2.jpg" alt="category" width="220" height="220" />
                                </figure>
                                <div class="category-content">
                                    <h3>Watches</h3>
                                    <span><mark class="count">3</mark> products</span>
                                </div>
                            </a>
                        </div>

                        <div class="product-category appear-animate" data-animation-name="fadeInUpShorter">
                            <a href="category.jsp">
                                <figure>
                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/products/categories/category-3.jpg" alt="category" width="220" height="220" />
                                </figure>
                                <div class="category-content">
                                    <h3>Machine</h3>
                                    <span><mark class="count">3</mark> products</span>
                                </div>
                            </a>
                        </div>

                        <div class="product-category appear-animate" data-animation-name="fadeInUpShorter">
                            <a href="category.jsp">
                                <figure>
                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/products/categories/category-4.jpg" alt="category" width="220" height="220" />
                                </figure>
                                <div class="category-content">
                                    <h3>Sofa</h3>
                                    <span><mark class="count">3</mark> products</span>
                                </div>
                            </a>
                        </div>

                        <div class="product-category appear-animate" data-animation-name="fadeInUpShorter">
                            <a href="category.jsp">
                                <figure>
                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/products/categories/category-6.jpg" alt="category" width="220" height="220" />
                                </figure>
                                <div class="category-content">
                                    <h3>Headphone</h3>
                                    <span><mark class="count">3</mark> products</span>
                                </div>
                            </a>
                        </div>

                        <div class="product-category appear-animate" data-animation-name="fadeInUpShorter">
                            <a href="category.jsp">
                                <figure>
                                    <img src="${pageContext.request.contextPath}/assets/images/demoes/demo4/products/categories/category-5.jpg" alt="category" width="220" height="220" />
                                </figure>
                                <div class="category-content">
                                    <h3>Sports</h3>
                                    <span><mark class="count">3</mark> products</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <section class="feature-boxes-container">
                <div class="container appear-animate" data-animation-name="fadeInUpShorter">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="feature-box px-sm-5 feature-box-simple text-center">
                                <div class="feature-box-icon">
                                    <i class="icon-earphones-alt"></i>
                                </div>

                                <div class="feature-box-content p-0">
                                    <h3>Hỗ Trợ Khách Hàng</h3>
                                    <h5>Bạn Không Đơn Độc</h5>

                                    <p>Chúng tôi luôn quan tâm đến bạn và trang web của bạn. Khi mua hàng tại cửa hàng chúng tôi, bạn sẽ nhận được hỗ trợ miễn phí 100%.</p>
                                </div>
                                <!-- End .feature-box-content -->
                            </div>
                            <!-- End .feature-box -->
                        </div>
                        <!-- End .col-md-4 -->

                        <div class="col-md-4">
                            <div class="feature-box px-sm-5 feature-box-simple text-center">
                                <div class="feature-box-icon">
                                    <i class="icon-credit-card"></i>
                                </div>

                                <div class="feature-box-content p-0">
                                    <h3>Tùy Chỉnh Linh Hoạt</h3>
                                    <h5>Nhiều Lựa Chọn</h5>

                                    <p>Với cửa hàng của chúng tôi, bạn có thể tùy chỉnh giao diện, màu sắc và phong cách chỉ trong vài phút. Hãy bắt đầu tạo nên trải nghiệm mua sắm tuyệt vời ngay hôm nay!</p>
                                </div>
                                <!-- End .feature-box-content -->
                            </div>
                            <!-- End .feature-box -->
                        </div>
                        <!-- End .col-md-4 -->

                        <div class="col-md-4">
                            <div class="feature-box px-sm-5 feature-box-simple text-center">
                                <div class="feature-box-icon">
                                    <i class="icon-action-undo"></i>
                                </div>
                                <div class="feature-box-content p-0">
                                    <h3>Quản Lý Mạnh Mẽ</h3>
                                    <h5>Hỗ Trợ Bạn Tốt Nhất</h5>

                                    <p>Hệ thống quản lý mạnh mẽ giúp bạn dễ dàng thiết lập và vận hành cửa hàng trực tuyến chỉ trong vài phút, mà không cần kỹ năng lập trình chuyên sâu.</p>
                                </div>
                                <!-- End .feature-box-content -->
                            </div>
                            <!-- End .feature-box -->
                        </div>
                        <!-- End .col-md-4 -->
                    </div>
                    <!-- End .row -->
                </div>
                <!-- End .container-->
            </section>

            <!-- End .feature-boxes-container -->

            <section class="promo-section bg-dark" data-parallax="{'speed': 2, 'enableOnMobile': true}" data-image-src="${pageContext.request.contextPath}/assets/images/demoes/demo4/banners/banner-5.jpg">
                <div class="promo-banner banner container text-uppercase">
                    <div class="banner-content row align-items-center text-center">
                        <div class="col-md-4 ml-xl-auto text-md-right appear-animate" data-animation-name="fadeInRightShorter" data-animation-delay="600">
                            <h2 class="mb-md-0 text-white">Ưu Đãi Laptop<br>Hàng Đầu</h2>
                        </div>
                        <div class="col-md-4 col-xl-3 pb-4 pb-md-0 appear-animate" data-animation-name="fadeIn" data-animation-delay="300">
                            <a href="category.jsp" class="btn btn-dark btn-black ls-10">Xem Khuyến Mãi</a>
                        </div>
                        <div class="col-md-4 mr-xl-auto text-md-left appear-animate" data-animation-name="fadeInLeftShorter" data-animation-delay="600">
                            <h4 class="mb-1 mt-1 font1 coupon-sale-text p-0 d-block ls-n-10 text-transform-none">
                                <b>MÃ GIẢM GIÁ ĐỘC QUYỀN</b>
                            </h4>
                            <h5 class="mb-1 coupon-sale-text text-white ls-10 p-0">
                                <b class="text-white bg-secondary ls-n-10">₫2,500,000</b>
                            </h5>
                        </div>
                    </div>
                </div>
            </section>


            <section class="blog-section pb-0">
                <div class="container">
                    <h2 class="section-title heading-border border-0 appear-animate" data-animation-name="fadeInUp">
                        Tin tức laptop mới nhất</h2>

                    <div class="owl-carousel owl-theme appear-animate" data-animation-name="fadeIn" data-owl-options="{
                         'loop': false,
                         'margin': 20,
                         'autoHeight': true,
                         'autoplay': false,
                         'dots': false,
                         'items': 2,
                         'responsive': {
                         '0': {
                         'items': 1
                         },
                         '480': {
                         'items': 2
                         },
                         '576': {
                         'items': 3
                         },
                         '768': {
                         'items': 4
                         }
                         }
                         }">
                        <article class="post">
                            <div class="post-media">
                                <a href="https://vnexpress.net/don-ap-thue-cua-ong-trump-co-the-lam-tang-gia-smartphone-laptop-4844018.html">
                                    <img style="width: 280px; height: 187px" src="https://i1-sohoa.vnecdn.net/2025/01/28/laptop-1738056387-2999-1738056471.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=-BGjJM97AFL0fr49TRzRFg" alt="Post" width="225" height="280">
                                </a>
                                <div class="post-date">
                                    <span class="day">26</span>
                                    <span class="month">Feb</span>
                                </div>
                            </div>
                            <!-- End .post-media -->

                            <div class="post-body">
                                <h2 class="post-title">
                                    <a href="https://vnexpress.net/don-ap-thue-cua-ong-trump-co-the-lam-tang-gia-smartphone-laptop-4844018.html">Đòn áp thuế của ông Trump có thể làm tăng giá smartphone, laptop</a>
                                </h2>
                                <div class="post-content">
                                    <p>Nếu ông Trump thực hiện lời đe dọa áp thuế, hàng loạt thiết bị công nghệ như smartphone, laptop và tablet có thể bị tăng giá đáng kể....</p>
                                </div>
                                <!-- End .post-content -->
                                <a href="" class="post-comment">99 Bình luận</a>
                            </div>
                            <!-- End .post-body -->
                        </article>
                        <!-- End .post -->

                        <article class="post">
                            <div class="post-media">
                                <a href="https://vnexpress.net/loat-laptop-msi-giup-toi-uu-hieu-suat-lam-viec-giai-tri-4850575.html">
                                    <img src="https://i1-sohoa.vnecdn.net/2025/02/18/2-1739850370-6762-1739851025.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=yKMhBJOx23yfkiIyClBDsQ" alt="Post" width="225" height="280">
                                </a>
                                <div class="post-date">
                                    <span class="day">20</span>
                                    <span class="month">Feb</span>
                                </div>
                            </div>
                            <!-- End .post-media -->

                            <div class="post-body">
                                <h2 class="post-title">
                                    <a href="https://vnexpress.net/loat-laptop-msi-giup-toi-uu-hieu-suat-lam-viec-giai-tri-4850575.html
                                       ">Loạt laptop MSI giúp tối ưu hiệu suất làm việc, giải trí</a>
                                </h2>
                                <div class="post-content">
                                    <p>Dân văn phòng có thể cân nhắc laptop MSI dòng Modern 14, 15 hoặc Prestige, trong khi Katana 15, Sword 16 HX có thể đáp ứng nhu cầu game thủ... </p>
                                </div>
                                <!-- End .post-content -->
                                <a href="" class="post-comment">17 Bình luận</a>
                            </div>
                            <!-- End .post-body -->
                        </article>
                        <!-- End .post -->

                        <article class="post">
                            <div class="post-media">
                                <a href="https://vnexpress.net/hai-diem-noi-bat-cua-laptop-asus-gaming-vivobook-k3605-4825674.html">
                                    <img style="width: 280px; height: 187px" src="https://i1-sohoa.vnecdn.net/2024/12/09/ASUS-Gaming-Vivobook-1-7993-1733733001.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=JeNzGVCR_0M70y6PLRFKCw" alt="Post" width="225" height="280">
                                </a>
                                <div class="post-date">
                                    <span class="day">16</span>
                                    <span class="month">Feb</span>
                                </div>
                            </div>
                            <!-- End .post-media -->

                            <div class="post-body">
                                <h2 class="post-title">
                                    <a href="https://vnexpress.net/hai-diem-noi-bat-cua-laptop-asus-gaming-vivobook-k3605-4825674.html">Hai điểm nổi bật của laptop Asus Gaming Vivobook K3605</a>
                                </h2>
                                <div class="post-content">
                                    <p>Asus Gaming Vivobook K3605 trang bị vi xử lý Intel Core i5 hiệu năng mạnh cùng thiết kế mỏng nhẹ....</p>
                                </div>
                                <!-- End .post-content -->
                                <a href="" class="post-comment">54 Bình luận</a>
                            </div>
                            <!-- End .post-body -->
                        </article>
                        <!-- End .post -->

                        <article class="post">
                            <div class="post-media">
                                <a href="https://vnexpress.net/goi-y-mot-so-laptop-co-cau-hinh-phu-hop-voi-sinh-vien-4821071.html">
                                    <img style="width: 280px; height: 187px" src="https://i1-sohoa.vnecdn.net/2024/11/27/hinh3-1-4597-1732697358.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=HYcDRrMp-dg3E2_uZ55B8g" alt="Post" width="225" height="280">
                                </a>
                                <div class="post-date">
                                    <span class="day">10</span>
                                    <span class="month">Feb</span>
                                </div>
                            </div>
                            <!-- End .post-media -->

                            <div class="post-body">
                                <h2 class="post-title">
                                    <a href="https://vnexpress.net/goi-y-mot-so-laptop-co-cau-hinh-phu-hop-voi-sinh-vien-4821071.html">
                                        Gợi ý một số laptop có cấu hình phù hợp với sinh viên
                                    </a>
                                </h2>
                                <div class="post-content">
                                    <p>Theo chuyên gia, khi lựa chọn laptop, sinh viên nên ưu tiên CPU tiết kiệm năng lượng, hiệu năng tốt...</p>
                                </div>
                                <!-- End .post-content -->
                                <a href="" class="post-comment">23 Bình luận</a>
                            </div>
                            <!-- End .post-body -->
                        </article>
                        <!-- End .post -->
                    </div>
                </div>
            </section>

            <!-- End .main -->

            <jsp:include page="/view/common/footer.jsp"></jsp:include>
                <!-- End .footer -->
            </div>
            <!-- End .page-wrapper -->

            <div class="loading-overlay">
                <div class="bounce-loader">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>



            <div class="sticky-navbar">
                <div class="sticky-info">
                    <a href="demo4.jsp">
                        <i class="icon-home"></i>Home
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="category.jsp" class="">
                        <i class="icon-bars"></i>Categories
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="wishlist.jsp" class="">
                        <i class="icon-wishlist-2"></i>Wishlist
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="login.jsp" class="">
                        <i class="icon-user-2"></i>Account
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="cart.jsp" class="">
                        <i class="icon-shopping-cart position-relative">
                            <span class="cart-count badge-circle">3</span>
                        </i>Cart
                    </a>
                </div>
            </div>



            <a id="scroll-top" href="#top" title="Top" role="button"><i class="icon-angle-up"></i></a>

            <!-- Plugins JS File -->
            <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/optional/isotope.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.appear.min.js"></script>

        <!-- Main JS File -->
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/demo4.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:29:31 GMT -->
</html>
