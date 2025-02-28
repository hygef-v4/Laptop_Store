<%-- 
    Document   : cart.jsp
    Created on : Feb 26, 2025, 4:53:55 PM
    Author     : hungs
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/cart.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:27:40 GMT -->
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
                google: {families: ['Open+Sans:300,400,600,700,800', 'Poppins:300,400,500,600,700', 'Shadows+Into+Light:400']}
            };
            (function (d) {
                var wf = d.createElement('script'), s = d.scripts[ 0 ];
                wf.src = 'assets/js/webfont.js';
                wf.async = true;
                s.parentNode.insertBefore(wf, s);
            })(document);
        </script>

        <!-- Plugins CSS File -->=
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">

        <!-- Main CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css">
    </head>

    <body>
        <div class="page-wrapper">
           

            <jsp:include page="/view/common/header.jsp"></jsp:include>
            <!-- End .header -->

            <main class="main">
                <div class="container">
                    <ul class="checkout-progress-bar d-flex justify-content-center flex-wrap">
                        <li class="active">
                            <a href="cart.jsp">Giỏ Hàng</a>
                        </li>
                        <li>
                            <a href="checkout.jsp">Thanh toán</a>
                        </li>
                        <li class="disabled">
                            <a href="cart.jsp">Hoàn tất thanh toán</a>
                        </li>
                    </ul>

                    <div class="row">
                        <div class="col-lg-8">
                            <div class="cart-table-container">
                                <table class="table table-cart">
                                    <thead>
                                        <tr>
                                            <th class="thumbnail-col"></th>
                                            <th class="product-col">Sản phẩm</th>
                                            <th class="price-col">Giá tiền</th>
                                            <th class="qty-col">Số lượng</th>
                                            <th class="text-right">Tổng tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="product-row">
                                            <td>
                                                <figure class="product-image-container">
                                                    <a href="product.jsp" class="product-image">
                                                        <img src="${pageContext.request.contextPath}/assets/images/products/product-4.jpg" alt="product">
                                                    </a>

                                                    <a href="#" class="btn-remove icon-cancel" title="Remove Product"></a>
                                                </figure>
                                            </td>
                                            <td class="product-col">
                                                <h5 class="product-title">
                                                    <a href="product.jsp">Men Watch</a>
                                                </h5>
                                            </td>
                                            <td>$17.90</td>
                                            <td>
                                                <div class="product-single-qty">
                                                    <input class="horizontal-quantity form-control" type="text">
                                                </div><!-- End .product-single-qty -->
                                            </td>
                                            <td class="text-right"><span class="subtotal-price">$17.90</span></td>
                                        </tr>

                                        <tr class="product-row">
                                            <td>
                                                <figure class="product-image-container">
                                                    <a href="product.jsp" class="product-image">
                                                        <img src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg" alt="product">
                                                    </a>

                                                    <a href="#" class="btn-remove icon-cancel" title="Remove Product"></a>
                                                </figure>
                                            </td>
                                            <td class="product-col">
                                                <h5 class="product-title">
                                                    <a href="product.jsp">Men Watch</a>
                                                </h5>
                                            </td>
                                            <td>$17.90</td>
                                            <td>
                                                <div class="product-single-qty">
                                                    <input class="horizontal-quantity form-control" type="text">
                                                </div><!-- End .product-single-qty -->
                                            </td>
                                            <td class="text-right"><span class="subtotal-price">$17.90</span></td>
                                        </tr>

                                        <tr class="product-row">
                                            <td>
                                                <figure class="product-image-container">
                                                    <a href="product.jsp" class="product-image">
                                                        <img src="${pageContext.request.contextPath}/assets/images/products/product-6.jpg" alt="product">
                                                    </a>

                                                    <a href="#" class="btn-remove icon-cancel" title="Remove Product"></a>
                                                </figure>
                                            </td>
                                            <td class="product-col">
                                                <h5 class="product-title">
                                                    <a href="product.jsp">Men Black Gentle Belt</a>
                                                </h5>
                                            </td>
                                            <td>$17.90</td>
                                            <td>
                                                <div class="product-single-qty">
                                                    <input class="horizontal-quantity form-control" type="text">
                                                </div><!-- End .product-single-qty -->
                                            </td>
                                            <td class="text-right"><span class="subtotal-price">$17.90</span></td>
                                        </tr>
                                    </tbody>


                                    <tfoot>
                                        <tr>
                                            <td colspan="5" class="clearfix">
                                                <div class="float-left">
                                                    <div class="cart-discount">
                                                        <form action="#">
                                                            <div class="input-group">
                                                                <input type="text" class="form-control form-control-sm"
                                                                       placeholder="Nhập mã giảm giá" required>
                                                                <div class="input-group-append">
                                                                    <button class="btn btn-sm" type="submit">Áp dụng mà giảm giá</button>
                                                                </div>
                                                            </div><!-- End .input-group -->
                                                        </form>
                                                    </div>
                                                </div><!-- End .float-left -->

                                                <div class="float-right">
                                                    <button type="submit" class="btn btn-shop btn-update-cart">
                                                        CẬP NHẬT GIỎ HÀNG
                                                    </button>
                                                </div><!-- End .float-right -->
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div><!-- End .cart-table-container -->
                        </div><!-- End .col-lg-8 -->

                        <div class="col-lg-4">
                            <div class="cart-summary">
                                <h3>Giỏ Hàng</h3>

                                <table class="table table-totals">
                                    <tbody>
                                        <tr>
                                            <td>Tạm tính</td>
                                            <td>$17.90</td>
                                        </tr>
                                        
                                        <tr>
                                            <td>Giảm giá</td>
                                            <td>$7.90</td>
                                        </tr>

<!--                                        <tr>
                                            <td colspan="2" class="text-left">
                                                <h4>Vận chuyển</h4>

                                                <div class="form-group form-group-custom-control">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" class="custom-control-input" name="radio"
                                                               checked>
                                                        <label class="custom-control-label">Nhận tại cửa hàng</label>
                                                    </div> End .custom-checkbox 
                                                </div> End .form-group 

                                                <div class="form-group form-group-custom-control mb-0">
                                                    <div class="custom-control custom-radio mb-0">
                                                        <input type="radio" name="radio" class="custom-control-input">
                                                        <label class="custom-control-label">Giao hàng tại nhà</label>
                                                    </div> End .custom-checkbox 
                                                </div> End .form-group 

                                                <form action="#">
                                                    <div class="form-group form-group-sm">
                                                        <label>Shipping to <strong>NY.</strong></label>
                                                        <div class="select-custom">
                                                            <select class="form-control form-control-sm">
                                                                <option value="USA">United States (US)</option>
                                                                <option value="Turkey">Turkey</option>
                                                                <option value="China">China</option>
                                                                <option value="Germany">Germany</option>
                                                            </select>
                                                        </div> End .select-custom 
                                                    </div> End .form-group 

                                                    <div class="form-group form-group-sm">
                                                        <div class="select-custom">
                                                            <select class="form-control form-control-sm">
                                                                <option value="NY">New York</option>
                                                                <option value="CA">California</option>
                                                                <option value="TX">Texas</option>
                                                            </select>
                                                        </div> End .select-custom 
                                                    </div> End .form-group 

                                                    <div class="form-group form-group-sm">
                                                        <input type="text" class="form-control form-control-sm"
                                                               placeholder="Thành phố / Tỉnh">
                                                    </div> End .form-group 

                                                    <div class="form-group form-group-sm">
                                                        <input type="text" class="form-control form-control-sm"
                                                               placeholder="Mã ZIP">
                                                    </div> End .form-group 

                                                    <button type="submit" class="btn btn-shop btn-update-total">
                                                        Tổng tiền hàng
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>-->
                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <td>Tổng cộng</td>
                                            <td>$17.90</td>
                                        </tr>
                                    </tfoot>
                                </table>

                                <div class="checkout-methods">
                                    <a href="checkout.jsp" class="btn btn-block btn-dark">Tiến hành thanh toán
                                        <i class="fa fa-arrow-right"></i></a>
                                </div>
                            </div><!-- End .cart-summary -->
                        </div><!-- End .col-lg-4 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->

                <div class="mb-6"></div><!-- margin -->
            </main><!-- End .main -->

            <jsp:include page="/view/common/footer.jsp"></jsp:include>

                <!-- End .footer -->
            </div><!-- End .page-wrapper -->

            <div class="loading-overlay">
                <div class="bounce-loader">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>

            <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

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
                </div><!-- End .mobile-menu-wrapper -->
            </div><!-- End .mobile-menu-container -->

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

        <!-- Main JS File -->
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/cart.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:27:42 GMT -->
</html>
