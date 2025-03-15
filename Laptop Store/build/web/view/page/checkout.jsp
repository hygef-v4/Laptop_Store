<%-- 
    Document   : checkout
    Created on : Feb 26, 2025, 6:26:54 PM
    Author     : hungs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
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
                    families: ['Open+Sans:300,400,600,700,800', 'Poppins:300,400,500,600,700', 'Shadows+Into+Light:400']
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css">
    </head>

    <body>
        <div class="page-wrapper">

            <jsp:include page="/view/common/header.jsp"></jsp:include>

                <!-- End .header -->

                <main class="main main-test">
                    <div class="container checkout-container">
                        <ul class="checkout-progress-bar d-flex justify-content-center flex-wrap">
                            <li>
                                <a href="cart.jsp">Giỏ hàng</a>
                            </li>
                            <li class="active">
                                <a href="checkout.jsp">Thanh toán</a>
                            </li>
                            <li class="disabled">
                                <a href="#">Hoàn tất thanh toán</a>
                            </li>
                        </ul>



                        <div class="checkout-discount">
                            <h4>Có mã giảm giá?
                                <button data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne" class="btn btn-link btn-toggle">Nhập mã của bạn</button>
                            </h4>

                            <div id="collapseTwo" class="collapse">
                                <div class="feature-box">
                                    <div class="feature-box-content">
                                        <p>Nếu bạn có mã phiếu giảm giá, xin vui lòng áp dụng nó bên dưới.</p>

                                        <form action="#">
                                            <div class="input-group">
                                                <input type="text" class="form-control form-control-sm w-auto" placeholder="Mã giảm giá" required="" />
                                                <div class="input-group-append">
                                                    <button class="btn btn-sm mt-0" type="submit">
                                                        Áp dụng
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-7">
                                <ul class="checkout-steps">
                                    <li>
                                        <h2 class="step-title">Chi tiết thanh toán</h2>

                                        <form action="#" id="checkout-form">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Tên
                                                            <abbr class="required" title="required">*</abbr>
                                                        </label>
                                                        <input type="text" class="form-control" required />
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Họ
                                                            <abbr class="required" title="required">*</abbr></label>
                                                        <input type="text" class="form-control" required />
                                                    </div>
                                                </div>
                                            </div>



                                            <div class="select-custom">
                                                <label>Quốc gia
                                                    <abbr class="required" title="required">*</abbr></label>
                                                <select name="orderby" class="form-control">
                                                    <option value="" selected="selected">Vanuatu
                                                    </option>
                                                    <option value="1">Brunei</option>
                                                    <option value="2">Bulgaria</option>
                                                    <option value="3">Burkina Faso</option>
                                                    <option value="4">Burundi</option>
                                                    <option value="5">Cameroon</option>
                                                </select>
                                            </div>

                                            <div class="form-group mb-1 pb-2">
                                                <label>Địa chỉ
                                                    <abbr class="required" title="required">*</abbr></label>
                                                <input type="text" class="form-control" placeholder="Số nhà và tên phố" required />
                                            </div>

                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Căn hộ, số phòng, đơn vị, v.v. (tùy chọn)" required />
                                            </div>

                                            <div class="form-group">
                                                <label>Tỉnh / Thành phố
                                                    <abbr class="required" title="required">*</abbr></label>
                                                <input type="text" class="form-control" required />
                                            </div>



                                            <div class="form-group">
                                                <label>Postcode / Zip
                                                    <abbr class="required" title="required">*</abbr></label>
                                                <input type="text" class="form-control" required />
                                            </div>

                                            <div class="form-group">
                                                <label>Số điện thoại <abbr class="required" title="required">*</abbr></label>
                                                <input type="tel" class="form-control" required />
                                            </div>

                                            <div class="form-group">
                                                <label>Email
                                                    <abbr class="required" title="required">*</abbr></label>
                                                <input type="email" class="form-control" required />
                                            </div>

                                            <div class="form-group mb-1">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="create-account" />
                                                    <label class="custom-control-label" data-toggle="collapse" data-target="#collapseThree" aria-controls="collapseThree" for="create-account">Create an
                                                        account?</label>
                                                </div>
                                            </div>







                                            <div class="form-group">
                                                <label class="order-comments">Ghi chú đơn hàng (nếu có)</label>
                                                <textarea class="form-control" placeholder="Ghi chú về đơn hàng của bạn, ví dụ ghi chú đặc biệt về việc giao hàng." required></textarea>
                                            </div>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                            <!-- End .col-lg-8 -->

                            <div class="col-lg-5">
                                <div class="order-summary">
                                    <h3>Đơn hàng của bạn</h3>

                                    <table class="table table-mini-cart">
                                        <thead>
                                            <tr>
                                                <th colspan="2">Sản phẩm</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="product-col">
                                                    <h3 class="product-title">
                                                        Circled Ultimate 3D Speaker ×
                                                        <span class="product-qty">4</span>
                                                    </h3>
                                                </td>

                                                <td class="price-col">
                                                    <span>$1,040.00</span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="product-col">
                                                    <h3 class="product-title">
                                                        Fashion Computer Bag ×
                                                        <span class="product-qty">2</span>
                                                    </h3>
                                                </td>

                                                <td class="price-col">
                                                    <span>$418.00</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr class="cart-subtotal">
                                                <td>
                                                    <h4>Tạm tính</h4>
                                                </td>

                                                <td class="price-col">
                                                    <span>$1,458.00</span>
                                                </td>
                                            </tr>
                                            <tr class="order-shipping">
                                                <td class="text-left" colspan="2">
                                                    <h4 class="m-b-sm">Vận chuyển</h4>

                                                    <div class="form-group form-group-custom-control">
                                                        <div class="custom-control custom-radio d-flex">
                                                            <input type="radio" class="custom-control-input" name="radio" checked />
                                                            <label class="custom-control-label">Nhận tại cửa hàng</label>
                                                        </div>
                                                        <!-- End .custom-checkbox -->
                                                    </div>
                                                    <!-- End .form-group -->

                                                    <div class="form-group form-group-custom-control mb-0">
                                                        <div class="custom-control custom-radio d-flex mb-0">
                                                            <input type="radio" name="radio" class="custom-control-input">
                                                            <label class="custom-control-label">Giao hàng tận nơi</label>
                                                        </div>
                                                        <!-- End .custom-checkbox -->
                                                    </div>
                                                    <!-- End .form-group -->
                                                </td>

                                            </tr>

                                            <tr class="order-total">
                                                <td>
                                                    <h4>Tổng tiền</h4>
                                                </td>
                                                <td>
                                                    <b class="total-price"><span>$1,603.80</span></b>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>

                                    <div class="payment-methods">
                                        <h4 class="">Phương thức thanh toán</h4>
                                        <div class="info-box with-icon p-0">
                                            <p>
                                                Xin lỗi, hiện không có phương thức thanh toán nào khả dụng cho bang của bạn. Vui lòng liên hệ với chúng tôi nếu bạn cần hỗ trợ hoặc muốn sắp xếp phương thức thanh toán khác.
                                            </p>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-dark btn-place-order" form="checkout-form">
                                        Đặt hàng
                                    </button>
                                </div>
                                <!-- End .cart-summary -->
                            </div>
                            <!-- End .col-lg-4 -->
                        </div>
                        <!-- End .row -->
                    </div>
                    <!-- End .container -->
                </main>
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
                    <a href="https://www.portotheme.com/html/porto_ecommerce/my-account.jsp" class="">
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


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/checkout.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Feb 2025 03:27:54 GMT -->
</html>
