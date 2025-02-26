<%-- 
    Document   : category
    Created on : Feb 26, 2025, 5:47:46 PM
    Author     : hungs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from portotheme.com/html/porto_ecommerce/category-horizontal-filter2.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:28:14 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Porto - Bootstrap eCommerce Template</title>

    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Porto - Bootstrap eCommerce Template">
    <meta name="author" content="SW-THEMES">

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/icons/favicon.png">


    <script>
        WebFontConfig = {
            google: {
                families: ['Open+Sans:300,400,600,700,800', 'Poppins:300,400,500,600,700', 'Shadows+Into+Light:400']
            }
        };
        (function(d) {
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css">
</head>

<body>
    <div class="page-wrapper">
     

        <jsp:include page="/common/header.jsp"></jsp:include>

        <!-- End .header -->

        <main class="main">
            <div class="category-banner-container bg-gray">
                <div class="category-banner banner text-uppercase" style="background: no-repeat 60%/cover url('assets/images/banners/banner-top.jpg');">
                    <div class="container position-relative">
                        <div class="row">
                            <div class="pl-lg-5 pb-5 pb-md-0 col-md-5 col-xl-4 col-lg-4 offset-1">
                                <h3>Electronic<br>Deals</h3>
                                <a href="category.jsp" class="btn btn-dark">Get Yours!</a>
                            </div>
                            <div class="pl-lg-3 col-md-4 offset-md-0 offset-1 pt-3">
                                <div class="coupon-sale-content">
                                    <h4 class="m-b-1 coupon-sale-text bg-white text-transform-none">Exclusive COUPON
                                    </h4>
                                    <h5 class="mb-2 coupon-sale-text d-block ls-10 p-0"><i class="ls-0">UP TO</i><b class="text-dark">$100</b> OFF</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <nav aria-label="breadcrumb" class="breadcrumb-nav">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="home.jsp"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="#">Men</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Accessories</li>
                    </ol>
                </nav>

                <nav class="toolbox sticky-header horizontal-filter filter-sorts" data-sticky-options="{'mobile': true}">
                    <div class="sidebar-overlay d-lg-none"></div>
                    <a href="#" class="sidebar-toggle border-0"><svg data-name="Layer 3" id="Layer_3"
							viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
							<line x1="15" x2="26" y1="9" y2="9" class="cls-1"></line>
							<line x1="6" x2="9" y1="9" y2="9" class="cls-1"></line>
							<line x1="23" x2="26" y1="16" y2="16" class="cls-1"></line>
							<line x1="6" x2="17" y1="16" y2="16" class="cls-1"></line>
							<line x1="17" x2="26" y1="23" y2="23" class="cls-1"></line>
							<line x1="6" x2="11" y1="23" y2="23" class="cls-1"></line>
							<path d="M14.5,8.92A2.6,2.6,0,0,1,12,11.5,2.6,2.6,0,0,1,9.5,8.92a2.5,2.5,0,0,1,5,0Z"
								class="cls-2"></path>
							<path d="M22.5,15.92a2.5,2.5,0,1,1-5,0,2.5,2.5,0,0,1,5,0Z" class="cls-2"></path>
							<path d="M21,16a1,1,0,1,1-2,0,1,1,0,0,1,2,0Z" class="cls-3"></path>
							<path d="M16.5,22.92A2.6,2.6,0,0,1,14,25.5a2.6,2.6,0,0,1-2.5-2.58,2.5,2.5,0,0,1,5,0Z"
								class="cls-2"></path>
						</svg>
						<span>Filter</span>
					</a>

                    <aside class="toolbox-left sidebar-shop mobile-sidebar">
                        <div class="toolbox-item toolbox-sort select-custom">
                            <a class="sort-menu-trigger" href="#">Size</a>
                            <ul class="sort-list">
                                <li><a href="#">Extra Large</a></li>
                                <li><a href="#">Large</a></li>
                                <li><a href="#">Medium</a></li>
                                <li><a href="#">Small</a></li>
                            </ul>
                        </div>
                        <!-- End .toolbox-item -->

                        <div class="toolbox-item toolbox-sort select-custom">
                            <a class="sort-menu-trigger" href="#">Color</a>
                            <ul class="sort-list">
                                <li><a href="#">Black</a></li>
                                <li><a href="#">Blue</a></li>
                                <li><a href="#">Brown</a></li>
                                <li><a href="#">Green</a></li>
                                <li><a href="#">Indigo</a></li>
                                <li><a href="#">Light Blue</a></li>
                                <li><a href="#">Red</a></li>
                                <li><a href="#">Yellow</a></li>
                            </ul>
                        </div>
                        <!-- End .toolbox-item -->

                        <div class="toolbox-item toolbox-sort price-sort select-custom">
                            <a class="sort-menu-trigger" href="#">Price</a>
                            <div class="sort-list">
                                <form class="filter-price-form d-flex align-items-center m-0">
                                    <input class="input-price mr-2" name="min_price" placeholder="55" /> -
                                    <input class="input-price mx-2" name="max_price" placeholder="111" />
                                    <button type="submit" class="btn btn-primary ml-3">Filter</button>
                                </form>
                            </div>
                        </div>
                        <!-- End .toolbox-item -->
                    </aside>
                    <!-- End .toolbox-left -->


                    <div class="toolbox-item toolbox-sort select-custom">
                        <select name="orderby" class="form-control">
							<option value="menu_order" selected="selected">Default sorting</option>
							<option value="popularity">Sort by popularity</option>
							<option value="rating">Sort by average rating</option>
							<option value="date">Sort by newness</option>
							<option value="price">Sort by price: low to high</option>
							<option value="price-desc">Sort by price: high to low</option>
						</select>
                    </div>
                    <!-- End .toolbox-item -->

                    <div class="toolbox-item toolbox-show ml-auto">
                        <label>Show:</label>

                        <div class="select-custom">
                            <select name="count" class="form-control">
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>
							</select>
                        </div>
                        <!-- End .select-custom -->
                    </div>
                    <!-- End .toolbox-item -->

                    <div class="toolbox-item layout-modes">
                        <a href="category.jsp" class="layout-btn btn-grid active" title="Grid">
                            <i class="icon-mode-grid"></i>
                        </a>
                        <a href="category-list.jsp" class="layout-btn btn-list" title="List">
                            <i class="icon-mode-list"></i>
                        </a>
                    </div>
                    <!-- End .layout-modes -->
                </nav>

                <div class="row">
                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-1.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-1-2.jpg" width="280" height="280" alt="product" />
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                    <div class="product-label label-sale">-20%</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Ultimate 3D Bluetooth Speaker</a>
                                </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
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
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-2.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-2-2.jpg" width="280" height="280" alt="product" />
                                </a>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Brown Women Casual HandBag</a> </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="product-price">$33.00</span>
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
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-3-2.jpg" width="280" height="280" alt="product" />
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-sale">-20%</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Circled Ultimate 3D Speaker</a> </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>

                                </div>
                                <!-- End .price-box -->
                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
											class="icon-shopping-cart"></i>ADD TO CART</a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
											class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-4.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-4-2.jpg" width="280" height="280" alt="product">
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-sale">-30%</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Blue Backpack for the Young - S</a>
                                </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
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
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-5.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-5-2.jpg" width="280" height="280" alt="product" />
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Casual Spring Blue Shoes</a> </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
                                </div>
                                <!-- End .price-box -->

                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
											class="icon-shopping-cart"></i>ADD TO CART</a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
											class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-6.jpg" width="280" height="280" alt="product">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-6-2.jpg" width="280" height="280" alt="product" />
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-sale">-8%</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Men Black Gentle Belt</a> </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
                                </div>
                                <!-- End .price-box -->

                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
											class="icon-shopping-cart"></i>ADD TO CART</a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
											class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-7.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-7-2.jpg" width="280" height="280" alt="product" />
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-sale">-8%</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Brown-Black Men Casual Glasses</a>
                                </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
                                </div>
                                <!-- End .price-box -->

                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
											class="icon-shopping-cart"></i>ADD TO CART</a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
											class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-8.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-8-2.jpg" width="280" height="280" alt="product" />
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-sale">-40%</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Brown-Black Men Casual Glasses</a>
                                </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
                                </div>
                                <!-- End .price-box -->

                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
											class="icon-shopping-cart"></i>ADD TO CART</a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
											class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-9.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-9-2.jpg" width="280" height="280" alt="product" />
                                </a>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Black Men Casual Glasses</a> </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
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
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-10.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-10-2.jpg" width="280" height="280" alt="product" />
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-sale">-30%</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Basketball Sports Blue Shoes</a> </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
                                </div>
                                <!-- End .price-box -->

                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
											class="icon-shopping-cart"></i>ADD TO CART</a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
											class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-11.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-11-2.jpg" width="280" height="280" alt="product" />
                                </a>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Men Sports Travel Bag</a> </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
                                </div>
                                <!-- End .price-box -->

                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
											class="icon-shopping-cart"></i>ADD TO CART</a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
											class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .col-sm-4 -->

                    <div class="col-6 col-sm-4 col-md-3">
                        <div class="product-default">
                            <figure>
                                <a href="product.jsp">
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-12.jpg" width="280" height="280" alt="product" />
                                    <img src="${pageContext.request.contextPath}/assets/images/products/product-12-2.jpg" width="280" height="280" alt="product" />
                                </a>

                                <div class="label-group">
                                    <div class="product-label label-hot">HOT</div>
                                </div>
                            </figure>

                            <div class="product-details">
                                <div class="category-wrap">
                                    <div class="category-list">
                                        <a href="category.jsp" class="product-category">category</a>
                                    </div>
                                </div>

                                <h3 class="product-title"> <a href="product.jsp">Brown HandBag</a> </h3>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:100%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->
                                </div>
                                <!-- End .product-container -->

                                <div class="price-box">
                                    <span class="old-price">$90.00</span>
                                    <span class="product-price">$70.00</span>
                                </div>
                                <!-- End .price-box -->

                                <div class="product-action">
                                    <a href="wishlist.jsp" class="btn-icon-wish" title="wishlist"><i
											class="icon-heart"></i></a>
                                    <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
											class="icon-shopping-cart"></i>ADD TO CART</a>
                                    <a href="ajax/product-quick-view.jsp" class="btn-quickview" title="Quick View"><i
											class="fas fa-external-link-alt"></i></a>
                                </div>
                            </div>
                            <!-- End .product-details -->
                        </div>
                    </div>
                    <!-- End .col-sm-4 -->
                </div>
                <!-- End .row -->

                <nav class="toolbox toolbox-pagination">
                    <div class="toolbox-item toolbox-show">
                        <label>Show:</label>

                        <div class="select-custom">
                            <select name="count" class="form-control">
								<option value="12">12</option>
								<option value="24">24</option>
								<option value="36">36</option>
							</select>
                        </div>
                        <!-- End .select-custom -->
                    </div>
                    <!-- End .toolbox-item -->

                    <ul class="pagination toolbox-item">
                        <li class="page-item disabled">
                            <a class="page-link page-link-btn" href="#"><i class="icon-angle-left"></i></a>
                        </li>
                        <li class="page-item active">
                            <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><span class="page-link">...</span></li>
                        <li class="page-item">
                            <a class="page-link page-link-btn" href="#"><i class="icon-angle-right"></i></a>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- End .container -->

            <div class="mb-4"></div>
            <!-- margin -->
        </main>
        <!-- End .main -->

        <jsp:include page="/common/footer.jsp"></jsp:include>

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

    <div class="mobile-menu-overlay"></div>
    <!-- End .mobil-menu-overlay -->

    <div class="mobile-menu-container">
        <div class="mobile-menu-wrapper">
            <span class="mobile-menu-close"><i class="fa fa-times"></i></span>
            <nav class="mobile-nav">
                <ul class="mobile-menu">
                    <li><a href="demo4.jsp">Home</a></li>
                    <li>
                        <a href="category.jsp">Categories</a>
                        <ul>
                            <li><a href="category.jsp">Full Width Banner</a></li>
                            <li><a href="category-banner-boxed-slider.jsp">Boxed Slider Banner</a></li>
                            <li><a href="category-banner-boxed-image.jsp">Boxed Image Banner</a></li>
                            <li><a href="https://www.portotheme.com/html/porto_ecommerce/category-sidebar-left.jsp">Left Sidebar</a></li>
                            <li><a href="category-sidebar-right.jsp">Right Sidebar</a></li>
                            <li><a href="category-off-canvas.jsp">Off Canvas Filter</a></li>
                            <li><a href="category-horizontal-filter1.jsp">Horizontal Filter 1</a></li>
                            <li><a href="category.jsp">Horizontal Filter 2</a></li>
                            <li><a href="#">List Types</a></li>
                            <li><a href="category-infinite-scroll.jsp">Ajax Infinite Scroll<span
										class="tip tip-new">New</span></a></li>
                            <li><a href="category.jsp">3 Columns Products</a></li>
                            <li><a href="category-4col.jsp">4 Columns Products</a></li>
                            <li><a href="category-5col.jsp">5 Columns Products</a></li>
                            <li><a href="category-6col.jsp">6 Columns Products</a></li>
                            <li><a href="category-7col.jsp">7 Columns Products</a></li>
                            <li><a href="category-8col.jsp">8 Columns Products</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="product.jsp">Products</a>
                        <ul>
                            <li>
                                <a href="#" class="nolink">PRODUCT PAGES</a>
                                <ul>
                                    <li><a href="product.jsp">SIMPLE PRODUCT</a></li>
                                    <li><a href="product-variable.jsp">VARIABLE PRODUCT</a></li>
                                    <li><a href="product.jsp">SALE PRODUCT</a></li>
                                    <li><a href="product.jsp">FEATURED & ON SALE</a></li>
                                    <li><a href="product-sticky-info.jsp">WIDTH CUSTOM TAB</a></li>
                                    <li><a href="product-sidebar-left.jsp">WITH LEFT SIDEBAR</a></li>
                                    <li><a href="product-sidebar-right.jsp">WITH RIGHT SIDEBAR</a></li>
                                    <li><a href="product-addcart-sticky.jsp">ADD CART STICKY</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="nolink">PRODUCT LAYOUTS</a>
                                <ul>
                                    <li><a href="product-extended-layout.jsp">EXTENDED LAYOUT</a></li>
                                    <li><a href="product-grid-layout.jsp">GRID IMAGE</a></li>
                                    <li><a href="product-full-width.jsp">FULL WIDTH LAYOUT</a></li>
                                    <li><a href="product-sticky-info.jsp">STICKY INFO</a></li>
                                    <li><a href="product-sticky-both.jsp">LEFT & RIGHT STICKY</a></li>
                                    <li><a href="product-transparent-image.jsp">TRANSPARENT IMAGE</a></li>
                                    <li><a href="product-center-vertical.jsp">CENTER VERTICAL</a></li>
                                    <li><a href="#">BUILD YOUR OWN</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Pages<span class="tip tip-hot">Hot!</span></a>
                        <ul>
                            <li>
                                <a href="wishlist.jsp">Wishlist</a>
                            </li>
                            <li>
                                <a href="cart.jsp">Shopping Cart</a>
                            </li>
                            <li>
                                <a href="checkout.jsp">Checkout</a>
                            </li>
                            <li>
                                <a href="dashboard.jsp">Dashboard</a>
                            </li>
                            <li>
                                <a href="login.jsp">Login</a>
                            </li>
                            <li>
                                <a href="forgot-password.jsp">Forgot Password</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="blog.jsp">Blog</a></li>
                    <li><a href="#">Elements</a>
                        <ul class="custom-scrollbar">
                            <li><a href="element-accordions.jsp">Accordion</a></li>
                            <li><a href="element-alerts.jsp">Alerts</a></li>
                            <li><a href="element-animations.jsp">Animations</a></li>
                            <li><a href="element-banners.jsp">Banners</a></li>
                            <li><a href="element-buttons.jsp">Buttons</a></li>
                            <li><a href="element-call-to-action.jsp">Call to Action</a></li>
                            <li><a href="element-countdown.jsp">Count Down</a></li>
                            <li><a href="element-counters.jsp">Counters</a></li>
                            <li><a href="element-headings.jsp">Headings</a></li>
                            <li><a href="element-icons.jsp">Icons</a></li>
                            <li><a href="element-info-box.jsp">Info box</a></li>
                            <li><a href="element-posts.jsp">Posts</a></li>
                            <li><a href="element-products.jsp">Products</a></li>
                            <li><a href="element-product-categories.jsp">Product Categories</a></li>
                            <li><a href="element-tabs.jsp">Tabs</a></li>
                            <li><a href="element-testimonial.jsp">Testimonials</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="mobile-menu mt-2 mb-2">
                    <li class="border-0">
                        <a href="#">
							Special Offer!
						</a>
                    </li>
                    <li class="border-0">
                        <a href="#" target="_blank">
							Buy Porto!
							<span class="tip tip-hot">Hot</span>
						</a>
                    </li>
                </ul>

                <ul class="mobile-menu">
                    <li><a href="login.jsp">My Account</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li><a href="blog.jsp">Blog</a></li>
                    <li><a href="wishlist.jsp">My Wishlist</a></li>
                    <li><a href="cart.jsp">Cart</a></li>
                    <li><a href="login.jsp" class="login-link">Log In</a></li>
                </ul>
            </nav>
            <!-- End .mobile-nav -->

            <form class="search-wrapper mb-2" action="#">
                <input type="text" class="form-control mb-0" placeholder="Search..." required />
                <button class="btn icon-search text-white bg-transparent p-0" type="submit"></button>
            </form>

            <div class="social-icons">
                <a href="#" class="social-icon social-facebook icon-facebook" target="_blank">
                </a>
                <a href="#" class="social-icon social-twitter icon-twitter" target="_blank">
                </a>
                <a href="#" class="social-icon social-instagram icon-instagram" target="_blank">
                </a>
            </div>
        </div>
        <!-- End .mobile-menu-wrapper -->
    </div>
    <!-- End .mobile-menu-container -->

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
    <script src="${pageContext.request.contextPath}/assets/js/plugins.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/nouislider.min.js"></script>

    <!-- Main JS File -->
    <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
</body>


<!-- Mirrored from portotheme.com/html/porto_ecommerce/category-horizontal-filter2.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:28:15 GMT -->
</html>
