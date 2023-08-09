<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>HỆ THỐNG DỊCH VỤ CÔNG TRỰC TUYẾN</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	
	<base href="/">
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	
	<link href="https://fonts.googleapis.com/css?family=Oswald:400,500,700|Roboto:300,400,500,700&amp;subset=vietnamese" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=991911119" rel="stylesheet" type="text/css">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet" type="text/css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/simplebar.css?t=1234" rel="stylesheet">
	<!-- <link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=789987" rel="stylesheet"> -->
	
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/simplebar.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
	<!-- Begin EMC Tracking Code -->
    <!-- <script type="text/javascript">
        var _govaq = window._govaq || [];
		_govaq.push(['trackPageView']);
		_govaq.push(['enableLinkTracking']);
		(function () {
			_govaq.push(['setTrackerUrl', 'https://f-emc.ngsp.gov.vn/tracking']);
			_govaq.push(['setSiteId', '']);
			var d = document,
				g = d.createElement('script'),
				s = d.getElementsByTagName('script')[0];
			g.type = 'text/javascript';
			g.async = true;
			g.defer = true;
			g.src = 'https://f-emc.ngsp.gov.vn/embed/gov-tracking.min.js';
			s.parentNode.insertBefore(g, s);
		})();
		</script> -->
	<!-- End EMC Tracking Code -->
	<style>
		.yhy-append-wrap {
			display: inline-block !important;
			position: fixed !important;
			bottom: 0 !important;
		}
		body .status__counter {
			top: 7px;
		}
		body #navigation {
			z-index: 10;
		}
		.signed-out #react-root {
			display: none;
		}
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
			margin-top: 10px;
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
		#react-root span > i, #react-root .v-btn .v-icon {
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
		.v-window__container--is-active {
			height: auto !important;
		}
		.login_wrap_app_panel {
			max-width: 100% !important;
			display: flex;
			align-items: center;
		}
		body .v-menu__content {
			top: 100% !important;
			left: 50px !important;
		}
		.login_wrap_app_panel > button {
			border: 0 !important;
		}
		
		.navbar-container {
			background-color: #1270be;
		}
		.navbar-container > nav {
			max-width: 1300px;
			padding: 0 15px;
			margin: auto;
		}
		.navbar-container > #navigation ul li.selected a, .navbar-container > #navigation ul li:hover a {
			border-radius: 0;
		}
		
		
		
		#navigation .nav-toggle {
			display: none;
		}
		
		@media screen and (max-width: 767px) {
			body #banner .mLogo .text-logo {
				font-size: 14px;
			}
			body #banner .mLogo .text-logo span {
				margin-top: 5px;
				font-size: 18px;
			}
			body #footer {
				padding-bottom: 60px;
			}
			body #footer .info-wrapper {
				margin: 15px 0;
			}
			#navigation .nav-toggle {
				display: inline-block;
				color: white;
				border: 1px solid white;
				padding: 3px 10px;
				margin: 8px 0;
				border-radius: 4px;
			}
			body #navigation > ul {
				display: none;
				margin: 0 -15px;
				border-top: 1px solid white;
			}
			body #navigation > ul li {
				float: none;
				width: 100%;
			}
		}

		/*  */
		.simply-scroll-container {
			/* Container DIV - automatically generated */
			position: relative;
		}
		.simply-scroll-clip {
			/* Clip DIV - automatically generated */
			position: relative;
			overflow: hidden;
		}
		.simply-scroll-list {
			/* UL/OL/DIV - the element that simplyScroll is inited on */
			overflow: hidden;
			margin: 0;
			padding: 0;
			list-style: none;
		}
		.simply-scroll-list li {
			padding: 0;
			margin: 0;
			list-style: none;
		}
		.simply-scroll-list li img {
			border: none;
			display: block;
		}
		.simply-scroll-btn {
			position: absolute;
			background-image: url(buttons.png);
			width: 42px;
			height: 44px;
			z-index: 3;
			cursor: pointer;
		}
		.simply-scroll-btn-left {
			left: 6px;
			bottom: 6px;
			background-position: 0 -44px;
		}
		.simply-scroll-btn-left.disabled {
			background-position: 0 0 !important;
		}
		.simply-scroll-btn-left:hover,
		.simply-scroll-btn-left:focus {
			background-position: 0 -88px;
		}
		.simply-scroll-btn-right {
			right: 6px;
			bottom: 6px;
			background-position: -84px -44px;
		}
		.simply-scroll-btn-right.disabled {
			background-position: -84px 0 !important;
		}
		.simply-scroll-btn-right:hover,
		.simply-scroll-btn-right:focus {
			background-position: -84px -88px;
		}
		.simply-scroll-btn-up {
			right: 6px;
			top: 6px;
			background-position: -126px -44px;
		}
		.simply-scroll-btn-up.disabled {
			background-position: -126px 0 !important;
		}
		.simply-scroll-btn-up:hover,
		.simply-scroll-btn-up:focus {
			background-position: -126px -88px;
		}
		.simply-scroll-btn-down {
			right: 6px;
			bottom: 6px;
			background-position: -42px -44px;
		}
		.simply-scroll-btn-down.disabled {
			background-position: -42px 0 !important;
		}
		.simply-scroll-btn-down:hover,
		.simply-scroll-btn-down:focus {
			background-position: -42px -88px;
		}
		.simply-scroll-btn-pause {
			right: 6px;
			bottom: 6px;
			background-position: -168px -44px;
		}
		.simply-scroll-btn-pause:hover,
		.simply-scroll-btn-pause:focus {
			background-position: -168px -88px;
		}
		.simply-scroll-btn-pause.active {
			background-position: -84px -44px;
		}
		.simply-scroll-btn-pause.active:hover,
		.simply-scroll-btn-pause.active:focus {
			background-position: -84px -88px;
		}

		/* Custom class modifications - override classees

		.simply-scroll is default

		*/

		.simply-scroll {
			/* Customisable base class for style override DIV */
			width: 576px;
			height: 200px;
			margin-bottom: 1em;
		}
		.simply-scroll .simply-scroll-clip {
			width: 576px;
			height: 200px;
		}
		.simply-scroll .simply-scroll-list li {
			float: left;
			width: 290px;
			height: 200px;
		}
		/* Vertical scroller example */

		.vert {
			/* wider than clip to position buttons to side */
			width: 340px;
			height: 400px;
			margin-bottom: 1.5em;
		}
		.vert .simply-scroll-clip {
			width: 100%;
			height: 400px;
		}
		.vert .simply-scroll-list {
			width: 100%;
			float: left;
		}
		.vert .simply-scroll-list li {
			padding: 10px 0px;
			border-bottom: 1px solid #cccccc6b;
			width: 100%;
		}
		.vert .simply-scroll-list li a {
			display: table;
			cursor: all-scroll;
		}
		/*.vert .simply-scroll-list li a .name{font-weight: bold;display: table-cell;padding-left: 5px;color: #333;}
		.vert .simply-scroll-list li a .code{display: table-cell;white-space: nowrap;padding-right: 5px;color: #333;}*/
		.vert .simply-scroll-list li a:hover {
			color: #0782e0
		}
		.vert .simply-scroll-btn-up {
			/* modified btn pos */
			right: 0;
			top: 0;
		}
		.vert .simply-scroll-btn-down {
			/* modified btn pos */
			right: 0;
			top: 52px;
		}

		/* NOTE left-right classes wouldn't be needed on vertical scroller */
	</style>
</head>

<body class="${css_class} home-theme">

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
		<header id="banner" role="banner">
			<div id="heading">
				<div class="container">
					<div class="header">
						<a class="${logo_css_class}" href="${site_default_url}">
							<img src="/o/hcc-bokhcn-theme/images/logo.png" width="381" height="auto" alt="Logo">
						</a>
						<div>
							<div class="btn-group">
								<a href="/web/cong-dich-vu-cong/dang-ky#/login" class="login"><i class="fa fa-lock" aria-hidden="true"></i> Đăng nhập</a>
								<a href="/web/cong-dich-vu-cong/dang-ky#/" class="register"><i class="fa fa-user-plus" aria-hidden="true"></i> Đăng ký</a>
							</div>
							<#include "${full_templates_path}/navigation.ftl" />
						</div>
					</div>
				</div>
			</div>
		</header>
			
		<!-- <div class="navbar-container">
			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
		</div> -->

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

		<footer id="footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="col-sm-8">
						<label>CỔNG DỊCH VỤ CÔNG TRỰC TUYẾN BỘ KHOA HỌC VÀ CÔNG NGHỆ</label>
						Cơ quan chủ quản: Bộ Khoa học và Công nghệ
						<br>
						Bản quyền thuộc Trung tâm Công nghệ thông tin.
						<br>
						Địa chỉ: 113 Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy, Hà Nội.
						<br>
						Hỗ trợ kỹ thuật: (024) 3222 2361 – Email: dichvucong@most.gov.vn.
						<br>
						Hỗ trợ giải đáp về thanh toán trực tuyến: Hotline: 1900 636 290 - Email: cskh@keypay.gov.vn
					</div>
					<div class="col-sm-4">
						<a href="https://dichvucong.most.gov.vn/dvc/Pages/cttin.aspx?newID=1008" class="a_hdsd">Hướng dẫn nộp hồ sơ ký bằng chữ ký số</a>
						<a href="https://pakn.most.gov.vn/" class="a_dkapi"><i class="fa fa-check-square-o" aria-hidden="true"></i> Gửi Phản ánh kiến nghị</a>
						<a href="https://tinnhiemmang.vn/danh-ba-tin-nhiem/dichvucongmostgovvn-1678869593" title="Chung nhan Tin Nhiem Mang" target="_blank">
							<img src="/o/hcc-bokhcn-theme/images/handle_cert.png" width="150px" height="auto" alt="Chung nhan Tin Nhiem Mang">
						</a>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script src="/o/hcc-bokhcn-theme/js/jquery.simplyscroll.min.js"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js"></script>
	
	
	<script>
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
			
		});
	</script>
	
	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />
</body>

</html>