<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/layouts/taglib.jsp"%>
<%@ page import="com.laptrinhjavaweb.util.SecurityUtils" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng kí gói VIP</title>
</head>
<body>
<style>
    .zaloplus{
        position: relative;
        margin-bottom: 30px;
        color: #24272b;
        font-weight: 500;
    }
    #footer.bg-footer{
        background-color: #f3f3f3 !important;
        text-align: center;
        padding-top: 50px;
        margin: auto;
        color: #888 !important;
        font-size: 12px;
    }

    .bg-footer .z-license-logo {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .bg-footer .z-logo{
        height: 40px;
        width: 40px;
        display: inline-block;
        background-image: url(//static-zmp3.zadn.vn/skins/zmp3-v5.2/images/logo-mp-3.png);
        background-repeat: no-repeat;
        background-size: contain;
    }
    .require-login-zalo {
        margin-top: 10px;
    }

</style>
<div class="layer-loading hidden">
    <h2>Zing MP3 VIP</h2>
    <p class="textAlign-center"><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/loading.gif" alt="Zing Mp3 - VIP"></p>
    <p class="textAlign-center">Bạn vui lòng chờ trong giây lát</p>
</div>
<div canvas="container">
    <div id="wrapper">
        <div class="wrapper-page">
            <div class="zimgmp3Vip-layout">
                <section class="header">
                    <div class="header-container">
                        <div class="js-toggle-left-slidebar js-menu-mobile">
                            <div class="trigger-menu"><span class="three-bars-icon"></span></div>
                        </div>
                        <div class="logo-container">
                            <a href="<c:url value="/trang-chu" /> " title="Zing Mp3">Zing Mp3 - VIP</a>
                        </div>

                        <div class="user-profile user-mb show-on-small hidden">

                            <security:authorize access = "isAuthenticated()">
                                <span class="app__user-name"><%=SecurityUtils.getPrincipal().getFullName()%></span>
                            </security:authorize>

                        </div>
                        <div class="menu-container">
                            <ul>
                                <li><a class="active" title="VIP" href="/vip">VIP</a></li>
                                <li><a title="Gói data"
                                       href="//zaloplus.vn/?utm_source=vip_zlp_mp3&utm_medium=menu&utm_campaign=wap_menu&app=mp3">Gói
                                    data</a></li>
                                <li><a class="" title="VIP Family" href="/vip-gia-dinh">VIP Family</a></li>
                                <li><a class="" title="Samsung VIP" href="/vip/samsung">Samsung VIP</a></li>
                            </ul>
                        </div>
                        <div class="menu-user">
                            <ul>
                                <security:authorize access = "isAnonymous()">
                                    <li><a title="" href="<c:url value="/dang-nhap" /> ">Đăng nhập</a></li>
                                </security:authorize>
                                <security:authorize access = "isAuthenticated()">
                                    <li><a title="" href="<c:url value="/thoat" /> ">Đăng xuất</a></li>
                                </security:authorize>
                                <li>
                                    <div class="user">
                                        <security:authorize access = "isAuthenticated()">
                                            <span class="app__user-name"><%=SecurityUtils.getPrincipal().getFullName()%></span>
                                        </security:authorize>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="header-sub">
                        <ul>
                            <li><a href="#" class="buy-code">Mua Code</a></li>
                            <li><a href="/vip/insert-code">Nhập Code</a></li>
                            <li><a href="/vip/faqs.html">Hỗ trợ</a></li>
                        </ul>
                    </div>
                </section>
                <section class="body">
                    <div class="body-container">
                        <div class="cover-container cover-home">
                            <div class="inside"><span class="logo-mp3"></span>
                                <h2>Âm nhạc không giới hạn</h2>
                                <!-- <h3>Trở thành VIP với 49.000 VNĐ/ tháng</h3> -->
                                <div class="conver-content">
                                    Dịch vụ nghe nhạc Online chất lượng cao, kết hợp
                                    cùng các tiện ích dành riêng cho thành viên VIP
                                </div>
                            </div>
                            <div class="package">
                                <div class="package__container">
                                    <div class="cover cover--6-month"></div>
                                    <div class="package__info">
                                        <div class="package__month">6 THÁNG</div>
                                        <div class="package__line"></div>
                                        <div class="package__price">
                                            <div class="new-price">
                                                <div class="before-dot">279</div>
                                                <div class="price-block">
                                                    <div class="after-dot">.000</div>
                                                    <div class="unit-currency">VNĐ</div>
                                                </div>
                                            </div>
                                            <s class="old-price">354.000 VNĐ</s>
                                        </div>
                                    </div>
                                    <a class="package__btn" href="<c:url value="/thanh-toan" />">Mua
                                        VIP</a>
                                </div>
                                <div class="package__container">
                                    <div class="cover cover--1-year"></div>
                                    <div class="package__info">
                                        <div class="package__month">1 NĂM</div>
                                        <div class="package__line"></div>
                                        <div class="package__price">
                                            <div class="new-price">
                                                <div class="before-dot">499</div>
                                                <div class="price-block">
                                                    <div class="after-dot">.000</div>
                                                    <div class="unit-currency">VNĐ</div>
                                                </div>
                                            </div>
                                            <s class="old-price">708.000 VNĐ</s>
                                        </div>
                                    </div>
                                    <a class="package__btn" href="<c:url value="/thanh-toan" />" >Mua
                                        VIP</a>
                                </div>
                                <div class="package__container">
                                    <div class="cover cover--2-year"></div>
                                    <div class="package__info">
                                        <div class="package__month">2 NĂM</div>
                                        <div class="package__line"></div>
                                        <div class="package__price">
                                            <div class="new-price">
                                                <div class="before-dot">899</div>
                                                <div class="price-block">
                                                    <div class="after-dot">.000</div>
                                                    <div class="unit-currency">VNĐ</div>
                                                </div>
                                            </div>
                                            <s class="old-price">1.416.000 VNĐ</s>
                                        </div>
                                    </div>
                                    <a class="package__btn" href="<c:url value="/thanh-toan" />">Mua
                                        VIP</a>
                                </div>


                            </div>
                        </div>
                        <div class="module-banner-vip">
                            <a href="https://zingmp3.vn/vip/buyCode">
                                <img id="js-banner-vip"
                                     src="https://zmp3-static.zadn.vn/skins/zmp3-v5.1/vip/images/banner-vip.png" />
                            </a>
                        </div>
                        <div class="module-banner">

                            <div class="plan plan--1-month">
                                <div class="plan__title">
                                    VIP 1 THÁNG
                                </div>
                                <div class="plan__line"></div>
                                <div class="plan__content">
                                    Tải app Zing MP3 trên điện thoại <br>
                                    &amp; đăng ký VIP chỉ với
                                </div>
                                <div class="plan__price">
                                    <div class="before-dot">49</div>
                                    <div class="price-block">
                                        <div class="after-dot">.000</div>
                                        <div class="unit-currency">VNĐ</div>
                                    </div>
                                </div>
                                <div class="plan__info">
                                    Tải app <strong>Zing MP3</strong> để
                                    đăng ký ngay
                                </div>
                                <div class="plan__store">
                                    <a target="_blank" rel="nofollow"
                                       href="https://play.google.com/store/apps/details?id=com.zing.mp3">
                                        <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/badge-google-play-vn.svg"
                                             alt="play-store">
                                    </a>
                                    <a target="_blank" rel="nofollow"
                                       href="https://itunes.apple.com/vn/app/zing-mp3-lite/id992357547">
                                        <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/badge-app-store-vn.svg"
                                             alt="app-store">
                                    </a>
                                </div>
                            </div>
                            <div class="plan plan--family">
                                <div class="plan__title">
                                    VIP FAMILY
                                </div>
                                <div class="plan__line"></div>
                                <div class="plan__content">
                                    Gói VIP cho 6 thành viên chỉ với
                                </div>
                                <div class="plan__price">
                                    <div class="before-dot">89</div>
                                    <div class="price-block">
                                        <div class="after-dot">.000</div>
                                        <div class="unit-currency">VNĐ</div>
                                        <div class="per-month">/tháng</div>
                                    </div>
                                </div>
                                <div class="plan__info">
                                    Tải app <strong>Zing MP3</strong> để
                                    đăng ký ngay
                                </div>
                                <div class="plan__store">
                                    <a target="_blank" rel="nofollow"
                                       href="https://play.google.com/store/apps/details?id=com.zing.mp3">
                                        <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/badge-google-play-vn.svg"
                                             alt="play-store">
                                    </a>
                                    <a target="_blank" rel="nofollow"
                                       href="https://itunes.apple.com/vn/app/zing-mp3-lite/id992357547">
                                        <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/badge-app-store-vn.svg"
                                             alt="app-store">
                                    </a>

                                </div>
                            </div>






                        </div>
                        <div class="module-about module--update">
                            <h2>Zing MP3 VIP là gì?</h2>
                            <p>Zing MP3 VIP là dịch vụ nghe nhạc Online chất lượng cao, kết hợp cùng các tiện ích dành
                                riêng cho thành viên VIP</p>
                            <ul>
                                <li><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic_block.png"
                                         alt="Zing Mp3 - VIP"><span>Không bị làm phiền bởi quảng cáo</span></li>
                                <li><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic_download.png"
                                         alt="Zing Mp3 - VIP"><span>Download nhạc không giới hạn</span></li>
                                <li><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic_music.png"
                                         alt="Zing Mp3 - VIP"><span>Nghe nhạc chất lượng cao thỏa thích</span></li>
                                <li><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic_video.png"
                                         alt="Zing Mp3 - VIP"><span>Xem Music Video chất lượng HD</span></li>
                            </ul>
                        </div>
                        <div class="module-quality">
                            <h2>Nghe nhạc chất lượng cao</h2>
                            <div class="left-side">
                                <h4>Chất lượng</h4>
                                <p>Bài hát có chất lượng lossless sẽ giúp bạn có trải nghiệm nghe nhạc trong thính phòng
                                    tại nhà.</p>
                                <div class="space m"></div>
                                <h4>Nội dung</h4>
                                <p>Liên tục cập nhật các album và bài hát mới nhất trên thị trường âm nhạc trong và
                                    ngoài nước.</p>
                                <div class="space m"></div>
                                <h4>Upload</h4>
                                <p>Thoả thích upload nhạc không giới hạn mà bạn yêu thích lên <span class="fix-drop">Zing MP3</span>.
                                </p>
                            </div>
                            <div class="right-side"><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/cover_3g.png"
                                                         alt="Zing Mp3 - VIP"></div>
                        </div>
                        <div class="module-library">
                            <div class="inside">
                                <h2>Nhập code VIP</h2>
                                <p>
                                    Đã mua code VIP, nhấn vào dưới đây để kích hoạt. <br/>
                                    Nghe nhạc, xem MV chất lượng cao không bị làm
                                    phiền bởi quảng cáo và download kho
                                    nhạc chỉ dành riêng cho tài khoản VIP.
                                </p>
                                <a class="btn btn-special btn--sm" href="/vip/insert-code">
                                    Nhập code
                                </a>
                            </div>
                        </div>

                        <div class="module-rating" style="display: none;">
                            <div class="inside">
                                <h2>Đánh giá dịch vụ</h2>
                                <p>Chọn đánh giá của bạn</p>
                                <p><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/star_5.png" alt="Zing Mp3 - VIP"></p>
                                <div class="space l"></div>
                                <div class="textarea">
                                    <textarea placeholder="Nhập nội dung mà bạn muốn góp ý…."></textarea><a
                                        class="btn btn-primary btn--m" href="#!btn">GỬI</a>
                                </div>
                                <p class="text-alert"><i class="ic ic-success"></i> Gửi tin nhắn thành công.</p>
                                <p class="text-alert"><i class="ic ic-alert"></i> Gửi tin nhắn thất bại.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <footer id="footer" class="bg-footer">
                    <div class="container">
                        <div class="sub-container">
                            <div class="row">
                                <div class="z-license-logo clearfix">
                                    <span class="z-logo"></span>
                                    <div class="z-license-info">
                                        <div class="z-copyright">
                                            Một sản phẩm của Zalo
                                        </div>
                                    </div>
                                </div>
                                <ul class="z-nav-footer">
                                    <li>
                                        <a class="z-link z-copyright-intro" title="Giới thiệu">Giới thiệu</a>
                                    </li>
                                    <li>
                                        <a href="" class="z-link z-link-special" target="_blank">•</a>
                                    </li>
                                    <li>
                                        <a href="https://mp3.zing.vn/huong-dan/contact" class="z-link " title="Liên hệ"
                                           target="_blank">Liên hệ</a>
                                    </li>
                                    <li>
                                        <a href="" class="z-link z-link-special" target="_blank">•</a>
                                    </li>
                                    <li>
                                        <a href="https://adtima.vn/lien-he?utm_source=zingmp3&amp;utm_medium=footer"
                                           class="z-link " title="Quảng cáo" target="_blank">Quảng cáo</a>
                                    </li>
                                    <li>
                                        <a href="" class="z-link z-link-special" target="_blank">•</a>
                                    </li>
                                    <li>
                                        <a href="https://docs.google.com/forms/d/1MBR_N1S1vB7LKbSbY0C-03kjDyM-Lp6fGLoyoebJTq0/viewform?edit_requested=true"
                                           class="z-link " title="Góp ý" target="_blank">Góp ý</a>
                                    </li>
                                    <li>
                                        <a href="" class="z-link z-link-special" target="_blank">•</a>
                                    </li>
                                    <li>
                                        <a href="https://mp3.zing.vn/tnc" class="z-link" title="Thỏa thuận sử dụng"
                                           target="_blank">Thỏa thuận sử dụng</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </div>
</div>
<div off-canvas="slidebar-1 left reveal">
    <div class="sidebar-container">
        <div class="sidebar-body">
            <ul class="first">
                <li class="has-collapse"><a class="collapsed active" title="" data-toggle="collapse" href="#collapse-m1"
                                            aria-expanded="true" aria-controls="collapse-m1"><strong>VIP</strong> <i
                        class="arrow"></i></a>
                    <div class="collapse in" id="collapse-m1">
                        <ul>
                            <li><a title="" class="buy-vip" href="#">Mua VIP</a></li>
                            <li><a title="" class="buy-code" href="#">Mua Code</a></li>
                            <li><a title="" href="/vip/insert-code">Nhập Code</a></li>
                            <li><a title="" href="/vip/faqs.html">Hướng dẫn mua VIP</a></li>
                        </ul>
                    </div>
                </li>
                <li class="has-collapse"><a class="collapsed" title="" data-toggle="collapse" href="#collapse-m2"
                                            aria-expanded="true" aria-controls="collapse-m1"><strong>3G VIP</strong> <i
                        class="arrow"></i></a>
                    <div class="collapse in" id="collapse-m2">
                        <ul>
                            <li><a title="" href="https://zaloplus.vn?utm_source=mp3_vip&utm_medium=vip_menu&app=mp3">Mua
                                3G VIP</a></li>
                            <li class="none"><a title="" href="/vip/faqs.html">Hướng dẫn mua 3G VIP</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
            <ul>

                <security:authorize access = "isAnonymous()">
                    <li><a title="" href="<c:url value="/dang-nhap" /> ">Đăng nhập</a></li>
                </security:authorize>
                <security:authorize access = "isAuthenticated()">
                    <li><a title="" href="<c:url value="/thoat" /> ">Đăng xuất</a></li>
                </security:authorize>

                <li><a title="" href="/vip/faqs.html">Hỗ trợ</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="modal fade" id="modal-payment1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--l">
        <div class="modal-container">
            <div class="title-modal"><span>Chọn hình thức thanh toán</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i
                    class="ic ic-close"></i></a>
            <div class="content">
                <div class="payment-container">
                    <div class="item-p">
                        <div class="inside">
                            <a class="link-item" href="#" onclick="zmp3BankingPay.step1();"></a>
                            <span class="w-img"><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic_123pay.png"
                                                     alt="Zing Mp3 - VIP"></span>
                            <h2>Internet Banking</h2>
                            <div class="w-p">
                                <p>Cổng thanh toán ngân hàng trực tuyến nhanh chóng và tiện lợi</p>
                            </div>
                            <p><a class="btn btn-default btn--m" href="#" onclick="zmp3BankingPay.step1();">Thanh
                                toán</a></p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--m">
        <div class="modal-container">
            <div class="title-modal"><span>Thanh toán bằng Zalo Pay</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i
                    class="ic ic-close"></i></a>
            <div class="content">
                <div class="payment-container">
                    <div id="from-zalopay" class="w-qrcode has-and">
                        <div class="item-qr"><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic_qr.png"
                                                  alt="Zing Mp3 - VIP"></div>
                        <div class="item-and"><img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic_qr_and.png"
                                                   alt="Zing Mp3 - VIP"></div>
                    </div>
                    <p class="timer">
                        <span>Thời gian còn lại: <span class="time-loading">300</span> giây</span>
                        <a href="#" class="retry none">Thử lại</a>
                    </p>
                    <p class="textAlign-center"><a class="btn btn--m" href="#" onclick="zmp3ZaloPay.step1();"
                                                   style="min-width:218px;">Quay lại</a></p>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-success" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--m">
        <div class="modal-container">
            <div class="title-modal"><span><i class="ic ic-success"></i> Thanh toán thành công</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i
                    class="ic ic-close"></i></a>
            <div class="content">
                <div class="payment-container">
                    <div class="list-para">
                        <p>
                            <span class="label">Tài khoản thanh toán:</span>
                            <span class="ctn-label userid">1032124096</span>
                        </p>
                        <p><span class="label">Mã giao dịch:</span><span class="ctn-label transactionid"></span>
                        </p>
                        <p><span class="label">Thời gian giao dịch:</span><span class="ctn-label time-payment"></span>
                        </p>
                        <p><span class="label">Thời hạn VIP:</span><span
                                class="ctn-label time-expire-vip"></span></p>
                    </div>
                    <div class="space m"></div>
                    <p class="textAlign-center"><a class="btn btn--m" href="/" style="min-width:218px;">Truy cập Zing
                        MP3</a></p>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-unsuccess" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--m">
        <div class="modal-container">
            <div class="title-modal"><span><i class="ic ic-alert"></i> Thanh toán thất bại</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i
                    class="ic ic-close"></i></a>
            <div class="content">
                <div class="payment-container">
                    <div class="list-para">
                        <p class="alert-tips">Rất tiếc, thanh toán thất bại do giao dịch không thành công!</p>
                        <p><span class="label">Tài khoản thanh toán:</span><span class="ctn-label userid"></span></p>
                        <p><span class="label">Mã giao dịch:</span><span class="ctn-label transactionid"></span></p>
                        <p><span class="label">Thời gian giao dịch:</span><span class="ctn-label time-payment"></span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>



<div class="modal fade" id="modal-payment-package-card" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--m">
        <div class="modal-container">
            <div class="title-modal"><span>Chọn gói VIP</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i
                    class="ic ic-close"></i></a>
            <div class="content">
                <div class="payment-container">
                    <div class="list-para none">
                        <p class="alert-tips message"></p>
                    </div>
                    <div class="payment-type--zalopay">
                        <ul class="list-type--zalopay">
                            <li><a href="#!" onclick="zmp3CardPay.step2(10000);">
                                <h5>10 Ngày</h5>
                                <p class="price">10.000 VNĐ</p></a></li>
                            <li><a href="#!" onclick="zmp3CardPay.step2(20000);">
                                <h5>20 Ngày</h5>
                                <p class="price">20.000 VNĐ</p></a></li>
                            <li><a href="#!" onclick="zmp3CardPay.step2(50000);">
                                <h5>50 Ngày</h5>
                                <p class="price">50.000 VNĐ</p></a></li>
                            <li><a href="#!" onclick="zmp3CardPay.step2(100000);">
                                <h5>110 Ngày</h5>
                                <p class="price">100.000 VNĐ</p>
                                <p class="old-price">110.000 VNĐ</p>
                            </a></li>
                            <li><a href="#!" onclick="zmp3CardPay.step2(200000);">
                                <h5>240 Ngày</h5>
                                <p class="price">200.000 VNĐ</p>
                                <p class="old-price">240.000 VNĐ</p>
                            </a></li>
                            <li><a href="#!" onclick="zmp3CardPay.step2(500000);">
                                <h5>720 Ngày</h5>
                                <p class="price">500.000 VNĐ</p>
                                <p class="old-price">720.000 VNĐ</p>
                            </a></li>
                        </ul>
                        <div class="space"></div>
                        <p class="textAlign-center"><a class="btn btn--m" href="#" onclick="zmp3Vip.buyVip();"
                                                       style="min-width:218px;">Quay lại</a></p>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-card" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--m">
        <div class="modal-container">
            <div class="title-modal">
                <span>Thanh toán</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i class="ic ic-close"></i>
            </a>
            <div class="content">
                <div class="payment-container">
                    <div class="payment-type--card">
                        <form id="form-payment-card" class="main-form">
                            <div class="list-para">
                                <p class="alert-tips message"></p>
                                <div class="code-vip-message"></div>
                            </div>
                            <div class="line-form">
                                <p>Chọn nhà mạng:</p>
                                <ul class="list-type--card list-card">
                                    <li class="active">
                                        <a href="#" class="fn-choose-card" data-card="4"><img
                                                src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/card_viettel.png"
                                                alt="Zing Mp3 - VIP">
                                        </a>
                                    </li>
                                    <li><a href="#" class="fn-choose-card" data-card="2"><img
                                            src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/card_mobiphone.png"
                                            alt="Zing Mp3 - VIP"></a></li>
                                    <li><a href="#" class="fn-choose-card" data-card="3"><img
                                            src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/card_vinaphone.png"
                                            alt="Zing Mp3 - VIP"></a></li>
                                </ul>
                            </div>
                            <div class="line-form form-input-card form-seri">
                                <input type="text" name="seri" class="seri" required autofocus>
                                <label>Nhập số Seri trên thẻ…</label>
                            </div>
                            <div class="line-form form-input-card form-code">
                                <input type="text" name="code" class="code" required autofocus>
                                <label>Nhập số code trên thẻ…</label>
                            </div>
                        </form>
                        <div class="textAlign-center has-2button">
                            <div class="w-btn"><a class="btn btn--m" href="#" onclick="zmp3CardPay.step1();">Quay
                                lại</a></div>
                            <div class="w-btn"><a class="btn btn-secondary btn--m fn-submitcard" href="javascript:;">Thanh
                                toán</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-zalopay" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--m">
        <div class="modal-container">
            <div class="title-modal"><span>Chọn gói VIP</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i
                    class="ic ic-close"></i></a>
            <div class="content">
                <div class="payment-container">
                    <div class="list-para none">
                        <p class="alert-tips message"></p>
                    </div>
                    <div class="payment-type--zalopay">
                        <ul class="list-type--zalopay">
                            <li><a href="#!" onclick="zmp3ZaloPay.step2(10000);">
                                <h5>10 Ngày</h5>
                                <p class="price">10.000 VNĐ</p></a></li>
                            <li><a href="#!" onclick="zmp3ZaloPay.step2(20000);">
                                <h5>20 Ngày</h5>
                                <p class="price">20.000 VNĐ</p></a></li>
                            <li><a href="#!" onclick="zmp3ZaloPay.step2(50000);">
                                <h5>50 Ngày</h5>
                                <p class="price">50.000 VNĐ</p></a></li>
                            <li>
                                <a href="#!" onclick="zmp3ZaloPay.step2(100000);">
                                    <h5>110 Ngày</h5>
                                    <p class="price">100.000 VNĐ</p>
                                    <p class="old-price">110.000 VNĐ</p>
                                </a>
                            </li>
                            <li>
                                <a href="#!" onclick="zmp3ZaloPay.step2(200000);">
                                    <h5>240 Ngày</h5>
                                    <p class="price">200.000 VNĐ</p>
                                    <p class="old-price">240.000 VNĐ</p>
                                </a>
                            </li>
                            <li><a href="#!" onclick="zmp3ZaloPay.step2(500000);">
                                <h5>720 Ngày</h5>
                                <p class="price">500.000 VNĐ</p>
                                <p class="old-price">720.000 VNĐ</p>
                            </a></li>
                        </ul>
                        <div class="space"></div>
                        <p class="textAlign-center"><a class="btn btn--m" href="#" onclick="zmp3Vip.buyVip();"
                                                       style="min-width:218px;">Quay lại</a></p>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-internet" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--m">
        <div class="modal-container">
            <div class="title-modal"><span>Chọn gói VIP</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i
                    class="ic ic-close"></i></a>
            <div class="content">
                <div class="payment-container">
                    <div class="payment-type--zalopay">
                        <ul class="list-type--zalopay">
                            <!-- <li>
                                <a href="#" onclick="zmp3BankingPay.step2(1, 49000);">
                                    <h5>30 ngày</h5>
                                    <p class="price">49.000 VNĐ</p>
                                    <p class="old-price">59.000 VNĐ</p>
                                </a>
                            </li> -->
                            <li>
                                <a href="#" onclick="zmp3BankingPay.stepBuyVip(6, 279000);">
                                    <h5>6 tháng</h5>
                                    <p class="price">279.000 VNĐ</p>
                                    <p class="old-price">354.000 VNĐ</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" onclick="zmp3BankingPay.stepBuyVip(12, 499000);">
                                    <h5>1 năm</h5>
                                    <p class="price">499.000 VNĐ</p>
                                    <p class="old-price">708.000 VNĐ</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" onclick="zmp3BankingPay.stepBuyVip(24, 899000);">
                                    <h5>2 năm</h5>
                                    <p class="price">899.000 VNĐ</p>
                                    <p class="old-price">1.416.000 VNĐ</p>
                                </a>
                            </li>
                        </ul>
                        <div>
                            <div class="space" style="border-top: 1px solid #eee;"></div>
                            <div>
                                <div class="zaloplus">
                                    <span style="font-weight: normal; font-size: 0.75em; color: #7c7d80;">Đăng kí gói ZData để trải ngiệm âm nhạc không tốn dung lượng 3G/4G chỉ từ <span
                                            style="display: inline-block;">3000đ/ngày.</span> <span
                                            style="color: #0287D6;"><a
                                            style="color: #67a5ca;font-weight: 400; font-size: 12px;"
                                            href="https://zaloplus.vn?utm_source=mp3_vip&utm_medium=vip_popup&app=mp3"
                                            target="_blank">Tìm hiểu ngay</a></span></span>
                                </div>
                            </div>
                        </div>
                        <p class="textAlign-center none"><a class="btn btn--m" href="#" onclick="zmp3Vip.buyVip();"
                                                            style="min-width:218px;">Quay lại</a></p>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>

<div class="modal fade" id="modal-payment-code-internet" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--m">
        <div class="modal-container">
            <div class="title-modal"><span>Chọn gói Code VIP</span></div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close"><i
                    class="ic ic-close"></i></a>
            <div class="content">
                <div class="payment-container">
                    <div class="payment-type--zalopay">
                        <ul class="list-type--zalopay">
                            <li>
                                <a href="#" onclick="zmp3BankingPay.stepChoosePackage($(this), 6, 279000);">
                                    <h5>6 tháng</h5>
                                    <p class="price">279.000 VNĐ</p>
                                    <p class="old-price">354.000 VNĐ</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" onclick="zmp3BankingPay.stepChoosePackage($(this), 12, 499000);">
                                    <h5>1 năm</h5>
                                    <p class="price">499.000 VNĐ</p>
                                    <p class="old-price">708.000 VNĐ</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" onclick="zmp3BankingPay.stepChoosePackage($(this), 24, 899000);">
                                    <h5>2 năm</h5>
                                    <p class="price">899.000 VNĐ</p>
                                    <p class="old-price">1.416.000 VNĐ</p>
                                </a>
                            </li>
                        </ul>
                        <div class="payment-code-container">
                            <div class="payment-code-row">
                                <div class="payment-code-content">Số lượng code</div>
                                <div class="payment-code-count">
                                    <a id="payment-descrese" style="color: #000">-</a>
                                    <span id="payment-count" style="color: #000">1</span>
                                    <a id="payment-increse" style="color: #000">+</a>
                                </div>
                            </div>
                            <div class="space-line l"></div>
                            <div class="payment-code-row">
                                <div class="payment-code-content">
                                    Thành tiền
                                </div>
                                <div class="payment-code-price">
                                    <div class="new-price" id="total-price">0 VNĐ</div>
                                </div>
                            </div>
                        </div>
                        <div class="space m"></div>
                        <div class="textAlign-center has-2button">
                            <a class="btn btn-secondary btn--xs btn-special fn-submitCounter disabled" href="javascript:;">Thanh toán</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-count-code" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--s">
        <div class="modal-container">
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close">
                <i class="ic ic-close"></i>
            </a>
            <div class="content">
                <div class="payment-container">
                    <div class="payment-type--zalopay has-scroll disabled" id="form-payment-bank">
                        <div class="title-modal"><span>Số lượng code</span></div>
                        <div class="lstitle-modal">
                            Vui lòng nhập số lượng code cần mua
                        </div>
                        <div class="payment-code-container">
                            <div class="payment-code-row">
                                <div class="payment-code-content">
                                </div>
                                <div class="payment-code-price">
                                    <div class="new-price"></div>
                                </div>
                                <div class="payment-code-count">
                                    <a id="payment-descrese" style="color: #000">-</a>
                                    <span id="payment-count" style="color: #000">1</span>
                                    <a id="payment-increse" style="color: #000">+</a>
                                </div>
                            </div>
                            <div class="space-line l"></div>
                            <div class="payment-code-row">
                                <div class="payment-code-content">
                                    Thành tiền
                                </div>
                                <div class="payment-code-price">
                                    <div class="new-price" id="total-price"></div>
                                </div>
                                <div class="payment-code-count">
                                </div>
                            </div>
                        </div>
                        <div class="space m"></div>
                    </div>
                    <div class="textAlign-center has-2button">
                        <a class="btn btn--xs" href="#" onclick="zmp3BankingPay.step1(true);">Quay lại</a>
                        <a class="btn btn-special btn--xs fn-submitCounter" href="javascript:;">Thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-bank" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--l">
        <div class="modal-container">
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close">
                <i class="ic ic-close"></i>
            </a>
            <div class="content">
                <div class="payment-container">
                    <div class="payment-type--zalopay has-scroll disabled" id="form-payment-bank">
                        <div class="title-modal"><span>Chọn ngân hàng</span></div>
                        <div class="lstitle-modal title-modal-bank">
                            Thẻ ATM có Internet Banking (miễn phí) - Thanh toán gói dịch vụ Zing Mp3 VIP 6 tháng
                            (279.000đ)
                        </div>
                        <div class="list-para textAlign-center">
                            <p id="alert-message" class="alert-tips message none"></p>
                        </div>
                        <ul class="list-type--bank list-banks">

                            <li>
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PCC"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_visa.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li>
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PVCB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_vietcombank.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li>
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PVTB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_vietinbank.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li>
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PBIDV"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_bidv.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li>
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PAGB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_agri.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li>
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PTCB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_techcombank.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li>
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PSCB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_sacombank.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li class="has-more show-on-small">
                                <a id="func-more" href="#more"><span class="more">Ngân hàng khác</span></a>
                            </li>

                            <li id="more" >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PACB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_acb.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PDAB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_donga.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PVPB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_vp.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PVIB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_vib.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PMB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_mb.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PMRTB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_maritime.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PEIB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_eximbank.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PHDB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_hdbank.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123POCB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_ocean.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PPGB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_pg.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PNAB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_nama.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PGPB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_gp.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PSGB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_saigon.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PVAB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_vieta.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PBAB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_baca.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                            <li >
                                <a href="#" class="choose-bank fn-choose-bank" data-bank="123PNVB"><img
                                        src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/bank_navibank.png" alt="Zing Mp3 - VIP">
                                </a>
                            </li>

                        </ul>
                        <div class="space"></div>
                    </div>
                    <div class="textAlign-center has-2button">
                        <a class="btn btn--xs" href="#" onclick="zmp3BankingPay.step1(true);">Quay lại</a>
                        <a class="btn btn-special btn--xs fn-submitbank" href="javascript:;">Thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-bank-zalopay" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal--xs">
        <div class="modal-container">
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close">
                <i class="ic ic-close"></i>
            </a>
            <div class="content">
                <div class="payment-container payment-new-zalopay">
                    <div class="has-scroll disabled" id="form-payment-bank-zalopay">
                        <div class="title-modal">
                            <span>Phương thức thanh toán</span>
                        </div>
                        <ul class="list-type--new-zalopay">
                            <li class="fn-choose-payment-zalopay" data-channel="36">
                                <div class="icon">
                                    <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic-card.svg" alt="MasterCard">
                                </div>
                                <div class="item-content">
                                    <div class="text">Thẻ quốc tế</div>
                                    <div class="sub-image">
                                        <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic-card-1.svg" alt="MasterCard">
                                        <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic-card-2.svg" alt="MasterCard">
                                        <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic-card-3.svg" alt="MasterCard">
                                    </div>
                                </div>
                            </li>
                            <li class="fn-choose-payment-zalopay" data-channel="39">
                                <div class="icon">
                                    <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic-atm.svg"
                                         alt="Internet Banking - ATM">
                                </div>
                                <div class="item-content">
                                    <div class="text">Thẻ ATM</div>
                                    <div class="subtext">
                                        Hỗ trợ Internet Banking
                                    </div>
                                </div>
                            </li>
                            <li class="fn-choose-payment-zalopay" data-channel="38">
                                <div class="icon">
                                    <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/ic-zalopay.svg" alt="ZaloPay">
                                </div>
                                <div class="item-content">
                                    <div class="text">ZaloPay</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="textAlign-center">
                        <a class="btn btn-special btn--xs fn-submitchannnel" href="javascript:;">tiếp tục thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-code-success" tabindex="-1" role="dialog"
     aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal--s">
        <div class="modal-container">
            <div class="title-modal">
                <div class="popup-img">
                    <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/popup-code-img.png" alt="">
                </div>
                <span>
					Mã VIP Code của bạn
				</span>
            </div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close">
                <i class="ic ic-close"></i>
            </a>
            <div class="content">
                <div class="payment-container">
                    <div class="list-para">
                        <p class="highlight">

                        </p>
                        <div class="group-btn">
                            <a class="btn btn--m btn-special zalo-share-button" role="button"
                               data-href="https://zingmp3.vn"
                               data-customize="true"
                               data-oaid="4073327408156217288">
                                Gửi Code vip này
                            </a>
                            <a class="btn btn--m" href="">
                                Tới trang nhập code
                            </a>
                        </div>

                    </div>
                    <h5>
                        Bạn có thể tìm lại code đã mua trong tin nhắn của ZingMP3 trên Zalo.
                        Bấm <a href="/vip/bill?id=" target="_blank">vào đây</a> để xuất hoá đơn</h5>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<div class="modal fade" id="modal-payment-multi-code-success" tabindex="-1" role="dialog"
     aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal--s">
        <div class="modal-container">
            <div class="title-modal">
                <div class="popup-img">
                    <img src="//static-zmp3.zadn.vn/skins/zmp3-v5.1/vip/images/popup-code-img.png" alt="">
                </div>
                <span>
					Mã VIP Code của bạn
				</span>
            </div>
            <a class="func-close" title="Đóng lại" data-dismiss="modal" aria-label="Close">
                <i class="ic ic-close"></i>
            </a>
            <div class="content">
                <div class="payment-container">
                    <div class="list-para">
                        <p class="highlight">
							<span class="ctn-label-group">

							</span>
                        </p>
                        <a class="btn btn--m" href="" target="_blank">
                            Tới trang nhập code
                        </a>
                    </div>
                    <h5>
                        Bạn có thể tìm lại code đã mua trong tin nhắn của ZingMP3 trên Zalo.
                        Bấm <a href="/vip/bill?id=" target="_blank">vào đây</a> để xuất hoá đơn</h5>
                </div>
            </div>
        </div>
        <a class="func-close-mobile" title="Đóng lại" data-dismiss="modal" aria-label="Close">Đóng</a>
    </div>
</div>
<section class="z-modal --z--rule-modal z-show" tabindex="-1" role="dialog" aria-labelledby="modal-label" aria-hidden="true" id="rule-footer" style="overflow: hidden">
    <div class="z-modal-inner z-no-pad">
        <div class="z-modal-content">
            <div class="z-buy-download-zone" style="padding: 30px 35px;">
                <div class="--z--zingmp3-logo"></div>
                <div class="z-copyright-content">
                    Giấy phép mạng xã hội: 314/GP-BTTTT do Bộ Thông tin và Truyền thông cấp ngày 17/7/2015
                    <br>
                    <br>
                    Chủ quản: Công Ty Cổ Phần VNG
                    <br>
                    52 Nguyễn Ngọc Lộc, Phường 14, Quận 10, TP. Hồ Chí Minh
                </div>
                <a class="z-login-btn close-modal">Đóng</a>
            </div>
        </div>
    </div>
</section>

</body>
</html>
