<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Bộ Giao thông Vận tải</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<!-- <meta http-equiv="Content-Security-Policy" content="img-src 'self' 'unsafe-inline' 'unsafe-eval'"> -->
	<meta name="description" content="Cổng Dịch vụ công Bộ Giao thông vận tải cung cấp toàn bộ thông tin về thủ tục hành chính, thực hiện và giải quyết thủ tục hành chính trực tuyến...">
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/color_schemes/${theme_color_id}-theme/favicon.ico">
	<link rel="preload" href="/o/kiemthuduongbo-theme/images/bg-header-page.webp" as="image">
	<link rel="preload" href="/o/kiemthuduongbo-theme/images/color_schemes/bogt-theme/logo.png" as="image">
	
	
	<!-- Config Scope -->
	<script type="text/javascript">
		var activeChangePass = false; /* disable change password employee*/
		var requiredOptionConfig = {
			applicantIdNo: false,
			applicantName: false,
			address: false,
			cityCode: false,
			districtCode: false,
			wardCode: false,
			contactTelNo: false,
			contactEmail: false,
			delegateIdNo: false,
			delegateName: false,
			delegateAddress: false,
			delegateCityCode: false,
			delegateDistrictCode: false,
			delegateWardCode: false,
			delegateTelNo: false,
			delegateEmail: false
		}; /*cấu hình bắt buộc thông tin chủ hồ sơ*/
		var applicantSameDelegate = false; /*Tự động check thông tin người nộp giống thông tin chủ hồ sơ*/
		var showTinhPhi = true; /*show tính phí dịch vụ chuyển phát*/
		var hasOrganization = false; /*loại người dùng tách "Tổ chức" riêng*/
		var applicantConfig = false; /*bind applicant từ danh sách applicant*/
		var notifyConfig = false; /*lựa chọn hình thức gửi thông báo*/
		var defaultCityCode = false; /*set cityCode mặc định ex: 87 (Đồng Tháp)*/
		var defaultCityName = false; /*set cityName mặc định ex: 'Tỉnh Đồng Tháp' (Đồng Tháp)*/
		var khoTaiLieuCongDan = true; /*sử dụng kho tài liệu công dân*/
		var khoTaiLieuTapTrung = true;
		var showKySoDvc = false; /*sử dụng ký số phía cổng DVC*/
		var hasPreviewSync = false; /*in tiến trình xử lý hs*/
		var thanhToanChuyenKhoan = true; /*sử dụng thanh toán chuyển khoản*/
		var thaoTacUyQuyen = false; /*sử dụng chức năng ủy quyền xử lý hs*/
		var hasDownloadAllFile = false; /*sử dụng chức năng download tất cả giấy tờ đính kèm*/
		var checkTrungChuHoSo = false; /*bật check trùng chủ hồ sơ có hồ sơ đang giải quyết*/
		var fromViaPostalConfig = false; /*check xác nhận là hồ sơ nhận qua bưu chính*/
		var activePdfEditor = false; /*sử dụng chức năng ghi chú trên tài liệu Pdf*/
		var viTriLuuTru = false; /*sử dụng chức năng vị trí lưu trữ hồ sơ*/
		var levelNameMapping = {
			2: 'Mức độ 2',
			3: 'DVCTT một phần',
			4: 'DVCTT toàn trình'
		}
	</script>
	<!-- end -->
	
	<base href="/">

	<@liferay_util["include"] page=top_head_include />

	<!-- <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&amp;subset=vietnamese" rel="stylesheet"> -->
	
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=8888141" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=888148" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'" type="text/css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=789987" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">

	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
    
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js?t=9812412312"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap.min.js?t=9812412312" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/handlebars.min.js?t=9812412312" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/alpaca.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment-with-locales.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap-datetimepicker.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment.min.js" defer></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery-comments.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.textcomplete.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/svg-pan-zoom.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/date-time-picker.js?t=8312312" defer></script>
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/mermaid.js?t=31412321"></script> -->
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/custom.js?t=100" defer></script> -->
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
</head>

<body class="${css_class} page-theme">

<!-- <@liferay_ui["quick-access"] contentId="#main-content" /> -->

<#if permissionChecker.isOmniadmin()>
	<@liferay_util["include"] page=body_top_include />
	<@liferay.control_menu />
<#else>
	<style>
		html .has-control-menu #wrapper {
			margin-top: 0 !important;
		}
		html body.open #wrapper {
			padding-left: 0 !important;
		}
	</style>
</#if>

<div class="container-fluid" id="wrapper" style="overflow: hidden;">
	<header id="banner" class="row">
		<div class="container">
			<div class="mLogo align-middle"> 
				<a aria-label="Trang chủ" href="${site_default_url}"> 
					<img alt="Dịch vụ công Bộ Giao thông vận tải" src="${themeDisplay.getPathThemeRoot()}/images/color_schemes/${img_logo}"> 
					<div class="text-logo"> 
						Bộ Giao thông Vận tải
						<br/>
						<span>Cổng dịch vụ công và hệ thống thông tin một cửa điện tử</span>
					</div> 
					<!-- <img style="width: 750px; height: 100px" src="${themeDisplay.getPathThemeRoot()}/images/color_schemes/${img_bg_banner}?t=938123123123"> -->
				</a> 
			</div>

			<div class="signed-out-actions">
				<a aria-label="Đăng nhập" href="/web/cong-dich-vu-cong/login_dichvucong#/login-dvc" class="btn-login">Đăng nhập</a>
				<a aria-label="Đăng ký" href="/web/cong-dich-vu-cong/register#/" class="btn-register">Đăng ký</a>
			</div>
			
			<div id="react-root" style="float: right;width: 100%;height: 71px;">
				<div id="app_login"></div>
			</div>
		</div>

		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</header>

	<section id="content">
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
	
</div>

	<!-- <footer id="footer" >
		<div class="left">
			<p class="site-name">Trung tâm Công nghệ thông tin Bộ Giao thông Vận tải</p>
			<p class="info-wrapper">
				<span>Địa chỉ: 80 Trần Hưng Đạo, Hoàn kiếm, Hà Nội</span>
				<span>Hotline: 1900 0318 - Điện thoại: (04) 3822 2979 - Fax: 38221066</span>
				<span>Email: bophanhotro@mt.gov.vn</span>
			</p>
		</div>
		<div class="right">
			<p class="copyright">Bản quyền thuộc về Bộ Giao thông vận tải</p>
			<p>
				<span>Hỗ trợ người dùng Cổng DVC Bộ GTVT</span>
				<a target="_blank" href="https://www.facebook.com/groups/1207489822675506/" class="icon-face">
					<i class="fa fa-facebook"></i>
				</a>
			</p>
		</div>
	</footer> -->
	<footer id="footer">
		<div class="footer">
			<div class="sitename">
				<i class="fa fa-copyright" aria-hidden="true"></i> TRUNG TÂM CÔNG NGHỆ THÔNG TIN - BỘ GTVT
			</div>
			<div>
				<span>Địa chỉ: 80 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội</span>
				<span>Hotline: 1900 0318 - Điện thoại: (024) 3.822.2979</span>
			</div>
			<div>
				<span>Fax: (024) 3.822.1066</span>
				<span>Email: bophanhotro@mt.gov.vn</span>
			</div>
			<a href="" class="" aria-label="Dịch vụ công" style="width: 34px;
			height: 34px;
			text-align: left;
			line-height: 34px;"></a>
			<!-- <a target="_blank" href="https://www.facebook.com/groups/1207489822675506/" class="icon-face">
				<i class="fa fa-facebook"></i>
			</a> -->
		</div>
	</footer>

	<!-- <a href="" class="btt"><i class="fa fa-chevron-up" aria-hidden="true"></i></a> -->
	<!-- <a href="/" class="bth"><i class="fa fa-home" aria-hidden="true"></i></a> -->

<!-- inject:js -->
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js?t=9314123123"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js?t=9314123123"></script>
	<#if permissionChecker.isOmniadmin()>
		<@liferay_util["include"] page=body_bottom_include />
		<@liferay_util["include"] page=bottom_include />
	</#if>
<!-- endinject -->
<!-- <script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf.js?t=9991"></script>
<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf-table-extractor.js?t=9991"></script> -->
<!-- <script src="https://sp.zalo.me/plugins/sdk.js"></script> -->
	<!-- Begin Gov Tracking Code -->
    <script type="text/javascript">
        var _govaq = window._govaq || [];
    _govaq.push(['trackPageView']);
    _govaq.push(['enableLinkTracking']);
    (function () {
        _govaq.push(['setTrackerUrl', 'https://f-emc.ngsp.gov.vn/tracking']);
        _govaq.push(['setSiteId', '47']);
        var d = document,
            g = d.createElement('script'),
            s = d.getElementsByTagName('script')[0];
        g.type = 'text/javascript';
        g.async = true;
        g.defer = true;
        g.src = 'https://f-emc.ngsp.gov.vn/embed/gov-tracking.min.js';
        s.parentNode.insertBefore(g, s);
    })();
    </script>
	<!-- End Gov Tracking Code -->
	<!-- Chatbot -->
	<script type="text/javascript">(function () {var meta = document.createElement("meta");meta.name = "viewport";meta.content = "width=device-width, initial-scale=1";document.getElementsByTagName("head")[0].appendChild(meta);var a = document.createElement("script");a.async = !0;a.type = "text/javascript";a.id="platform-script";a.setAttribute("data-bid","61eac907bf9aad6c8634e9d1");a.setAttribute("data-appName","web");a.src = "https://cyberbot.vn/js/apps/chatbox/chatbox.botplatform.js";var b = document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a, b) })();</script>
	<!--  -->
	<script>
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
			
			//Back to top
			// <!-- var offset = 300, -->
			// 	<!-- scroll_top_duration = 600; -->
			// 	<!-- $back_to_top = $('.btt'); -->
			// 	<!-- $back_to_home = $('.bth'); -->
				
			// <!-- $(window).scroll(function(){ -->
			// 	<!-- ( $(this).scrollTop() > offset ) ? $back_to_top.addClass('btt-is-visible') : $back_to_top.removeClass('btt-is-visible'); -->
			// 	<!-- ( $(this).scrollTop() > offset ) ? $back_to_home.addClass('btt-is-visible') : $back_to_home.removeClass('btt-is-visible'); -->
			// <!-- }); -->
			// //Smooth scroll to top
			// <!-- $back_to_top.on('click', function(event){ -->
			// 	<!-- event.preventDefault(); -->
			// 	<!-- $('body,html').animate({ -->
			// 		<!-- scrollTop: 0 , -->
			// 		<!-- }, scroll_top_duration -->
			// 	<!-- ); -->
			// <!-- }); -->
		});
	</script>

<script type="text/javascript">
	// window.PDFJS.workerSrc = '${themeDisplay.getPathThemeRoot()}/js/pdf.worker.js?t=9991';
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
</script>

</body>
	<style>
		.bg-gif-register {
			background: url(https://dichvucong.mt.gov.vn/o/kiemthuduongbo-theme/images/bg-gif-register.gif) center center / contain no-repeat !important;
		}
		.counter-up-down {
			width: 100px;
			display: inline-block;
		}
		.counter-up-down input[type=number] {
			text-align: center;
			border-left: 1px solid #dedede;
			border-right: 1px solid #dedede;
		}
		.counter-up-down input[type=number]::-webkit-inner-spin-button, .counter-up-down input[type=number]::-webkit-outer-spin-button { 
		  -webkit-appearance: none; 
		  margin: 0; 
		}
		.counter-up-down .v-text-field.v-text-field--solo .v-input__control {
			min-height: 0px;
			border: 1px solid #dedede;
			border-radius: 3px;
		}
		.group__thanh_phan .v-text-field__details {
			display: none
		}
		.counter-up-down .v-input__slot {
			border: 1px solid #dedede;
			padding: 0 4px !important;
			margin: 0px;
		}
		.group__thanh_phan .v-input__slot {
			height: 32px !important;
			margin: 0px;
			border: 1px solid #dedede;
			border-radius: 3px;
			padding: 0 4px !important;
		}
		.group__thanh_phan .v-text-field__details {
			display: none !important
		}
		body.page-theme #content {
			min-height: -webkit-calc(100vh - 236px);
			min-height: calc(100vh - 236px);
		}
		.page-theme .btt {
			display: none;
		}
		.page-theme .btt.btt-is-visible, .page-theme .bth.btt-is-visible {
			display: block;
			z-index: 9999;
		}
		#footer .fa {
			font-family: FontAwesome !important;
		}

		.signed-out #react-root {
			display: none;
		}
		/* .page-theme #navigation {
			overflow: hidden;
			margin-bottom: 10px;
		} */
		#portlet_npmreactlogin {
			    position: absolute;
				right: 15px;
				top: 25px;
		}
		#navigation ul.child-menu {
			display: none;
		}
		#wrapper {
			padding-top: 0 !important;
		}

body #react-root > div > div {
    width: auto !important;
    float: right;
}
.hidden__temp {
		opacity: 0;
	}
	#react-root .navigation-drawer--right>.navigation-drawer__border {
		position: absolute;
		top: 0;
		height: 100%;
		width: 100%;
		background-image: url(http://hanhchinhcong.phutho.gov.vn/o/parent-opencps-vue/images/bg-home.jpg);
		background-size: cover;
		-webkit-filter: blur(200px);
		z-index: -1;
		filter: blur(200px);
	}
	#react-root .navigation-drawer .list {
		background: transparent;
	}
	#react-root .navigation-drawer>.list .list__tile:hover {
		background: transparent !important;
	}
	#react-root .btn-toggle--selected {
		box-shadow: none !important;
	}
	#react-root .theme--light .v-divider {
		border-color: #eee;
	}
	#react-root .theme--light .v-list__tile__content {
		height: 30px;
	}
	#react-root .navigation-drawer>.list .list__tile {
			height: 42px;
			padding: 0 16px !important;
	}
	#react-root .theme--light .btn-toggle {
			width: 100%;
		background: #fff;
		border-radius: 4px;
		height: 20px;
	}
	#react-root .theme--light .btn-toggle .btn {
			height: 20px;
			opacity: 1;
		font-size: 10px;
	}
	#react-root .theme--light .v-list__tile__title {
			font-size: 24px;
		padding-left: 10px;
		color: #383838;
	}
	#react-root .theme--light .btn--small {
		height: 18px !important;
		width: 18px !important;
	}
	body #react-root  .v-navigation-drawer--is-mobile:not(.v-navigation-drawer--close), 
	body #react-root .v-navigation-drawer--temporary:not(.v-navigation-drawer--close) {
		-webkit-box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
		box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
	}
	#react-root .overlay--absolute {
		opacity: 0;
	}
	
	.login-wrapper {
		float: right;
	}
	.forgetten-password-input {
		width: 100%;
		line-height: 31px;
		font-size: 13px;
		padding-left: 10px;
		text-decoration: underline;
		color: #fff;
	}
	.action-btn-login-input {
		width: 100%;
		text-align: right;
	}
	.login-wrapper .login-input {
		display: -webkit-box;
		display: flex;
	}
	.login-wrapper .login-input .ico {
		position: relative;
		margin-left: 10px;
	}
	.login-wrapper .login-input .ico:first-child {
		margin-left: 0;
	}
	.login-wrapper .login-input .ico:before {
		content: "";
		font-family: FontAwesome;
		position: absolute;
		color: #005792;
		width: 30px;
		height: 100%;
		display: -webkit-box;
		display: flex;
		-webkit-align-items: center;
		align-items: center;
		-webkit-justify-content: center;
		justify-content: center;
	}
	.login-wrapper .login-input .ico-user:before {
		content: "\f007";
	}
	.login-wrapper .login-input .ico-pass:before {
		content: "\f023";
	}
	.login-wrapper .login-input .ico:after {
		content: "";
		position: absolute;
		top: 20%;
		left: 30px;
		width: 1px;
		height: 60%;
		background-color: #005792;
	}
	.login-wrapper .login-input input {
		height: 26px;
		width: 200px;
		border: 1px solid #005792;
		border-radius: 30px;
		padding-left: 35px;
		font-size: 12px;
		background: #fff;
	}
	.login-wrapper .login-input input:focus {
		outline: none;
	}
	.login-wrapper .btn-action {
		text-align: right;
	}
	.login-wrapper button {
		margin: 5px 0 0 5px;
		height: 26px;
		line-height: 26px;
		padding: 0 12px;
		color: white;
		-webkit-box-shadow: none;
		box-shadow: none;
		border: 0;
		border-radius: 30px;
		background-color: #005792;
		font-size: 12px;
		font-weight: bold;
		will-change: box-shadow;
		box-shadow: 0 3px 1px -2px rgba(0,0,0,.2), 0 2px 2px 0 rgba(0,0,0,.14), 0 1px 5px 0 rgba(0,0,0,.12);
	}
	.login-wrapper .btn-register {
		background-color: #fdb44b;
	}
	.login-wrapper button:hover {
		background-color: #00204a;
		cursor: pointer;
	}
	.login-wrapper .btn-register:hover {
		background-color: #0072bc;
		cursor: pointer;
	}
	#react-root .application--wrap {
		min-height: unset;
	}
	#react-root .application.theme--light {
		background: transparent !important;
		width: 100%;
	}
	#react-root .application--wrap {
		border-top: none !important;
	}
	#react-root .login-wrapper input {
		background-color: #fff;
	}
	#react-root .navigation-drawer{
		height: 100vh !important;
		z-index: 11;
	}
	#react-root .badge__badge {
		font-size: 10px;
		border-radius: 4px;
		height: 16px;
		width: auto;
		padding: 0 4px;
		right: -6px;
		top: -2px;
		min-width: 18px;
		z-index: 10;
	}
	#react-root {
		min-width: 300px;
		width: 100%;
		position: absolute;
		top: 15px;
		right: 15px;
	}
	body #banner__content {
		padding: 0!important;
		height: 66px !important;
	}
	#banner #banner__content .logo {
		position: absolute;
	}
	body #banner .navigation-drawer--fixed {
		position: fixed !important;
	}
	#react-root .btn-toggle .btn__content {
		text-transform: none;
		background: #929292;
		color: #fff;
		font-size: 10px !important;
	}
	#react-root span {
		font-size: 13px;
		color: white;
	}
	#react-root span > i {
		color: white !important;
	}
	#react-root .btn-toggle .btn--active .btn__content {
		background: #fff;
		color: inherit;
	}
	#react-root .btn-toggle .btn--active .btn__content::before {
		opacity: 0;
	}
	#react-root .theme--light.chip,
	#react-root .theme--light .chip {
		background: transparent !important;
	}
	#react-root .menu__content {
		margin-top: 0;
	}
	#react-root .menu__content .list {
		margin-bottom: 0;
		padding: 0;
	}
	#react-root .menu__content .list>div > .list__tile {
		height: 32px;
		font-size: 13px;
		cursor: pointer;
	}
	#react-root .menu__content .list>div:hover {
		background-color: #eee !important;
	}
	#react-root .menu__content .list>div {
		border-bottom: 1px dashed #ddd;
		display: block;
		padding: 0;
		font-size: 13px;
		height: auto;
		color: rgba(0,0,0,.87);
		position: relative;
	}
	#react-root .chip .avatar {
		margin-right: 2px;
	}
	#react-root .chip .avatar img {
		width: 24px;
		height: 24px;
		margin-right: 0px !important;
	}
	#react-root .list__tile__action {
		min-width: 25px;
	}
	<!-- .page-theme #banner img {
		margin-right: unset;
		float: left;
	} -->
	.user-profile-menu-react > div[class*='MuiPopover-paper'] {
		top: 5px !important;
		right: 0 !important;
		left: unset !important;
		position: absolute !important;
	}
	.user-profile-menu-react > div > ul > li {
		border-bottom: 1px dashed #adabab !important;
		padding: 5px 10px !important;
		font-size: 13px !important;
	}
	.user-profile-menu-react > div > ul {
		padding: 0 !important;
	}
	body .page-theme #navigation {
		border-top: 1px solid #ebebeb !important;
	}
	.v-window__container--is-active {
		height: auto !important;
	}
	body .background-triangle-big, body .background-triangle-small {
		background-color: #0072bc !important;
	}
	body .background-triangle-big:before, body .background-triangle-small:before {
		border-top-color: #0072bc !important;
	}

	.timeline-item {
	    padding-bottom: 5px;
	    padding-left: 40px;
	    padding-top: 5px;
	    position: relative;
	}

	<!--.body_login {
		background: url("/o/kiemthuduongbo-theme/images/bg_login-backup.jpg") center center no-repeat;
		background-size: cover;
	}
	.body_login .theme--light.application {
		background-color: transparent !important;
	}
	.body_login .application--wrap {
		min-height: inherit !important;
	}
	body.body_login #content {
		min-height: -webkit-calc(100vh - 130px);
    	min-height: calc(100vh - 130px);
	}
	.body_login .logo img {
		margin-bottom: 60px;
	}
	.body_login .v-content__wrap {
		position: fixed;
	    width: 100%;
	    left: 0;
	    top: calc(50% - 100px);
	    transform: translateY(-50%);
	}
	.body_login .header_login + div	{
		background-color: rgba(0,44,70,0.7);
		max-width: 450px !important;
	}
	.body_login.signed-in .header_login + div .theme--light.v-sheet	{
		background-color: transparent;
		border: 0 !important;
	}
	.body_login .header_login + div * {
		color: white !important;
	}
	.body_login .theme--dark + div {
		border: 0 !important;
	}
	.body_login .theme--dark + div form > div:nth-child(-n+2) .v-input__slot {
		background-color: #d0d0d0 !important;
	}
	.body_login .theme--dark + div form > div:nth-child(-n+2) .v-input--is-focused .v-input__slot {
		background-color: white !important;
	}
	.body_login .theme--dark + div form > div:nth-child(-n+2) .v-input--is-focused .v-input__icon i {
		color: #0b72ba !important;
	}
	.body_login .theme--dark + div form > div:nth-child(-n+2) .v-input__slot input {
		color: #2a2a2a !important;
	}
	.body_login .theme--dark + div button:first-child {
		background-color: #f26522;
	}
	.body_login .theme--dark + div button:last-child {
		background-color: #00aeef;
	}-->

	@media screen and (max-width: 1599px) {
		.body_login .v-content__wrap {
		    top: 45%;
		}
	}
	
	.e-upload .e-file-select-wrap button.e-btn {
		width: 100%;
		height: 100%;
	}
		
		
		
	#navigation .nav-toggle {
		display: none;
	}
	
	@media screen and (max-width: 767px) {
		#navigation .nav-toggle {
			display: inline-block !important;
			color: white;
			border: 1px solid white;
			padding: 3px 10px;
			margin: 8px 0;
			border-radius: 4px;
			margin-left: 15px;
		}
		body #navigation > ul {
			display: none;
			margin: 0 -15px;
			border-top: 1px solid white;
			background-color: #f1f8fb;
		}
		body #navigation > ul li {
			float: none;
			width: 100%;
		}
		body #navigation > ul li a {
			color: #0054a6;
		}
		.page-theme #banner .signed-out-actions {
			top: 94px;
			right: 15px;
			font-size: 12px;
		}
		.page-theme #banner .signed-out-actions a.btn-login:before {
			border-top: 29px solid #00aeef;
		}
		.page-theme #banner .signed-out-actions a.btn-register:before {
			border-bottom: 29px solid #f26522;
		}
		.login_wrap_app_panel {
			margin: 73px 0 0 0 !important;
		}
		.login_wrap_app_panel .blue--text.text--darken-3 {
			color: white !Important;
		}
	}
	
	iframe#botplatform_iframe {
		width: 300px !important;
	}
	#form-crud .v-input:not(.v-input--checkbox):not(.v-input--radio-group) .v-input__slot, #form-search .v-input:not(.v-input--checkbox):not(.v-input--radio-group) .v-input__slot {
		border: 1px solid #d7d7d7;
	}
	#form-crud .v-input--radio-group label, #form-search .v-input--radio-group label {
		opacity: 1;
		color: #000;
	}
	#form-crud .v-autocomplete__content .v-select-list .v-list__tile, #form-search .v-autocomplete__content .v-select-list .v-list__tile {
		height: auto !important;
		min-height: 36px !important;
	}
	#form-crud .v-autocomplete__content .v-select-list .v-list__tile, #form-search .v-autocomplete__content .v-select-list .v-list__tile {
		display: block !important;
		padding-top: 8px !important;
		padding-bottom: 8px !important;
	}
	.yhy-append-wrap img{ 
		width: 16px;
		height: 13px;
	}
</style>
	<script type="text/javascript">
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
	</script>
	
</html>