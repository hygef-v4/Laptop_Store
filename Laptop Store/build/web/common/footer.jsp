<%-- 
    Document   : footer
    Created on : Feb 26, 2025, 3:59:23 PM
    Author     : hungs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<footer class="footer bg-dark">
    <div class="footer-middle">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="widget">
                        <h4 class="widget-title">Contact Info</h4>
                        <ul class="contact-info">
                            <li>
                                <span class="contact-info-label">Address:</span> SE1902, Đại Học FPT Hà Nội
                            </li>
                            <li>
                                <span class="contact-info-label">Phone:</span><a href="tel:+87327715098"> (+87) 327715098</a>

                            </li>
                            <li>
                                <span class="contact-info-label">Email:</span> <a href="hungsct1702@gmail.com">hungsct1702@gmail.com</a>
                            </li>
                            <li>
                                <span class="contact-info-label">Working Hours:</span> Mon - Sat / 9:00 AM - 9:00 PM
                            </li>
                        </ul>
                        <div class="social-icons">
                            <a href="https://www.facebook.com/chal7z" class="social-icon social-facebook icon-facebook" target="_blank" title="Facebook"></a>
                            <a href="#" class="social-icon social-twitter icon-twitter" target="_blank" title="Twitter"></a>
                            <a href="#" class="social-icon social-instagram icon-instagram" target="_blank"></a>


                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6">
                    <div class="widget">
                        <h4 class="widget-title">Customer Service</h4>
                        <ul class="links">
                            <li><a href="#">FAQs & Support</a></li>
                            <li><a href="#">Order Tracking</a></li>
                            <li><a href="#">Shipping & Delivery</a></li>
                            <li><a href="#">Return Policy</a></li>
                            <li><a href="#">Warranty & Repairs</a></li>
                            <li><a href="dashboard.html">My Account</a></li>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="#">Corporate Sales</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6">
                    <div class="widget">
                        <h4 class="widget-title">Popular Tags</h4>
                        <div class="tagcloud">
                            <a href="#">Gaming Laptops</a>
                            <a href="#">Ultrabooks</a>
                            <a href="#">MacBooks</a>
                            <a href="#">Windows Laptops</a>
                            <a href="#">Business Laptops</a>
                            <a href="#">Accessories</a>
                            <a href="#">Keyboards</a>
                            <a href="#">Mice</a>
                            <a href="#">Monitors</a>
                            <a href="#">SSD & Storage</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6">
                    <div class="widget widget-newsletter">
                        <h4 class="widget-title">Subscribe to Our Newsletter</h4>
                        <p>Get updates on the latest laptop deals, promotions, and tech news.</p>
                        <form action="#" class="mb-0">
                            <input type="email" class="form-control m-b-3" placeholder="Enter your email" required>
                            <input type="submit" class="btn btn-primary shadow-none" value="Subscribe">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="footer-bottom">
            <div class="container d-sm-flex align-items-center">
                <div class="footer-left">
                    <span class="footer-copyright">© Laptop Store 2025. All Rights Reserved</span>
                </div>

                <div class="footer-right ml-auto mt-1 mt-sm-0">
                    <div class="payment-icons">
                        <span class="payment-icon visa" style="background-image: url('${pageContext.request.contextPath}/assets/images/payments/payment-visa.svg')"></span>
                        <span class="payment-icon paypal" style="background-image: url('${pageContext.request.contextPath}/assets/images/payments/payment-paypal.svg')"></span>
                        <span class="payment-icon stripe" style="background-image: url('${pageContext.request.contextPath}/assets/images/payments/payment-stripe.png')"></span>
                        <span class="payment-icon verisign" style="background-image:  url('${pageContext.request.contextPath}/assets/images/payments/payment-verisign.svg')"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
