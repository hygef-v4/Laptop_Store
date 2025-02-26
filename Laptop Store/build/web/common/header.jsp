<%-- 
    Document   : header
    Created on : Feb 26, 2025, 4:45:43 PM
    Author     : hungs
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header">
    <div class="header-top">
        <div class="container">
            <div class="header-left d-none d-sm-block">
                <p class="top-message text-uppercase">FREE Returns. Standard Shipping Orders $99+</p>
            </div>
            <!-- End .header-left -->

            <div class="header-right header-dropdowns ml-0 ml-sm-auto w-sm-100">
                <div class="header-dropdown dropdown-expanded d-none d-lg-block">
                    <a href="#">Links</a>
                    <div class="header-menu">
                        <ul>
                            <li><a href="dashboard.jsp">My Account</a></li>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="wishlist.jsp">My Wishlist</a></li>
                            <li><a href="cart.jsp">Cart</a></li>
                            <li><a href="login.jsp">Login</a></li>
                        </ul>
                    </div>
                    <!-- End .header-menu -->
                </div>
                <!-- End .header-dropown -->

                <span class="separator"></span>

                <div class="header-dropdown">
                    <a href="#"><i class="flag-us flag"></i>ENG</a>
                    <div class="header-menu">
                        <ul>
                            <li><a href="#"><i class="flag-us flag mr-2"></i>ENG</a>
                            </li>
                            <li><a href="#"><i class="flag-vn flag mr-2"></i>VN</a></li>
                        </ul>
                    </div>
                    <!-- End .header-menu -->
                </div>
                <!-- End .header-dropown -->

                <div class="header-dropdown mr-auto mr-sm-3 mr-md-0">
                    <a href="#">VNĐ</a>
                    <div class="header-menu">
                        <ul>
                            <li><a href="#">VNĐ</a></li>
                            <li><a href="#">USD</a></li>
                        </ul>
                    </div>
                    <!-- End .header-menu -->
                </div>
                <!-- End .header-dropown -->

                <span class="separator"></span>

                <div class="social-icons">
                    <a href="#" class="social-icon social-facebook icon-facebook" target="_blank"></a>
                    <a href="#" class="social-icon social-twitter icon-twitter" target="_blank"></a>
                    <a href="#" class="social-icon social-instagram icon-instagram" target="_blank"></a>
                </div>
                <!-- End .social-icons -->
            </div>
            <!-- End .header-right -->
        </div>
        <!-- End .container -->
    </div>
    <!-- End .header-top -->

    <div class="header-middle sticky-header" data-sticky-options="{'mobile': true}">
        <div class="container">
            <div class="header-left col-lg-2 w-auto pl-0">
                <button class="mobile-menu-toggler text-primary mr-2" type="button">
                    <i class="fas fa-bars"></i>
                </button>
                <a href="home.jsp" class="logo">
                    <img src="${pageContext.request.contextPath}/assets/images/logo.png" width="111" height="44" alt="Porto Logo">
                </a>
            </div>
            <!-- End .header-left -->

            <div class="header-right w-lg-max">
                <div class="header-icon header-search header-search-inline header-search-category w-lg-max text-right mt-0">
                    <a href="#" class="search-toggle" role="button"><i class="icon-search-3"></i></a>
                    <form action="#" method="get">
                        <div class="header-search-wrapper">
                            <input type="search" class="form-control" name="q" id="q" placeholder="Search..." required>
                            <div class="select-custom">
                                <select id="cat" name="cat">
                                    <option value="">All Categories</option>
                                    <option value="4">Fashion</option>
                                    <option value="12">- Women</option>
                                    <option value="13">- Men</option>
                                    <option value="66">- Jewellery</option>
                                    <option value="67">- Kids Fashion</option>
                                    <option value="5">Electronics</option>
                                    <option value="21">- Smart TVs</option>
                                    <option value="22">- Cameras</option>
                                    <option value="63">- Games</option>
                                    <option value="7">Home &amp; Garden</option>
                                    <option value="11">Motors</option>
                                    <option value="31">- Cars and Trucks</option>
                                    <option value="32">- Motorcycles &amp; Powersports</option>
                                    <option value="33">- Parts &amp; Accessories</option>
                                    <option value="34">- Boats</option>
                                    <option value="57">- Auto Tools &amp; Supplies</option>
                                </select>
                            </div>
                            <!-- End .select-custom -->
                            <button class="btn icon-magnifier p-0" title="search" type="submit"></button>
                        </div>
                        <!-- End .header-search-wrapper -->
                    </form>
                </div>
                <!-- End .header-search -->

                <div class="header-contact d-none d-lg-flex pl-4 pr-4">
                    <img alt="phone" src="${pageContext.request.contextPath}/assets/images/phone.png" width="30" height="30" class="pb-1">
                    <h6><span>Call us now</span><a href="tel:#" class="text-dark font1">(+87) 327715098</a></h6>
                </div>

                <a href="login.jsp" class="header-icon" title="login"><i class="icon-user-2"></i></a>

                <a href="wishlist.jsp" class="header-icon" title="wishlist"><i class="icon-wishlist-2"></i></a>

                <div class="dropdown cart-dropdown">
                    <a href="#" title="Cart" class="dropdown-toggle dropdown-arrow cart-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                        <i class="minicart-icon"></i>
                        <span class="cart-count badge-circle">3</span>
                    </a>

                    <div class="cart-overlay"></div>

                    <div class="dropdown-menu mobile-cart">
                        <a href="#" title="Close (Esc)" class="btn-close">×</a>

                        <div class="dropdownmenu-wrapper custom-scrollbar">
                            <div class="dropdown-cart-header">Shopping Cart</div>
                            <!-- End .dropdown-cart-header -->

                            <div class="dropdown-cart-products">
                                <div class="product">
                                    <div class="product-details">
                                        <h4 class="product-title">
                                            <a href="product.jsp">Ultimate 3D Bluetooth Speaker</a>
                                        </h4>

                                        <span class="cart-product-info">
                                            <span class="cart-product-qty">1</span> × $99.00
                                        </span>
                                    </div>
                                    <!-- End .product-details -->

                                    <figure class="product-image-container">
                                        <a href="product.jsp" class="product-image">
                                            <img src="${pageContext.request.contextPath}/assets/images/products/product-1.jpg" alt="product" width="80" height="80">
                                        </a>

                                        <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                    </figure>
                                </div>
                                <!-- End .product -->

                                <div class="product">
                                    <div class="product-details">
                                        <h4 class="product-title">
                                            <a href="product.jsp">Brown Women Casual HandBag</a>
                                        </h4>

                                        <span class="cart-product-info">
                                            <span class="cart-product-qty">1</span> × $35.00
                                        </span>
                                    </div>
                                    <!-- End .product-details -->

                                    <figure class="product-image-container">
                                        <a href="product.jsp" class="product-image">
                                            <img src="${pageContext.request.contextPath}/assets/images/products/product-2.jpg" alt="product" width="80" height="80">
                                        </a>

                                        <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                    </figure>
                                </div>
                                <!-- End .product -->

                                <div class="product">
                                    <div class="product-details">
                                        <h4 class="product-title">
                                            <a href="product.jsp">Circled Ultimate 3D Speaker</a>
                                        </h4>

                                        <span class="cart-product-info">
                                            <span class="cart-product-qty">1</span> × $35.00
                                        </span>
                                    </div>
                                    <!-- End .product-details -->

                                    <figure class="product-image-container">
                                        <a href="product.jsp" class="product-image">
                                            <img src="${pageContext.request.contextPath}/assets/images/products/product-3.jpg" alt="product" width="80" height="80">
                                        </a>
                                        <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                    </figure>
                                </div>
                                <!-- End .product -->
                            </div>
                            <!-- End .cart-product -->

                            <div class="dropdown-cart-total">
                                <span>SUBTOTAL:</span>

                                <span class="cart-total-price float-right">$134.00</span>
                            </div>
                            <!-- End .dropdown-cart-total -->

                            <div class="dropdown-cart-action">
                                <a href="cart.jsp" class="btn btn-gray btn-block view-cart">View
                                    Cart</a>
                                <a href="checkout.jsp" class="btn btn-dark btn-block">Checkout</a>
                            </div>
                            <!-- End .dropdown-cart-total -->
                        </div>
                        <!-- End .dropdownmenu-wrapper -->
                    </div>
                    <!-- End .dropdown-menu -->
                </div>
                <!-- End .dropdown -->
            </div>
            <!-- End .header-right -->
        </div>
        <!-- End .container -->
    </div>
    <!-- End .header-middle -->

    <div class="header-bottom sticky-header d-none d-lg-block" data-sticky-options="{'mobile': false}">
        <div class="container">
            <nav class="main-nav w-100">
                <ul class="menu">
                    <li class="active">
                        <a href="home.jsp">Home</a>
                    </li>
                    <li>
                        <a href="category.jsp">Categories</a>
                        <div class="megamenu megamenu-fixed-width megamenu-3cols">
                            <div class="row">
                                <div class="col-lg-4">
                                    <a href="#" class="nolink">VARIATION 1</a>
                                    <ul class="submenu">
                                        <li><a href="category.jsp">Fullwidth Banner</a></li>
                                        <li><a href="category-banner-boxed-slider.jsp">Boxed Slider Banner</a>
                                        </li>
                                        <li><a href="category-banner-boxed-image.jsp">Boxed Image Banner</a>
                                        </li>
                                        <li><a href="category.jsp">Left Sidebar</a></li>
                                        <li><a href="category-sidebar-right.jsp">Right Sidebar</a></li>
                                        <li><a href="category-off-canvas.jsp">Off Canvas Filter</a></li>
                                        <li><a href="category-horizontal-filter1.jsp">Horizontal Filter1</a>
                                        </li>
                                        <li><a href="category-horizontal-filter2.jsp">Horizontal Filter2</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-4">
                                    <a href="#" class="nolink">VARIATION 2</a>
                                    <ul class="submenu">
                                        <li><a href="category-list.jsp">List Types</a></li>
                                        <li><a href="category-infinite-scroll.jsp">Ajax Infinite Scroll</a>
                                        </li>
                                        <li><a href="category.jsp">3 Columns Products</a></li>
                                        <li><a href="category-4col.jsp">4 Columns Products</a></li>
                                        <li><a href="category-5col.jsp">5 Columns Products</a></li>
                                        <li><a href="category-6col.jsp">6 Columns Products</a></li>
                                        <li><a href="category-7col.jsp">7 Columns Products</a></li>
                                        <li><a href="category-8col.jsp">8 Columns Products</a></li>
                                    </ul>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <div class="menu-banner">
                                        <figure>
                                            <img src="${pageContext.request.contextPath}/assets/images/menu-banner.jpg" width="192" height="313" alt="Menu banner">
                                        </figure>
                                        <div class="banner-content">
                                            <h4>
                                                <span class="">UP TO</span><br />
                                                <b class="">50%</b>
                                                <i>OFF</i>
                                            </h4>
                                            <a href="category.jsp" class="btn btn-sm btn-dark">SHOP NOW</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End .megamenu -->
                    </li>
                    <li>
                        <a href="product.jsp">Products</a>
                        <div class="megamenu megamenu-fixed-width">
                            <div class="row">
                                <div class="col-lg-4">
                                    <a href="#" class="nolink">PRODUCT PAGES</a>
                                    <ul class="submenu">
                                        <li><a href="product.jsp">SIMPLE PRODUCT</a></li>
                                        <li><a href="product-variable.jsp">VARIABLE PRODUCT</a></li>
                                        <li><a href="product.jsp">SALE PRODUCT</a></li>
                                        <li><a href="product.jsp">FEATURED & ON SALE</a></li>
                                        <li><a href="product-custom-tab.jsp">WITH CUSTOM TAB</a></li>
                                        <li><a href="product-sidebar-left.jsp">WITH LEFT SIDEBAR</a></li>
                                        <li><a href="product-sidebar-right.jsp">WITH RIGHT SIDEBAR</a></li>
                                        <li><a href="product-addcart-sticky.jsp">ADD CART STICKY</a></li>
                                    </ul>
                                </div>
                                <!-- End .col-lg-4 -->

                                <div class="col-lg-4">
                                    <a href="#" class="nolink">PRODUCT LAYOUTS</a>
                                    <ul class="submenu">
                                        <li><a href="product-extended-layout.jsp">EXTENDED LAYOUT</a></li>
                                        <li><a href="product-grid-layout.jsp">GRID IMAGE</a></li>
                                        <li><a href="product-full-width.jsp">FULL WIDTH LAYOUT</a></li>
                                        <li><a href="product-sticky-info.jsp">STICKY INFO</a></li>
                                        <li><a href="product-sticky-both.jsp">LEFT & RIGHT STICKY</a></li>
                                        <li><a href="product-transparent-image.jsp">TRANSPARENT IMAGE</a></li>
                                        <li><a href="product-center-vertical.jsp">CENTER VERTICAL</a></li>
                                        <li><a href="#">BUILD YOUR OWN</a></li>
                                    </ul>
                                </div>
                                <!-- End .col-lg-4 -->

                                <div class="col-lg-4 p-0">
                                    <div class="menu-banner menu-banner-2">
                                        <figure>
                                            <img src="${pageContext.request.contextPath}/assets/images/menu-banner-1.jpg" width="182" height="317" alt="Menu banner" class="product-promo">
                                        </figure>
                                        <i>OFF</i>
                                        <div class="banner-content">
                                            <h4>
                                                <span class="">UP TO</span><br />
                                                <b class="">50%</b>
                                            </h4>
                                        </div>
                                        <a href="category.jsp" class="btn btn-sm btn-dark">SHOP NOW</a>
                                    </div>
                                </div>
                                <!-- End .col-lg-4 -->
                            </div>
                            <!-- End .row -->
                        </div>
                        <!-- End .megamenu -->
                    </li>
                    <li>
                        <a href="#">Pages</a>
                        <ul>
                            <li><a href="wishlist.jsp">Wishlist</a></li>
                            <li><a href="cart.jsp">Shopping Cart</a></li>
                            <li><a href="checkout.jsp">Checkout</a></li>
                            <li><a href="dashboard.jsp">Dashboard</a></li>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="forgot-password.jsp">Forgot Password</a></li>
                        </ul>
                    </li>

                    <li><a href="contact.jsp">Contact Us</a></li>

                </ul>
            </nav>
        </div>
        <!-- End .container -->
    </div>
    <!-- End .header-bottom -->
</header>
