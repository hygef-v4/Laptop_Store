<%-- 
    Document   : contact
    Created on : Feb 26, 2025, 5:52:41 PM
    Author     : hungs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:29:31 GMT -->
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/simple-line-icons/css/simple-line-icons.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css">
    </head>

    <body>
        <div class="page-wrapper">
            <jsp:include page="/common/header.jsp"></jsp:include>

                <!-- End .header -->

                <main class="main">
                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                        <div class="container">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="demo4.html"><i class="icon-home"></i></a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Contact Us
                                </li>
                            </ol>
                        </div>
                    </nav>

                    <div id="map"></div>

                    <div class="container contact-us-container">
                        <div class="contact-info">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="ls-n-25 m-b-1">
                                        Contact Info
                                    </h2>

                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing
                                        elit. Sed imperdiet libero id nisi euismod, sed
                                        porta est consectetur. Vestibulum auctor felis eget
                                        orci semper vestibulum. Pellentesque ultricies nibh
                                        gravida, accumsan libero luctus, molestie nunc.L
                                        orem ipsum dolor sit amet, consectetur adipiscing
                                        elit.
                                    </p>
                                </div>

                                <div class="col-sm-6 col-lg-3">
                                    <div class="feature-box text-center">
                                        <i class="sicon-location-pin"></i>
                                        <div class="feature-box-content">
                                            <h3>Address</h3>
                                            <h5>123 Wall Street, New York / NY</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="feature-box text-center">
                                        <i class="fa fa-mobile-alt"></i>
                                        <div class="feature-box-content">
                                            <h3>Phone Number</h3>
                                            <h5>(800) 123-4567</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="feature-box text-center">
                                        <i class="far fa-envelope"></i>
                                        <div class="feature-box-content">
                                            <h3>E-mail Address</h3>
                                            <h5><a href="https://portotheme.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="b0c0dfc2c4dff0c0dfc2c4dfc4d8d5ddd59ed3dfdd">[email&#160;protected]</a></h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-3">
                                    <div class="feature-box text-center">
                                        <i class="far fa-calendar-alt"></i>
                                        <div class="feature-box-content">
                                            <h3>Working Days/Hours</h3>
                                            <h5>Mon - Sun / 9:00AM - 8:00PM</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <h2 class="mt-6 mb-2">Send Us a Message</h2>

                                <form class="mb-0" action="#">
                                    <div class="form-group">
                                        <label class="mb-1" for="contact-name">Your Name
                                            <span class="required">*</span></label>
                                        <input type="text" class="form-control" id="contact-name" name="contact-name"
                                               required />
                                    </div>

                                    <div class="form-group">
                                        <label class="mb-1" for="contact-email">Your E-mail
                                            <span class="required">*</span></label>
                                        <input type="email" class="form-control" id="contact-email" name="contact-email"
                                               required />
                                    </div>

                                    <div class="form-group">
                                        <label class="mb-1" for="contact-message">Your Message
                                            <span class="required">*</span></label>
                                        <textarea cols="30" rows="1" id="contact-message" class="form-control"
                                                  name="contact-message" required></textarea>
                                    </div>

                                    <div class="form-footer mb-0">
                                        <button type="submit" class="btn btn-dark font-weight-normal">
                                            Send Message
                                        </button>
                                    </div>
                                </form>
                            </div>

                            <div class="col-lg-6">
                                <h2 class="mt-6 mb-1">Frequently Asked Questions</h2>
                                <div id="accordion">
                                    <div class="card card-accordion">
                                        <a class="card-header" href="#" data-toggle="collapse" data-target="#collapseOne"
                                           aria-expanded="true" aria-controls="collapseOne">
                                            Curabitur eget leo at velit imperdiet viaculis
                                            vitaes?
                                        </a>

                                        <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                            <p>Lorem ipsum dolor sit amet, consectetur
                                                adipiscing elit. Curabitur eget leo at velit
                                                imperdiet varius. In eu ipsum vitae velit
                                                congue iaculis vitae at risus. Nullam tortor
                                                nunc, bibendum vitae semper a, volutpat eget
                                                massa.</p>
                                        </div>
                                    </div>

                                    <div class="card card-accordion">
                                        <a class="card-header collapsed" href="#" data-toggle="collapse"
                                           data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                                            Curabitur eget leo at velit imperdiet vague
                                            iaculis vitaes?
                                        </a>

                                        <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                            <p>Lorem ipsum dolor sit amet, consectetur
                                                adipiscing elit. Curabitur eget leo at velit
                                                imperdiet varius. In eu ipsum vitae velit
                                                congue iaculis vitae at risus. Nullam tortor
                                                nunc, bibendum vitae semper a, volutpat eget
                                                massa. Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit. Integer
                                                fringilla, orci sit amet posuere auctor,
                                                orci eros pellentesque odio, nec
                                                pellentesque erat ligula nec massa. Aenean
                                                consequat lorem ut felis ullamcorper posuere
                                                gravida tellus faucibus. Maecenas dolor
                                                elit, pulvinar eu vehicula eu, consequat et
                                                lacus. Duis et purus ipsum. In auctor mattis
                                                ipsum id molestie. Donec risus nulla,
                                                fringilla a rhoncus vitae, semper a massa.
                                                Vivamus ullamcorper, enim sit amet consequat
                                                laoreet, tortor tortor dictum urna, ut
                                                egestas urna ipsum nec libero. Nulla justo
                                                leo, molestie vel tempor nec, egestas at
                                                massa. Aenean pulvinar, felis porttitor
                                                iaculis pulvinar, odio orci sodales odio, ac
                                                pulvinar felis quam sit.</p>
                                        </div>
                                    </div>

                                    <div class="card card-accordion">
                                        <a class="card-header collapsed" href="#" data-toggle="collapse"
                                           data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                            Curabitur eget leo at velit imperdiet viaculis
                                            vitaes?
                                        </a>

                                        <div id="collapseThree" class="collapse" data-parent="#accordion">
                                            <p>Lorem ipsum dolor sit amet, consectetur
                                                adipiscing elit. Curabitur eget leo at velit
                                                imperdiet varius. In eu ipsum vitae velit
                                                congue iaculis vitae at risus. Nullam tortor
                                                nunc, bibendum vitae semper a, volutpat eget
                                                massa.</p>
                                        </div>
                                    </div>

                                    <div class="card card-accordion">
                                        <a class="card-header collapsed" href="#" data-toggle="collapse"
                                           data-target="#collapseFour" aria-expanded="true" aria-controls="collapseThree">
                                            Curabitur eget leo at velit imperdiet vague
                                            iaculis vitaes?
                                        </a>

                                        <div id="collapseFour" class="collapse" data-parent="#accordion">
                                            <p>Lorem ipsum dolor sit amet, consectetur
                                                adipiscing elit. Curabitur eget leo at velit
                                                imperdiet varius. In eu ipsum vitae velit
                                                congue iaculis vitae at risus. Nullam tortor
                                                nunc, bibendum vitae semper a, volutpat eget
                                                massa. Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit. Integer
                                                fringilla, orci sit amet posuere auctor,
                                                orci eros pellentesque odio, nec
                                                pellentesque erat ligula nec massa. Aenean
                                                consequat lorem ut felis ullamcorper posuere
                                                gravida tellus faucibus. Maecenas dolor
                                                elit, pulvinar eu vehicula eu, consequat et
                                                lacus. Duis et purus ipsum. In auctor mattis
                                                ipsum id molestie. Donec risus nulla,
                                                fringilla a rhoncus vitae, semper a massa.
                                                Vivamus ullamcorper, enim sit amet consequat
                                                laoreet, tortor tortor dictum urna, ut
                                                egestas urna ipsum nec libero. Nulla justo
                                                leo, molestie vel tempor nec, egestas at
                                                massa. Aenean pulvinar, felis porttitor
                                                iaculis pulvinar, odio orci sodales odio, ac
                                                pulvinar felis quam sit.</p>
                                        </div>
                                    </div>

                                    <div class="card card-accordion">
                                        <a class="card-header collapsed" href="#" data-toggle="collapse"
                                           data-target="#collapseFive" aria-expanded="true" aria-controls="collapseThree">
                                            Curabitur eget leo at velit imperdiet varius
                                            iaculis vitaes?
                                        </a>

                                        <div id="collapseFive" class="collapse" data-parent="#accordion">
                                            <p>Lorem ipsum dolor sit amet, consectetur
                                                adipiscing elit. Curabitur eget leo at velit
                                                imperdiet varius. In eu ipsum vitae velit
                                                congue iaculis vitae at risus. Nullam tortor
                                                nunc, bibendum vitae semper a, volutpat eget
                                                massa. Lorem ipsum dolor sit amet,
                                                consectetur adipiscing elit. Integer
                                                fringilla, orci sit amet posuere auctor,
                                                orci eros pellentesque odio, nec
                                                pellentesque erat ligula nec massa. Aenean
                                                consequat lorem ut felis ullamcorper posuere
                                                gravida tellus faucibus. Maecenas dolor
                                                elit, pulvinar eu vehicula eu, consequat et
                                                lacus. Duis et purus ipsum. In auctor mattis
                                                ipsum id molestie. Donec risus nulla,
                                                fringilla a rhoncus vitae, semper a massa.
                                                Vivamus ullamcorper, enim sit amet consequat
                                                laoreet, tortor tortor dictum urna, ut
                                                egestas urna ipsum nec libero. Nulla justo
                                                leo, molestie vel tempor nec, egestas at
                                                massa. Aenean pulvinar, felis porttitor
                                                iaculis pulvinar, odio orci sodales odio, ac
                                                pulvinar felis quam sit.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mb-8"></div>
                </main>

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
                            <li><a href="demo4.html">Home</a></li>
                            <li>
                                <a href="category.html">Categories</a>
                                <ul>
                                    <li><a href="category.html">Full Width Banner</a></li>
                                    <li><a href="category-banner-boxed-slider.html">Boxed Slider Banner</a></li>
                                    <li><a href="category-banner-boxed-image.html">Boxed Image Banner</a></li>
                                    <li><a href="https://www.portotheme.com/html/porto_ecommerce/category-sidebar-left.html">Left Sidebar</a></li>
                                    <li><a href="category-sidebar-right.html">Right Sidebar</a></li>
                                    <li><a href="category-off-canvas.html">Off Canvas Filter</a></li>
                                    <li><a href="category-horizontal-filter1.html">Horizontal Filter 1</a></li>
                                    <li><a href="category-horizontal-filter2.html">Horizontal Filter 2</a></li>
                                    <li><a href="#">List Types</a></li>
                                    <li><a href="category-infinite-scroll.html">Ajax Infinite Scroll<span
                                                class="tip tip-new">New</span></a></li>
                                    <li><a href="category.html">3 Columns Products</a></li>
                                    <li><a href="category-4col.html">4 Columns Products</a></li>
                                    <li><a href="category-5col.html">5 Columns Products</a></li>
                                    <li><a href="category-6col.html">6 Columns Products</a></li>
                                    <li><a href="category-7col.html">7 Columns Products</a></li>
                                    <li><a href="category-8col.html">8 Columns Products</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="product.html">Products</a>
                                <ul>
                                    <li>
                                        <a href="#" class="nolink">PRODUCT PAGES</a>
                                        <ul>
                                            <li><a href="product.html">SIMPLE PRODUCT</a></li>
                                            <li><a href="product-variable.html">VARIABLE PRODUCT</a></li>
                                            <li><a href="product.html">SALE PRODUCT</a></li>
                                            <li><a href="product.html">FEATURED & ON SALE</a></li>
                                            <li><a href="product-sticky-info.html">WIDTH CUSTOM TAB</a></li>
                                            <li><a href="product-sidebar-left.html">WITH LEFT SIDEBAR</a></li>
                                            <li><a href="product-sidebar-right.html">WITH RIGHT SIDEBAR</a></li>
                                            <li><a href="product-addcart-sticky.html">ADD CART STICKY</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#" class="nolink">PRODUCT LAYOUTS</a>
                                        <ul>
                                            <li><a href="product-extended-layout.html">EXTENDED LAYOUT</a></li>
                                            <li><a href="product-grid-layout.html">GRID IMAGE</a></li>
                                            <li><a href="product-full-width.html">FULL WIDTH LAYOUT</a></li>
                                            <li><a href="product-sticky-info.html">STICKY INFO</a></li>
                                            <li><a href="product-sticky-both.html">LEFT & RIGHT STICKY</a></li>
                                            <li><a href="product-transparent-image.html">TRANSPARENT IMAGE</a></li>
                                            <li><a href="product-center-vertical.html">CENTER VERTICAL</a></li>
                                            <li><a href="#">BUILD YOUR OWN</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Pages<span class="tip tip-hot">Hot!</span></a>
                                <ul>
                                    <li>
                                        <a href="wishlist.html">Wishlist</a>
                                    </li>
                                    <li>
                                        <a href="cart.html">Shopping Cart</a>
                                    </li>
                                    <li>
                                        <a href="checkout.html">Checkout</a>
                                    </li>
                                    <li>
                                        <a href="dashboard.html">Dashboard</a>
                                    </li>
                                    <li>
                                        <a href="login.html">Login</a>
                                    </li>
                                    <li>
                                        <a href="forgot-password.html">Forgot Password</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="blog.html">Blog</a></li>                                
                            <li><a href="#">Elements</a>
                                <ul class="custom-scrollbar">
                                    <li><a href="element-accordions.html">Accordion</a></li>
                                    <li><a href="element-alerts.html">Alerts</a></li>
                                    <li><a href="element-animations.html">Animations</a></li>
                                    <li><a href="element-banners.html">Banners</a></li>
                                    <li><a href="element-buttons.html">Buttons</a></li>
                                    <li><a href="element-call-to-action.html">Call to Action</a></li>
                                    <li><a href="element-countdown.html">Count Down</a></li>
                                    <li><a href="element-counters.html">Counters</a></li>
                                    <li><a href="element-headings.html">Headings</a></li>
                                    <li><a href="element-icons.html">Icons</a></li>
                                    <li><a href="element-info-box.html">Info box</a></li>
                                    <li><a href="element-posts.html">Posts</a></li>
                                    <li><a href="element-products.html">Products</a></li>
                                    <li><a href="element-product-categories.html">Product Categories</a></li>
                                    <li><a href="element-tabs.html">Tabs</a></li>
                                    <li><a href="element-testimonial.html">Testimonials</a></li>
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
                            <li><a href="login.html">My Account</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="wishlist.html">My Wishlist</a></li>
                            <li><a href="cart.html">Cart</a></li>
                            <li><a href="login.html" class="login-link">Log In</a></li>
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
                    <a href="demo4.html">
                        <i class="icon-home"></i>Home
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="category.html" class="">
                        <i class="icon-bars"></i>Categories
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="wishlist.html" class="">
                        <i class="icon-wishlist-2"></i>Wishlist
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="login.html" class="">
                        <i class="icon-user-2"></i>Account
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="cart.html" class="">
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

        <!-- Google Map-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDc3LRykbLB-y8MuomRUIY0qH5S6xgBLX4"></script>
        <script src="${pageContext.request.contextPath}/assets/js/map.js"></script>
    </body>


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:29:31 GMT -->
</html>
