<%-- 
    Document   : about
    Created on : Feb 26, 2025, 6:03:49 PM
    Author     : hungs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/about.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:29:21 GMT -->
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
                google: {families: ['Open+Sans:300,400,600,700,800', 'Poppins:300,400,500,600,700', 'Shadows+Into+Light:400', 'Playfair+Display:900']}
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
      

            <jsp:include page="/common/header.jsp"></jsp:include>

                <!-- End .header -->

                <main class="main about">
                    <div class="page-header page-header-bg text-left"
                         style="background: 50%/cover #D4E1EA url('assets/images/page-header-bg.jpg');">
                        <div class="container">
                            <h1><span>ABOUT US</span>
                                OUR COMPANY</h1>
                            <a href="contact.jsp" class="btn btn-dark">Contact</a>
                        </div><!-- End .container -->
                    </div><!-- End .page-header -->

                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                        <div class="container">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="demo4.jsp"><i class="icon-home"></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">About Us</li>
                            </ol>
                        </div><!-- End .container -->
                    </nav>

                    <div class="about-section">
                        <div class="container">
                            <h2 class="subtitle">OUR STORY</h2>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                                the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                                of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                                but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                                the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                                of type and scrambled it to make a type specimen book.</p>

                            <p class="lead">“ Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                                default model search for evolved over sometimes by accident, sometimes on purpose ”</p>
                        </div><!-- End .container -->
                    </div><!-- End .about-section -->

                    <div class="features-section bg-gray">
                        <div class="container">
                            <h2 class="subtitle">WHY CHOOSE US</h2>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="feature-box bg-white">
                                        <i class="icon-shipped"></i>

                                        <div class="feature-box-content p-0">
                                            <h3>Free Shipping</h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                                Ipsum has been the industr.</p>
                                        </div><!-- End .feature-box-content -->
                                    </div><!-- End .feature-box -->
                                </div><!-- End .col-lg-4 -->

                                <div class="col-lg-4">
                                    <div class="feature-box bg-white">
                                        <i class="icon-us-dollar"></i>

                                        <div class="feature-box-content p-0">
                                            <h3>100% Money Back Guarantee</h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                                Ipsum has been the industr.</p>
                                        </div><!-- End .feature-box-content -->
                                    </div><!-- End .feature-box -->
                                </div><!-- End .col-lg-4 -->

                                <div class="col-lg-4">
                                    <div class="feature-box bg-white">
                                        <i class="icon-online-support"></i>

                                        <div class="feature-box-content p-0">
                                            <h3>Online Support 24/7</h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                                Ipsum has been the industr.</p>
                                        </div><!-- End .feature-box-content -->
                                    </div><!-- End .feature-box -->
                                </div><!-- End .col-lg-4 -->
                            </div><!-- End .row -->
                        </div><!-- End .container -->
                    </div><!-- End .features-section -->

                    <div class="testimonials-section">
                        <div class="container">
                            <h2 class="subtitle text-center">HAPPY CLIENTS</h2>

                            <div class="testimonials-carousel owl-carousel owl-theme images-left" data-owl-options="{
                                 'margin': 20,
                                 'lazyLoad': true,
                                 'autoHeight': true,
                                 'dots': false,
                                 'responsive': {
                                 '0': {
                                 'items': 1
                                 },
                                 '992': {
                                 'items': 2
                                 }
                                 }
                                 }">
                                <div class="testimonial">
                                    <div class="testimonial-owner">
                                        <figure>
                                            <img src="${pageContext.request.contextPath}/assets/images/clients/client1.png" alt="client">
                                    </figure>

                                    <div>
                                        <strong class="testimonial-title">John Smith</strong>
                                        <span>SMARTWAVE CEO</span>
                                    </div>
                                </div><!-- End .testimonial-owner -->

                                <blockquote>
                                    <p>Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mipsum
                                        dolor sit amet, consectetur elitad adipiscing cas non placerat mi.</p>
                                </blockquote>
                            </div><!-- End .testimonial -->

                            <div class="testimonial">
                                <div class="testimonial-owner">
                                    <figure>
                                        <img src="${pageContext.request.contextPath}/assets/images/clients/client2.png" alt="client">
                                    </figure>

                                    <div>
                                        <strong class="testimonial-title">Bob Smith</strong>
                                        <span>SMARTWAVE CEO</span>
                                    </div>
                                </div><!-- End .testimonial-owner -->

                                <blockquote>
                                    <p>Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mipsum
                                        dolor sit amet, consectetur elitad adipiscing cas non placerat mi.</p>
                                </blockquote>
                            </div><!-- End .testimonial -->

                            <div class="testimonial">
                                <div class="testimonial-owner">
                                    <figure>
                                        <img src="${pageContext.request.contextPath}/assets/images/clients/client1.png" alt="client">
                                    </figure>

                                    <div>
                                        <strong class="testimonial-title">John Smith</strong>
                                        <span>SMARTWAVE CEO</span>
                                    </div>
                                </div><!-- End .testimonial-owner -->

                                <blockquote>
                                    <p>Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mipsum
                                        dolor sit amet, consectetur elitad adipiscing cas non placerat mi.</p>
                                </blockquote>
                            </div><!-- End .testimonial -->
                        </div><!-- End .testimonials-slider -->
                    </div><!-- End .container -->
                </div><!-- End .testimonials-section -->

                <div class="counters-section bg-gray">
                    <div class="container">
                        <div class="row">
                            <div class="col-6 col-md-4 count-container">
                                <div class="count-wrapper">
                                    <span class="count-to" data-from="0" data-to="200" data-speed="2000"
                                          data-refresh-interval="50">200</span>+
                                </div><!-- End .count-wrapper -->
                                <h4 class="count-title">MILLION CUSTOMERS</h4>
                            </div><!-- End .col-md-4 -->

                            <div class="col-6 col-md-4 count-container">
                                <div class="count-wrapper">
                                    <span class="count-to" data-from="0" data-to="1800" data-speed="2000"
                                          data-refresh-interval="50">1800</span>+
                                </div><!-- End .count-wrapper -->
                                <h4 class="count-title">TEAM MEMBERS</h4>
                            </div><!-- End .col-md-4 -->

                            <div class="col-6 col-md-4 count-container">
                                <div class="count-wrapper line-height-1">
                                    <span class="count-to" data-from="0" data-to="24" data-speed="2000"
                                          data-refresh-interval="50">24</span><span>HR</span>
                                </div><!-- End .count-wrapper -->
                                <h4 class="count-title">SUPPORT AVAILABLE</h4>
                            </div><!-- End .col-md-4 -->

                            <div class="col-6 col-md-4 count-container">
                                <div class="count-wrapper">
                                    <span class="count-to" data-from="0" data-to="265" data-speed="2000"
                                          data-refresh-interval="50">265</span>+
                                </div><!-- End .count-wrapper -->
                                <h4 class="count-title">SUPPORT AVAILABLE</h4>
                            </div><!-- End .col-md-4 -->

                            <div class="col-6 col-md-4 count-container">
                                <div class="count-wrapper line-height-1">
                                    <span class="count-to" data-from="0" data-to="99" data-speed="2000"
                                          data-refresh-interval="50">99</span><span>%</span>
                                </div><!-- End .count-wrapper -->
                                <h4 class="count-title">SUPPORT AVAILABLE</h4>
                            </div><!-- End .col-md-4 -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .counters-section -->
            </main><!-- End .main -->

            <jsp:include page="/common/footer.jsp"></jsp:include>

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
        <script src="${pageContext.request.contextPath}/assets/js/plugins/jquery.countTo.js"></script>

        <!-- Main JS File -->
        <script src="${pageContext.request.contextPath}/assets/js/main.min.js"></script>
    </body>


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/about.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:29:23 GMT -->
</html>
