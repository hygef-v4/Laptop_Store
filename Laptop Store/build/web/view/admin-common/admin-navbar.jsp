<%-- 
    Document   : admin-navbar
    Created on : Mar 18, 2025, 12:14:38 AM
    Author     : hungs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="main-nav">
        <!-- Sidebar Logo -->
        <div class="logo-box">
            <a href="index.html" class="logo-dark">
                <img
                    src="${pageContext.request.contextPath}/admin-assets/images/logo-sm.png"
                    class="logo-sm"
                    alt="logo sm"
                    />
                <img
                    src="${pageContext.request.contextPath}/admin-assets/images/logo-dark.png"
                    class="logo-lg"
                    alt="logo dark"
                    />
            </a>

            <a href="index.html" class="logo-light">
                <img
                    src="${pageContext.request.contextPath}/admin-assets/images/logo-sm.png"
                    class="logo-sm"
                    alt="logo sm"
                    />
                <img
                    src="${pageContext.request.contextPath}/admin-assets/images/logo-light.png"
                    class="logo-lg"
                    alt="logo light"
                    />
            </a>
        </div>

        <!-- Menu Toggle Button (sm-hover) -->
        <button
            type="button"
            class="button-sm-hover"
            aria-label="Show Full Sidebar"
            >
            <iconify-icon
                icon="iconamoon:arrow-left-4-square-duotone"
                class="button-sm-hover-icon"
                ></iconify-icon>
        </button>

        <div class="scrollbar" data-simplebar>
            <ul class="navbar-nav" id="navbar-nav">                                 
                <li class="nav-item">
                    <a
                        class="nav-link menu-arrow"
                        href="#sidebarEcommerce"

                        role="button"

                        aria-controls="sidebarEcommerce"
                        >
                        <span class="nav-icon">
                            <iconify-icon
                                icon="iconamoon:shopping-bag-duotone"
                                ></iconify-icon>
                        </span>
                        <span class="nav-text"> Ecommerce </span>
                    </a>
                    <div id="sidebarEcommerce">
                        <ul class="nav sub-navbar-nav">
                            <li class="sub-nav-item">
                                <a
                                    class="sub-nav-link"
                                    href="apps-ecommerce-product-list.html"
                                    >Products</a
                                >
                            </li>

                            <li class="sub-nav-item">
                                <a
                                    class="sub-nav-link"
                                    href="apps-ecommerce-product-add.html"
                                    >Create Product</a
                                >
                            </li>

                            <li class="sub-nav-item">
                                <a
                                    class="sub-nav-link"
                                    href="apps-ecommerce-customer-list.html"
                                    >Customers</a
                                >
                            </li>



                            <li class="sub-nav-item">
                                <a
                                    class="sub-nav-link"
                                    href="apps-ecommerce-order-list.html"
                                    >Orders</a
                                >
                            </li>
                          


                        </ul>
                    </div>
                </li>

                <!-- end Demo Menu Item -->

            </ul>
        </div>
    </div>
</html>
