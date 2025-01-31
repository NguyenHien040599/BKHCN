<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Hệ thống thông tin MCĐT Bộ TTTT</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=19831233128" rel="stylesheet" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=8883128" rel="stylesheet" type="text/css">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet" type="text/css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123331221" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=78129312987" rel="stylesheet">
	<!--  -->
	<link href="${themeDisplay.getPathThemeRoot()}/css/toolbar.css?t=789312393817" rel="stylesheet" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/pdf_viewer.css?t=789313321987" rel="stylesheet" type="text/css">
	<!--  -->
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
		window.require = undefined;
		var hasVerification = true
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/handlebars.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/alpaca.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment-with-locales.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery-comments.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.textcomplete.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/svg-pan-zoom.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/date-time-picker.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/mermaid.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/vgcaplugin.js"></script>
	<script src="https://sp.zalo.me/plugins/sdk.js"></script>
	<!-- pdf editor -->
	<script src="${themeDisplay.getPathThemeRoot()}/js/pdf-ann.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/pdf_viewer.js?t=98312412"></script>
	
	<!--  -->
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
	</script>
	<!-- Begin Tracking OpenCps -->
	<script type="text/javascript">
		var _paq = window._paq = window._paq || [];
		/* tracker methods like "setCustomDimension" should be called before "trackPageView" */
		_paq.push(['trackPageView']);
		_paq.push(['enableLinkTracking']);
		(function() {
		  var u="//thongke.opencps.vn/";
		  _paq.push(['setTrackerUrl', u+'matomo.php']);
		  _paq.push(['setSiteId', '4']);
		  var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
		  g.type='text/javascript'; g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
		})();
	</script>
	<!-- End Tracking OpenCps -->

	<!-- Config Scope -->
	<script type="text/javascript">
		var activeChangePass = true; /* disable change password employee*/
		var requiredOptionConfig = {
			applicantIdNo: true,
			applicantName: true,
			address: true,
			cityCode: true,
			districtCode: true,
			wardCode: true,
			contactTelNo: true,
			contactEmail: false,
			delegateIdNo: false,
			delegateName: true,
			delegateAddress: true,
			delegateCityCode: true,
			delegateDistrictCode: true,
			delegateWardCode: true,
			delegateTelNo: true,
			delegateEmail: false
		}; /*cấu hình bắt buộc thông tin chủ hồ sơ*/
		var applicantSameDelegate = false; /*Tự động check thông tin người nộp giống thông tin chủ hồ sơ*/
		var showTinhPhi = false; /*show tính phí dịch vụ chuyển phát*/
		var hasOrganization = false; /*loại người dùng tách "Tổ chức" riêng*/
		var applicantConfig = true; /*bind applicant từ danh sách applicant*/
		var notifyConfig = true; /*lựa chọn hình thức gửi thông báo*/
		var defaultCityCode = false; /*set cityCode mặc định ex: 87 (Đồng Tháp)*/
		var defaultCityName = false; /*set cityName mặc định ex: 'Tỉnh Đồng Tháp' (Đồng Tháp)*/
		var khoTaiLieuCongDan = false; /*sử dụng kho tài liệu công dân*/
		var showKySoDvc = false; /*sử dụng ký số phía cổng DVC*/
		var hasPreviewSync = true; /*in tiến trình xử lý hs*/
		var thanhToanChuyenKhoan = true; /*sử dụng thanh toán chuyển khoản*/
		var thaoTacUyQuyen = true; /*sử dụng chức năng ủy quyền xử lý hs*/
		var hasDownloadAllFile = false; /*sử dụng chức năng download tất cả giấy tờ đính kèm*/
		var checkTrungChuHoSo = false; /*bật check trùng chủ hồ sơ có hồ sơ đang giải quyết*/
		var fromViaPostalConfig = false; /*check xác nhận là hồ sơ nhận qua bưu chính*/
		var activePdfEditor = true; /*sử dụng chức năng ghi chú trên tài liệu Pdf*/
		var viTriLuuTru = true; /*sử dụng chức năng vị trí lưu trữ hồ sơ*/
	</script>
	<!-- end -->
</head>

<body class="${css_class} mBody page-theme">

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

	<div class="" id="wrapper" style="overflow: hidden;">
		<header id="banner">
			<div class="container">
				<a href="${site_default_url}" class="mLogo"> 
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo-header-motcua.png">
				</a>
				<div id="react-root" style="">
					<div id="app_login"></div>
				</div>
			</div>
		</header>
		
		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>

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

		<footer id="footer">
			<div class="container">
				<div class="info-left">
					<div class="owner">
						<img src="${themeDisplay.getPathThemeRoot()}/images/logo-bo4t.png">
						<div class="owner-info">
							<label>CƠ QUAN CHỦ QUẢN: BỘ THÔNG TIN VÀ TRUYỀN THÔNG (MIC)</label>
							<label>Bộ phận hỗ trợ: Trung tâm CNTT</label>
							<span><i class="fa fa-phone"></i>&nbsp;024.3556 3462</span>
							<span><i class="fa fa-envelope-o"></i>&nbsp;hotromcdt@mic.gov.vn</span>
						</div>
					</div>
				</div>
				<div class="info-right">
					<div class="">
						<!-- <div class="box-left">
							<label>Bộ phận tiếp nhận phản ánh kiến nghị</label>
							<span><i class="fa fa-phone"></i>024.3944 8539</span>
							<span><i class="fa fa-envelope-o"></i>thutuchanhchinh@mic.gov.vn</span>
						</div> -->
						<!-- <div class="box-right">
							<label>Bộ phận hỗ trợ</label>
							<span><i class="fa fa-phone"></i>024.3556 3462</span>
							<span><i class="fa fa-envelope-o"></i>hotrodvc@mic.gov.vn</span>
						</div> -->
					</div>
					<div class="other-info right">
						<!-- <div class="statistics">
							<span>Số người truy cập:</span> <b>0</b>
						</div> -->
						<div class="logos-wrapper">
							<img src="${themeDisplay.getPathThemeRoot()}/images/logo-cmc.png">
							<img src="${themeDisplay.getPathThemeRoot()}/images/logo-opencps.png">
						</div>
					</div>
				</div>
				<div style="
					display: inline-block;
					position: absolute;
					right: 10px;
					bottom: 10px;
				">
					Đang truy cập:&nbsp;
					<span id="counterVisitor" class="">0</span>
				</div>
			</div>
		</footer>	
	</div>
	
	<a href="" class="btt"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
	<a href="/web/mot-cua-mic" class="bth"><i class="fa fa-home" aria-hidden="true"></i></a>
		
	<!-- inject:js -->
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js"></script>
	<script>
		var settingsGetTracking = {
			"url": "https://thongke.opencps.vn",
			"method": "GET",
			"headers": {
			},
			"data": {
				"module": "API",
				"method": "Live.getCounters",
				"idSite": "4",
				"lastMinutes": "1",
				"format": "JSON",
				"token_auth": "ee21ce435c81d3d3696d5203d7b8b844"
			}
		};
		var getTracking = function () {
			var xhr = new XMLHttpRequest();
			xhr.withCredentials = true;
			xhr.addEventListener("readystatechange", function() {
				try {
					$("#counterVisitor").html(JSON.parse(this.responseText)[0]['visitors'])
				} catch (error) {
				}
			});
			xhr.open("GET", "https://thongke.opencps.vn/?module=API&method=Live.getCounters&idSite=4&lastMinutes=3&format=JSON&token_auth=ee21ce435c81d3d3696d5203d7b8b844")
			xhr.send()
		}
		setTimeout(function () {
			getTracking()
		}, 500)
		
	</script>
	<#if permissionChecker.isOmniadmin()>
		<@liferay_util["include"] page=body_bottom_include />
		<@liferay_util["include"] page=bottom_include />
	</#if>
	<!-- endinject -->
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/annotation-index.js?t=31923812321"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf.js?t=9991"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf-table-extractor.js?t=9991"></script>
	<script type="text/javascript">		
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
		
			$(".header_login .logo > a > img").attr("src","o/bo-tttt-theme/images/logo-login.png");
			//$(".login-dvc .header_login .logo > a > img").attr("src","o/bo-tttt-theme/images/logo-login-dvc.png");
			
			//Back to top
			var offset = 300,
				scroll_top_duration = 600;
				$back_to_top = $('.btt');
				$back_to_home = $('.bth');
				
			$(window).scroll(function(){
				( $(this).scrollTop() > offset ) ? $back_to_top.addClass('btt-is-visible') : $back_to_top.removeClass('btt-is-visible');
				( $(this).scrollTop() > offset ) ? $back_to_home.addClass('btt-is-visible') : $back_to_home.removeClass('btt-is-visible');
			});
			//Smooth scroll to top
			$back_to_top.on('click', function(event){
				event.preventDefault();
				$('body,html').animate({
					scrollTop: 0 ,
					}, scroll_top_duration
				);
			});
		});
		
		
		window.PDFJS.workerSrc = '${themeDisplay.getPathThemeRoot()}/js/pdf.worker.js?t=9991';
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
	</script>
	
	<style>
		/*#banner img {
			max-height: 88px;
		}*/
		#wrapper {
			padding-top: 0 !important;
		}
		body #react-root .v-navigation-drawer--is-mobile:not(.v-navigation-drawer--close), 
		body #react-root .v-navigation-drawer--temporary:not(.v-navigation-drawer--close) {
			-webkit-box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
			box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
		}
		
		
		.body_login .login-wrapper {
			min-height: 100vh;
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 15px;
			flex-wrap: wrap;
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
		#react-root span > i, #react-root .v-icon {
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
		.body ..accent--text, body .primary--text {
			color: #0167d3 !important;
			caret-color: #0167d3 !important;
		}
		.page-theme .group__thanh_phan .v-icon, .motcua-theme .group__thanh_phan .v-icon {
			color: #0167d3 !important;
		}
		.page-theme .red--text .v-icon, .motcua-theme .red--text .v-icon {
			color: #c62828 !important;
		}
		
		
		.body_login {
			background: url("/o/bo-tttt-theme/images/bg-login-main.jpg") center center no-repeat;
			background-size: cover;
			font-size: 14px;
		}
		.body_login .application--wrap {
			min-height: inherit;
		}
		.body_login #banner, .body_login #navigation, .body_login #footer {
			display: none;
		}
		.body_login .theme--light.application {
			background-color: transparent;
		}
		.body_login #login_container {
			max-width: 850px;
			margin: auto;
			position: relative;
			padding: 0 15px;
			display: flex;
			flex-wrap: wrap;
		}
		.body_login .logo img {
			margin-bottom: 30px;
			max-width: 100%;
		}
		.body_login nav.primary {
			display: none;
		}
		.body_login nav + div {
			border: 0 !important;
			padding: 0 !important;
		}
		.body_login .v-input__slot {
			border: 0 !important;
			border-bottom: 1px solid white !important;
			border-radius: 0 !important;
			overflow: hidden;
			background-color: transparent !important;
			max-width: 320px;
			margin: 0 auto 5px;
			padding: 0 !important;
		}
		.body_login .v-text-field__slot input {
			font-size: 14px;
			color: white !important;
		}
		.body_login .v-text-field__slot .v-icon {
			color: white !important;
		}
		.body_login .v-text-field__details {
			display: none;
		}
		.body_login .v-text-field__slot input:-webkit-autofill,
		.body_login .v-text-field__slot input:-webkit-autofill:hover, 
		.body_login .v-text-field__slot input:-webkit-autofill:focus
		.body_login .v-text-field__slot input:-webkit-autofill {
			border:none !important;
			-webkit-text-fill-color: white !important;
			transition: background-color 5000s ease-in-out 0s;
		}
		.body_login .v-text-field__slot input::-webkit-input-placeholder {color: white !important; font-style: italic;}
		.body_login .v-text-field__slot input:-moz-placeholder {color:white !important; opacity: 1; font-style: italic;}
		.body_login .v-text-field__slot input::-moz-placeholder {color: white !important; opacity: 1; font-style: italic;}
		.body_login .v-text-field__slot input:-ms-input-placeholder {color: white !important; font-style: italic;}
		.body_login .header_login + div .primary--text, .body_login .header_login + div .v-icon, .body_login .header_login + div .v-input--selection-controls__ripple + i {
			color: white !important;
		}
		.body_login .v-form > div:nth-child(3) {
			max-width: 340px;
			margin: auto !important;
		}
		.body_login .v-input--selection-controls:not(.v-input--hide-details) .v-input__slot {
			background-color: transparent !important;
			border: 0 !important;
		}
		.body_login .header_login {
			text-align: center;
			width: 100%;
		}
		.body_login .header_login ~ div {
			flex: 1 1 auto;
		}
		.body_login #login_container > div:nth-child(2) {
			background: url("/o/bo-tttt-theme/images/bg-login-1.jpg") center center no-repeat;
			background-size: cover;
			border-radius: 8px 0 0 8px;
			padding: 30px 45px;
			margin-top: 0 !important;
			max-width: 410px !important;
		}		
		.body_login #login_container > div:nth-child(3) {
			background: url("/o/bo-tttt-theme/images/bg-login-2.jpg") center center no-repeat;
			background-size: cover;
			border-radius: 0 8px 8px 0;
		}
		.body_login .header_login + div .v-btn {
			border-radius: 50px;
			padding: 3px 25px;
			height: 34px;
			color: #00a8ec !important;
			background-color: transparent !important;
			border: 1px solid #00a8ec !important;
		}
		.body_login .header_login + div .v-btn:hover {
			background-color: #00a8ec !important;
			color: white !important;
		}
		.body_login .header_login + div .v-btn .v-icon {
			color: #00a8ec !important;
		}
		.body_login .header_login + div .v-btn:hover .v-icon {
			color: white !important;
		}
		/* .body_login .header_login + div .v-btn:last-child {
			display: none;
		} */
		.body_login .theme--light.v-sheet {
			background-color: transparent !important;
			border: 0 !important;
		}
		.body_login .footer-login {
			color: #0167d3;
			/* display: flex;
			justify-content: center;
			flex-wrap: wrap; */
			max-width: 550px;
			margin: auto;
			margin-top: 30px;
		}
		.body_login .footer-login i {
			width: 15px;
			text-align: center;
			margin-right: 5px;
		}
		.body_login .footer-login .owner {
			font-weight: bold;
			text-transform: uppercase;
			margin-right: 75px;
			margin-bottom: 5px;
		}
		/* .body_login .footer-login .infos {
			display: flex;
			justify-content: space-between;
			width: 100%;
		} */
		.body_login .fogot-pass .v-input__slot {
			max-width: 100%;
			margin-bottom: 15px;
		}
		.body_login .v-form > div:nth-child(3) {
			max-width: 100%;
		}
		.body_login .fogot-pass .v-text-field__slot input {
			border-bottom: 1px solid white;
		}
		.body_login .forgot-pass-wrapper {
			display: block;
		}
		.body_login .forgot-pass-wrapper .header_login {
			margin-top: 10%;
		}
		.body_login .forgot-pass-wrapper main form {
			background: url("/o/bo-tttt-theme/images/bg-forgot-pass.png") center center no-repeat;
			background-size: cover;
			padding: 30px !important;
			border-radius: 20px !important;
		}
		.body_login .forgot-pass-wrapper main form > div:nth-child(3) > div > div:first-child {
			background-color: transparent !important;
			justify-content: flex-start !important;
		}
		.body_login .forgot-pass-wrapper .header_login + div .v-btn:last-child {
			display: inline-block;
		}
		.body_login .forgot-pass-wrapper p {
			text-align: center;
			color: white;
		}
		.body_login .forgot-pass-wrapper img + button {
			border: 0 !important;
			background-color: transparent !important;
			width: auto !important;
			height: auto !important;
			padding: 0 !important;
			min-width: inherit !important;
		}

		@media screen and (max-width: 1366px) {
			.body_login .forgot-pass-wrapper .header_login {
				margin-top: 5%;
			}
		}
		
		@media screen and (max-width: 767px) {
			.body_login .header_login + div .v-btn {
				width: 45%;
			}
			.body_login #footer {
				position: relative;
			}
		}

		@media screen and (min-width: 992px) {
			body #navigation ul {
				padding-left: 0;
				padding-right: 0;
			}
		}


		body .primary {
		    background-color: #0167d3!important;
		    border-color: #0167d3!important;
		}
		#app_login .v-menu--inline {
			position: relative;
		}
		#app_login .v-menu--inline > .v-menu__content {
			left: auto !important;
			top: 100% !important;
			right: 0 !important;
		}

		.page-theme .group__thanh_phan .v-btn.primary {
		  	background-color: transparent !important;
		}
		
		@media screen and (max-width: 1263px) {
			body .container {
				min-width: 100%;
				padding-left: 15px !important;
				padding-right: 15px !important;
			}
		}
		
		body.page-theme .deactive__btn {
			background-color: #0d7535 !important;
		}
		/* pdf editor */
		#pdf-annotate-text-input, #pdf-annotate-point-input {
			z-index: 203123123123123123 !important;
			height: 26px;
			min-width: 300px;
			border-top: none !important;
			border-left: none !important;
			border-right: none !important;
		}
		#pdf-annotate-text-input:focus {
			outline: none;
		}
		select.text-size, select.pen-size, select.scale{
			-webkit-writing-mode: horizontal-tb !important;
			text-rendering: auto;
			color: -internal-light-dark(black, white);
			letter-spacing: normal;
			word-spacing: normal;
			text-transform: none;
			text-indent: 0px;
			text-shadow: none;
			display: inline-block;
			text-align: start;
			appearance: menulist;
			box-sizing: border-box;
			align-items: center;
			white-space: pre;
			-webkit-rtl-ordering: logical;
			background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
			cursor: default;
			margin: 0em;
			font: 400 13.3333px Arial;
			border-radius: 0px;
			border-width: 1px;
			border-style: solid;
			border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
			border-image: initial;
			border-radius: 3px;
			height: 22px;
		}
		.text-color a, .pen-color a {
			background: rgb(0, 0, 0);
			border-radius: 5px;
			width: 20px;
			height: 20px;
		}
		.rotate-ccw, .rotate-cw {
			font-size: 18px;
			font-weight: 700;
		}
		.toolbar button {
			background-color: transparent !important;
		}
	</style>
	
	<script type="text/javascript">
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
	</script>
</body>

</html>