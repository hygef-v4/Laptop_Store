<%-- 
    Document   : forgot-password
    Created on : Feb 26, 2025, 6:20:48 PM
    Author     : hungs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/forgot-password.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:28:43 GMT -->
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

        <!-- Plugins CSS File -->
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
                    <div class="page-header">
                        <div class="container d-flex flex-column align-items-center">
                            <nav aria-label="breadcrumb" class="breadcrumb-nav">
                                <div class="container">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home.jsp">Trang chủ</a></li>
                                        <li class="breadcrumb-item"><a href="category.jsp">Cửa hàng</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">
                                            Tài khoản
                                        </li>
                                    </ol>
                                </div>
                            </nav>

                            <h1>Quên mật khẩu</h1>
                        </div>
                    </div>

                    <div class="container reset-password-container">
                        <div class="row">
                            <div class="col-lg-6 offset-lg-3">
                                <div class="feature-box border-top-primary">
                                    <div class="feature-box-content">
                                        <form class="mb-0" action="#">
                                            <p>
                                                Vui lòng nhập tên đăng nhập hoặc địa chỉ email của bạn. Bạn sẽ nhận được một liên kết để tạo mật khẩu mới qua email.
                                            </p>
                                            <div class="form-group mb-0">
                                                <label for="reset-email" class="font-weight-normal">Địa chỉ email</label>
                                                <input type="email" class="form-control" id="reset-email" name="reset-email"
                                                       required />
                                            </div>

                                            <div class="form-footer mb-0">
                                                <a href="login.jsp">Đăng nhập</a>

                                                <button type="submit"
                                                        class="btn btn-md btn-primary form-footer-right font-weight-normal text-transform-none mr-0">
                                                    Khôi phục mật khẩu
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                            <li><a href="home.jsp">Home</a></li>
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
                                    <li><a href="category-horizontal-filter2.jsp">Horizontal Filter 2</a></li>
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
                    </nav><!-- End .mobile-nav -->

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
                    <a href="home.jsp">
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


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/forgot-password.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:28:44 GMT -->
</html>
