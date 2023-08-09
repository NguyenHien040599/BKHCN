<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Bộ Xây dựng</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta name="description" content="Cổng Dịch vụ công Bộ Xây dựng cung cấp toàn bộ thông tin về thủ tục hành chính, thực hiện và giải quyết thủ tục hành chính trực tuyến...">
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	<link rel="preload" href="/o/boxaydung-theme/images/image-004-removebg-preview.png" as="image">
	<link rel="preload" href="/o/boxaydung-theme/images/slide-2.webp" as="image">
	<link rel="preload" href="/o/boxaydung-theme/images/slide-3.webp" as="image">
	<link rel="preload" href="/o/boxaydung-theme/images/manual-step.webp" as="image">
	<link rel="preload" href="/o/boxaydung-theme/images/bg.png" as="image">
	<link rel="preload" href="/o/boxaydung-theme/images/slide-4.webp" as="image">
	
	<!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&amp;subset=vietnamese" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=789987" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=6316777613123777" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'" type="text/css">
	
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/slick.min.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
	
	

</head>

<body class="${css_class} mBody home-theme">

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

	<div class="" id="wrapper">
		<header id="banner">
			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
			<div class="btns">
				<a href="/web/cong-dich-vu-cong/dang-nhap-dvcqg" class="login" aria-label="Trang chủ">Đăng nhập qua Cổng DVC Quốc gia</a>
				<a href="/web/cong-dich-vu-cong/register#/login" class="login" aria-label="Trang chủ">Đăng nhập</a>
				<!-- <a href="javascript:;" onclick="luaChonDangNhap()" class="login">Đăng nhập</a> -->
				<a href="/web/cong-dich-vu-cong/register" class="register" aria-label="Trang chủ">Đăng ký</a>
			</div>
			<div id="react-root" style="float: right;height: 71px;">
				<div id="app_login"></div>
			</div>
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
			<!--  -->
			<div class="mPopup" id="login-type">
				<div class="popup-header">
					<span>ĐĂNG NHẬP HỆ THỐNG</span>
					<span id="closeLogin" style="
						position: absolute;right: 0px;top: 0px;cursor: pointer;
						width: 50px;height: 36px;padding-top: 5px;font-size: 22px;"> 
						<i class="fa fa-close" aria-hidden="true"></i> 
					</span>
					
				</div>
				<div class="popup-content"  style="display: flex"> 
					<div class="col-content-1">
						<div id="submitLoginKeyloack" class="content-login">
							<img class="idp-image" src="/o/boxaydung-theme/images/government-login-1.png" height="70">
							<div style="color: #2A6EBB;margin-top: 10px;font-weight: 450;">
								<span>Đăng nhập</span><br>
								<span>Tài khoản cán bộ</span>
							</div>
						</div>
					</div>
					<div class="col-content-1">
						<div id="submitLoginOpencps" class="content-login" >
							<img class="idp-image" src="/o/boxaydung-theme/images/user-login-1.png" height="70">
							<div style="color: #2A6EBB;margin-top: 10px;font-weight: 450;">
								<span>Đăng nhập</span><br>
								<span>Tài khoản công dân, doanh nghiệp</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
		</section>

		<footer id="footer">
			<div class="left">
				<p class="site-name">Hệ thống thông tin giải quyết thủ tục hành chính - Bộ xây dựng</p>
				<p class="info-wrapper">
					<span>Địa chỉ: 37 Lê Đại Hành, quận Hai Bà Trưng, thành phố Hà Nội</span>
					<span style="display: flex;">
						<span style="margin-right: 10px;">Điện thoại:</span>
						<span>
							<span>- Hướng dẫn TTHC: 0243.9760271/số máy lẻ 119, 120</span>
							<span>- Phản ánh, kiến nghị về giải quyết TTHC: 0243.8215885</span>
							<span>- Hướng dẫn kỹ thuật: 0243.9742071</span>
						</span>
					</span>
					<span>Thư điện tử: hotrodvc@moc.gov.vn</span>
				</p>
			</div>
			<!--<div class="right">
				<p class="count">
					<b>Số người đang online:</b> 67
					<br>
					<b>Tổng lượt truy cập:</b> 76987
				</p>
				<p class="copyright">Phát triển bởi <b>FDS</b> trên nền <b>OpenCPS</b></p>
				<p>
					<b>Hỗ trợ người dùng Cổng DVC Bộ Xây Dựng</b>
					<a target="_blank" href="" class="icon-face">
						<i class="fa fa-facebook"></i>
					</a>
				</p>
				<span>Phát triển trên nền</span> <img src="${themeDisplay.getPathThemeRoot()}/images/logo-opencps.png">
			</div>-->
		</footer>
	</div>
	
	<style>
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
			position: absolute;
			top: 0;
			right: 15px;
		}
		#react-root .login_wrap_app_panel > div > div:last-child {
			left: auto !important;
			right: 0;
			top: 110% !important;
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
		#react-root .v-menu__activator .v-icon, #react-root button .v-icon {
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
		
		
		.signed-out #react-root, .signed-in .btns {
			display: none !important;
		}
		body #footer {
			display: flex;
		}
		body #footer .right {
			display: flex;
			align-items: flex-end;
			margin-left: auto;
		}		
		body #footer .right span {
			margin-right: 5px;
			line-height: 12px;
		}
		
		@media screen and (max-width: 991px) {
			body #footer {
				display: block;
			}
			body #footer .right {
				text-align: left;
				margin-left: 0;
			}
		}
		.home-theme #navigation a[href*="huong-dan-su-dung-opencps"] {
			display: none;
		}
		/*  */
		.yhy-append-wrap {
			position: fixed !important;
			left: 0;
			bottom: 0;
		}
		/*  */
		.col-content-1 {
			background: #fff;
			width: 50%;
			padding: 15px
		}
		.content-login{
			border: 1px solid #d8d8d8;
			height: 160px;
			box-shadow: 0 .5rem 1rem rgba(0,0,0,.15)!important;
			text-align: center;
			padding: 13px;
			cursor: pointer;
		}
		.fog:before {
			content: "";
			position: absolute;
			left: 0;
			top: 0;
			right: 0;
			bottom: 0;
			background-color: rgba(0,0,0,0.4);
			z-index: 1000;
		}
		.mPopup {
			position: absolute;
			top: 20%;
			left: 50%;
			transform: translate(-50%,-50%);
			z-index: 1005;
			background-color: white;
			border-radius: 4px;
			width: 100%;
			max-width: 450px;
			display: none;
		}
		.mPopup .popup-header {
			font-weight: bold;
			text-align: center;
			padding: 10px 15px;
			border-bottom: 1px solid #ccc;
			background-color: #0072bc;
		color: #fff;
		}
		.mPopup .popup-content {
			padding: 20px;
		}
		.mPopup .popup-footer {
			padding: 10px 15px;
			text-align: center;
		}
		.mPopup .popup-footer a {
			display: inline-block;
			border-radius: 4px;
			border: 1px solid #0072bc;
			padding: 6px 12px;
		}
		.mPopup .popup-footer a:hover {
			color: white;
			background-color: #0072bc;
		}
		.mPopup .popup-footer .popup-submit {
			margin-left: 15px;
		}
		.popup-content input {
			background-color: transparent;
			border: 1px solid #0072bc;
			border-radius: 4px;
			width: 100%;
			height: 34px;
			padding: 0 5px;
		}
		/*  */
		#footer {
			padding-bottom: 30px !important;
		}
	</style>
	
	<script>
		// SSO LOGIN
		$("#submitLoginOpencps").bind( "click", function() {
			window.location.href = "/web/cong-dich-vu-cong/register#/login"
		});
		var luaChonDangNhap = function () {
			$("html").css("overflow", "hidden !important");
			$("body").addClass("fog");
			$("#login-type").show();
			setTimeout(function (){
				$("#closeLogin").on('click', function(event){
					event.preventDefault();
					$("html").css("overflow", "");
					$("body").removeClass("fog");
					$("#login-type").hide();
				});
			},200)
		}
		var urlRedirectSso = '';
		var settingsSso = {
			"url": "/o/v1/opencps/is-enabled-sso-login",
			"method": "GET"
		};

		$.ajax(settingsSso).done(function (response) {
			urlRedirectSso = response
			$("#submitLoginKeyloack").bind( "click", function() {
				window.location.href = urlRedirectSso
			});
		});
		// 
	</script>
	<!-- Begin EMC Tracking Code -->
    <script type="text/javascript">
        var _govaq = window._govaq || [];
		_govaq.push(['trackPageView']);
		_govaq.push(['enableLinkTracking']);
		(function () {
			_govaq.push(['setTrackerUrl', 'https://f-emc.ngsp.gov.vn/tracking']);
			_govaq.push(['setSiteId', '227']);
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
	<!-- End EMC Tracking Code -->
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js?t=931241231"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js?t=931241231"></script>

	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />

</body>

</html>