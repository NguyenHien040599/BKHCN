<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Hệ thống thông tin tiếp công dân giải quyết khiếu nại tố cáo Bộ Công an</title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/huy-hieu-cong-an-nhan.png">
	
	<!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Oswald:400,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css"> -->
	<link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=8888125553123" rel="stylesheet" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=82183183138123" rel="stylesheet" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/bootstrap-glyphicons.css" rel="stylesheet" type="text/css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123323121" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=1738392987" rel="stylesheet">
	<!--  -->
	<!-- <link href="${themeDisplay.getPathThemeRoot()}/css/toolbar.css?t=789312393817" rel="stylesheet" type="text/css"> -->
	<link href="${themeDisplay.getPathThemeRoot()}/css/pdf_viewer.css?t=789313321987" rel="stylesheet" type="text/css">
	<!--  -->
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js?t=93123123"></script>
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
	<script src="https://sp.zalo.me/plugins/sdk.js"></script>
	<!-- pdf editor -->
	<script src="${themeDisplay.getPathThemeRoot()}/js/pdf-ann.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/pdf_viewer.js?t=98312412"></script>
	<!--  -->
	<script src="${themeDisplay.getPathThemeRoot()}/js/date-time-picker.js?t=8888"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/mermaid.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/vgcaplugin.js?t=9381412312"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/function-vtca.min.js"></script>

	<script src="${themeDisplay.getPathThemeRoot()}/js/trumbowyg.min.js?t=123"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/vue-trumbowyg.js?t=123"></script>
    <script src="${themeDisplay.getPathThemeRoot()}/js/jquery.jexcel.js"></script>

	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
	<!-- Begin Tracking OpenCps -->
	<!-- thongketruycap -->
	<script type="text/javascript">
		var _paq = window._paq = window._paq || [];
		/* tracker methods like "setCustomDimension" should be called before "trackPageView" */
		_paq.push(['trackPageView']);
		_paq.push(['enableLinkTracking']);
		(function() {
		  var u="//thongke.opencps.vn/";
		  _paq.push(['setTrackerUrl', u+'matomo.php']);
		  _paq.push(['setSiteId', '5']);
			// _paq.push(['setSiteId', '6']);	
		  var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
		  g.type='text/javascript'; g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
		})();
	</script>
	<!-- End Tracking OpenCps -->

	<!-- Begin EMC Tracking Code -->
	<!-- thongketruycap -->
    <script type="text/javascript">
        var _govaq = window._govaq || [];
		_govaq.push(['trackPageView']);
		_govaq.push(['enableLinkTracking']);
		(function () {
			_govaq.push(['setTrackerUrl', 'https://f-emc.ngsp.gov.vn/tracking']);
			// _govaq.push(['setSiteId', '33']);
			_govaq.push(['setSiteId', '163']);
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
			delegateIdNo: true,
			delegateName: true,
			delegateAddress: true,
			delegateCityCode: true,
			delegateDistrictCode: true,
			delegateWardCode: true,
			delegateTelNo: true,
			delegateEmail: false
		}; /*cấu hình bắt buộc thông tin chủ hồ sơ*/
		var applicantSameDelegate = true; /*Tự động check thông tin người nộp giống thông tin chủ hồ sơ*/
		var showTinhPhi = false; /*show tính phí dịch vụ chuyển phát*/
		var hasOrganization = true; /*loại người dùng tách "Tổ chức" riêng*/
		var applicantConfig = false; /*bind applicant từ danh sách applicant*/
		var notifyConfig = true; /*lựa chọn hình thức gửi thông báo*/
		var defaultCityCode = "01"; /*set cityCode mặc định ex: 87 (Đồng Tháp)*/
		var defaultCityName = "TP Hà Nội"; /*set cityName mặc định ex: 'Tỉnh Đồng Tháp' (Đồng Tháp)*/
		var khoTaiLieuCongDan = false; /*sử dụng kho tài liệu công dân*/
		var showKySoDvc = true; /*sử dụng ký số phía cổng DVC*/
		var hasPreviewSync = false; /*in tiến trình xử lý hs*/
		var thanhToanChuyenKhoan = true; /*sử dụng thanh toán chuyển khoản*/
		var thaoTacUyQuyen = false; /*sử dụng chức năng ủy quyền xử lý hs*/
		var hasDownloadAllFile = false; /*sử dụng chức năng download tất cả giấy tờ đính kèm*/
		var checkTrungChuHoSo = false; /*bật check trùng chủ hồ sơ có hồ sơ đang giải quyết*/
		var fromViaPostalConfig = true; /*check xác nhận là hồ sơ nhận qua bưu chính*/
		var activePdfEditor = true; /*sử dụng chức năng ghi chú trên tài liệu Pdf*/
		var viTriLuuTru = false; /*sử dụng chức năng vị trí lưu trữ hồ sơ*/
		var traCuuLgspCongDan = true;
		var traCuuLgspDoanhNghiep = true;
		var requiredEform = true;
		var systemLgspConfig = "DongThap";
		var showKySoDocument = true;
		var showKySoMotCua = true;
		var SCAN_QR_CCCD = true
	</script>
	<!-- end -->
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
		<header id="banner">
			<div class="cont">
				<div class="mLogo align-middle"> 
					<a href="${site_default_url}"> 
						<img src="${themeDisplay.getPathThemeRoot()}/images/banner-bocongan.png?t=93123" style="height: 90px;"> 
					</a>
				</div>
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
		<!--  -->
		<!--  -->
		<footer id="footer">
			<!--<div class="statistics">Đang online: <span class="online">3</span> / <span class="total">122</span></div>-->
			<p class="owner">Đơn vị quản lý: <b>BỘ CÔNG AN</b></p>
			<p class="info">
				<span>Địa chỉ: Số 47 phố Phạm Văn Đồng, phường Mai Dịch, quận Cầu Giấy, thủ đô Hà Nội</span>
				<span class="hid">|</span>
				<span>Hỗ trợ sử dụng phần mềm: 0999.999.999</span>
				<span class="hid">|</span>
				<span>Email: test@gmail.com</span>
			</p>
		</footer>
		
	</div>
	
	<a href="" class="btt"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
	<!--<a href="/web/cong-dich-vu-cong-tinh-dong-thap" class="bth"><i class="fa fa-home" aria-hidden="true"></i></a>-->
		
	<!-- inject:js -->
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js?t=3124123999"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js?t=31241231239"></script>
	
	<script>
		// thongketruycap
		var settingsGetTracking = {
			"url": "https://thongke.opencps.vn",
			"method": "GET",
			"headers": {
			},
			"data": {
				"module": "API",
				"method": "Live.getCounters",
				"idSite": "5",
				"lastMinutes": "1",
				"format": "JSON",
				"token_auth": "1811b03abf29e86ee2532678d70b31b0"
			}
			
			// "data": {
			// 	"module": "API",
			// 	"method": "Live.getCounters",
			// 	"idSite": "6",
			// 	"lastMinutes": "1",
			// 	"format": "JSON",
			// 	"token_auth": "1811b03abf29e86ee2532678d70b31b0"
			// }
		};
		var getTracking = function () {
			// $.ajax(settingsGetTracking ).done(function (response) {
			// 	if (response && response[0] && response[0].hasOwnProperty('visitors')) {
			// 		$("#counterVisitor").html(response[0]['visitors'])
			// 	}
			// }).fail(function(jqXHR, textStatus, errorThrown) {
			// });
			// 
			var xhr = new XMLHttpRequest();
			xhr.withCredentials = true;
			xhr.addEventListener("readystatechange", function() {
				try {
					$("#counterVisitor").html(JSON.parse(this.responseText)[0]['visitors'])
				} catch (error) {
				}
			});
			// thongketruycap
			xhr.open("GET", "https://thongke.opencps.vn/?module=API&method=Live.getCounters&idSite=5&lastMinutes=3&format=JSON&token_auth=1811b03abf29e86ee2532678d70b31b0")
			// xhr.open("GET", "https://thongke.opencps.vn/?module=API&method=Live.getCounters&idSite=6&lastMinutes=3&format=JSON&token_auth=1811b03abf29e86ee2532678d70b31b0")
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
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/annotation-index.js?t=31923138123213"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf.js?t=31923138123213"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf-table-extractor.js?t=9991"></script>

	<script type="text/javascript">		
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
			$(".header_login .logo img").attr("src","o/bocongan-theme/images/huy-hieu-cong-an-nhan.png");
			// $("#login_container .text-logo").html('<p class="text-logo-1"> Hệ thống thông tin giải quyết thủ tục hành chính </p><p class="text-logo-2"> Bộ Công an</p>');
			
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
			
			//Currently Online
			setInterval(function() {
				var number = 1 + Math.floor(Math.random() * 5);
				$('.online').text(number);
			},
			1000*60*5);
			
			//Total Visited
			var $badge = $('.total');
			setInterval(function() {
				var value = parseInt($badge.html());
				value = value + Math.floor(Math.random() * 15);
				$badge.html(value);
			}, 5000*60*15);
		});
		
		
		window.PDFJS.workerSrc = '${themeDisplay.getPathThemeRoot()}/js/pdf.worker.js?t=9991';
	    $.ajaxSetup({headers:{"Token":Liferay.authToken,"groupId":themeDisplay.getScopeGroupId()},global:true});
		
		if (!window.themeDisplay.isSignedIn()) {$(".login-wrapper").css("display","none")}
	</script>
	
	<style>
		#wrapper {
			padding-top: 0 !important;
		}
		section#content {
			padding-bottom: 60px;
		}
		body #react-root .v-navigation-drawer--is-mobile:not(.v-navigation-drawer--close), 
		body #react-root .v-navigation-drawer--temporary:not(.v-navigation-drawer--close) {
			-webkit-box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
			box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
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
		
		
		.body_login {
			background: url("/o/bocongan-theme/images/bg-login.jpg") center center no-repeat;
			background-size: cover;
			font-size: 14px;
		}
		.body_login #banner, .body_login #navigation {
			display: none;
		}
		.body_login .theme--light.application {
			background-color: transparent;
		}
		.body_login #login_container {
			max-width: 1300px;
			margin: auto;
			position: relative;
			top: 40%;
			left: 0;
			-webkit-transform: translateY(-50%);
			transform: translateY(-50%);
			padding: 0 15px;
		}
		.body_login .logo img {
			margin-bottom: 0;
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
			border: 1px solid #243e04 !important;
			border-radius: 4px !important;
			overflow: hidden;
			background-color: white !important;
			max-width: 340px;
			margin: 0 auto 5px;
		}
		.body_login .v-text-field__slot input {
			font-size: 14px;
		}
		.body_login .v-text-field__slot .v-icon {
			color: #243e04 !important;
		}
		.body_login .v-text-field__details {
			display: none;
		}
		.body_login .v-text-field__slot input:-webkit-autofill,
		.body_login .v-text-field__slot input:-webkit-autofill:hover, 
		.body_login .v-text-field__slot input:-webkit-autofill:focus
		.body_login .v-text-field__slot input:-webkit-autofill {
			border:none !important;
			-webkit-text-fill-color: inherit !important;
			transition: background-color 5000s ease-in-out 0s;
		}
		.body_login .v-text-field__slot input::-webkit-input-placeholder {color: #939393 !important; font-style: italic;}
		.body_login .v-text-field__slot input:-moz-placeholder {color:#939393 !important; opacity: 1; font-style: italic;}
		.body_login .v-text-field__slot input::-moz-placeholder {color: #939393 !important; opacity: 1; font-style: italic;}
		.body_login .v-text-field__slot input:-ms-input-placeholder {color: #939393 !important; font-style: italic;}
		.body_login .header_login + div .primary--text, .body_login .header_login + div .v-input--selection-controls__ripple + i {
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
		.body_login .header_login + div .v-btn {
			width: 160px;
			border-radius: 4px;
			padding: 8px 12px;
			height: 40px;
			color: #f8f400 !important;
		}
		.body_login .header_login + div .v-btn:first-child {
			background: url("/o/bocongan-theme/images/bg-btn2.jpg") left center repeat-x !important;
			background-size: auto 100% !important;
		}
		.body_login .header_login + div .v-btn:last-child {
			border: 1px solid #f8f400 !important;
			background-color: transparent !important;
		}
		.body_login .header_login + div .v-btn .v-icon {
			color: #f8f400 !important;
		}
		.body_login .theme--light.v-sheet {
			background-color: transparent !important;
			border: 0 !important;
		}
		.body_login #footer {
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
		}
		
		@media screen and (max-width: 767px) {
			.body_login .header_login + div .v-btn {
				width: 45%;
			}
			.body_login #footer {
				position: relative;
			}
		}
		
		
		body .btt, body .bth {
			position: fixed;
			bottom: 100px;
			right: 30px;
			background-color: #204b03;
			width: 42px;
			height: 42px;
			border-radius: 50%;
			text-align: center;
			line-height: 40px;
			display: none;
			color: white;
			font-size: 24px;
		}
		body .btt.btt-is-visible, body .bth.btt-is-visible {
			display: none;
		}
		body .btt:hover, body .bth:hover {
			background-color: #204b03;
			color: white !important;
		}
		body .bth {
			right: auto;
			left: 30px;
		}
		
		
		.page-theme .primary--text, .page-theme .status__counter, .page-theme h3 {
			color: #658a04 !important;
		}
		.page-theme .primary {
			background-color: #658a04 !important;
			border-color: #658a04 !important;
		}
		.background-triangle-big, .background-triangle-small, .page-theme .v-card__title, .page-theme .blue.darken-3 {
			background-color: #204b03 !important;
		}
		.background-triangle-big:before {
			border-top: 26px solid #204b03;
		}
		.background-triangle-small:before {
			border-top: 19px solid #204b03;
		}
		/*  */
		.background-triangle-big, .background-triangle-small, .page-theme .v-card__title, .page-theme .blue.darken-3, .page-theme #app_serviceinfo .v-tabs__item--active, .background-triangle-big1 {
			background-color: #204b03 !important;
		}
		.background-triangle-big1 + div button {
			background-color: #204b03 !important;
			border-color: #204b03 !important;
		}
		.background-triangle-big:before {
			border-top: 26px solid #204b03 !important;
		}
		.background-triangle-big1:before, .background-triangle-small:before {
			border-top: 28px solid #204b03;
		}
		.background-triangle-small:before {
			border-top: 19px solid #204b03 !important;
		}
		.page-theme .v-icon:not(.v-alert__icon), .background-triangle-big1 + div .groupcode-active {
			color: #204b03 !important;
		}
		/*  */
		.page-theme .v-icon:not(.v-alert__icon) {
			color: #658a04 !important;
		}
		.page-theme .primary .v-icon, .page-theme .blue.darken-3 .v-icon, .page-theme .background-triangle-small .v-icon {
			color: white !important;
		}
		
		
		
		html {
			overflow: auto;
		}
		body #wrapper {
			padding: 0 !important;
		}
		body a, body a:hover, body a:focus {
			text-decoration: none;
			color: inherit;
		}
		
		body {
			font-family: 'Open Sans', sans-serif;
			font-size: 14px;
		}
		
		.page-theme #banner {
			background: url("/o/bocongan-theme/images/bg-header.jpg") right center no-repeat;
			background-size: cover;
			padding-top: 15px;
			padding-bottom: 15px;
		}
		.page-theme #banner .cont {
			max-width: 1300px;
			padding: 0 15px;
			margin: auto;
		}
		.page-theme #banner .mLogo > a {
			display: inline-block;
			position: relative;
			z-index: 100;
		}
		.page-theme #banner img {
			max-width: 100%;
		}
		
		@media screen and (max-width: 1366px) {
			.page-theme #banner {
				background: url("/o/bocongan-theme/images/bg-header-sm.jpg") right center no-repeat;
			}
		}
		
		@media screen and (max-width: 767px) {
			.page-theme #banner #react-root {
				display: none;
			}
		}
		
		#navigation {
			background: url("/o/bocongan-theme/images/bg-nav.jpg") left top repeat-x;
			background-size: auto 100%;
			position: relative;
		}
		#navigation ul {
			list-style: none;
			display: -webkit-box;
			display: flex;
			max-width: 1300px;
			margin: auto;
			padding: 0 15px;
			z-index: 9999;
		}
		#navigation li a {
			display: block;
			padding: 10px 15px;
			color: white;
			text-transform: uppercase;
		}
		#navigation .selected a, #navigation li:hover a {
			background: url("/o/bocongan-theme/images/nav-active.jpg") left top repeat-x;
			background-size: auto 100%;
			font-weight: bold;
		}
		#navigation li > ul, #navigation .nav-toggle {
			display: none;
		}
		#navigation .nav-toggle {
			display: none;
			width: 40px;
			text-align: center;
			line-height: 28px;
			border: 1px solid white;
			border-radius: 4px;
			color: white;
			font-size: 20px;
			font-size: 18px;
			margin: 10px 15px;
		}
		
		@media screen and (max-width: 991px) {
			#navigation .nav-toggle {
				display: inline-block;
			}
			body #navigation > ul {
				display: none;
				width: 100%;
				position: absolute;
				background-color: white;
				left: 0;
				top: 100%;
				border: 1px solid #ccc;
				padding: 0;
				max-height: 200px;
				overflow: auto;
			}
			body #navigation > ul a {
				color: #204b03;
			}
			#navigation .selected a, #navigation li:hover a {
				color: white;
			}
		}
		
		#footer {
			text-align: center;
			background: url("/o/bocongan-theme/images/bg-footer.jpg") left top repeat-y;
			background-size: 100% auto;
			color: white;
			padding: 10px 15px;
			position: relative;
		}
		#footer .info {
			background-color: transparent !important;
			border: 0 !important;
		}
		#footer p {
			margin-bottom: 5px;
		}
		#footer p:last-child {
			margin-bottom: 0;
		}
		#footer > img {
			position: absolute;
			left: 0;
			bottom: 0;
		}
		#footer .statistics {
			position: absolute;
			bottom: 100%;
			right: 0;
			padding: 8px 15px;
			background-color: #224e01;
		}
		
		@media screen and (max-width: 1366px) {
			#footer > img {
				display: none;
			}
		}
		
		@media screen and (max-width: 767px) {
			#footer span {
				display: block;
				margin-bottom: 5px;
			}
			#footer .hid {
				display: none;
			}
		}
		
		
		/* Default Login Liferay */
		#portlet_com_liferay_login_web_portlet_LoginPortlet {
			max-width: 600px;
			margin: auto;
		}
		#portlet_com_liferay_login_web_portlet_LoginPortlet fieldset {
		    border: 0;
			padding: 0;
			margin: 0;
		}
		#portlet_com_liferay_login_web_portlet_LoginPortlet .input-text-wrapper {
			display: flex;
			align-items: center;
			margin-bottom: 10px;
		}
		#portlet_com_liferay_login_web_portlet_LoginPortlet .input-text-wrapper label {
			flex-shrink: 0;
			width: 100px;
			margin-right: 10px;
		}
		#portlet_com_liferay_login_web_portlet_LoginPortlet .input-text-wrapper input {
			width: 100%;
			border: 1px solid #ccc;
			height: 32px;
			padding: 0 10px;
		}
		#portlet_com_liferay_login_web_portlet_LoginPortlet button {
			padding: 8px 15px;
			background-color: #0066ff;
			color: white;
			margin: 10px 0;
			height: auto;
		}
		/* hotline rings */
		.hotline-phone-ring-wrap {
			position: fixed;
			bottom: 0;
    		right: 200px;
			z-index: 999999;
			}

			.hotline-phone-ring {
			position: relative;
			visibility: visible;
			background-color: transparent;
			width: 110px;
			height: 100px;
			cursor: pointer;
			z-index: 11;
			-webkit-backface-visibility: hidden;
			-webkit-transform: translateZ(0);
			transition: visibility .5s;
			left: 0;
			bottom: 0;
			display: block;
			}

			.hotline-phone-ring-circle {
				width: 87px;
			height: 87px;
			top: 10px;
			left: 10px;
			position: absolute;
			background-color: transparent;
			border-radius: 100%;
			border: 2px solid #74b920;
			-webkit-animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
			animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
			transition: all .5s;
			-webkit-transform-origin: 50% 50%;
			-ms-transform-origin: 50% 50%;
			transform-origin: 50% 50%;
			opacity: 0.5;
			}

			.hotline-phone-ring-circle-fill {
				z-index: 5;
				width: 57px;
			height: 57px;
			top: 25px;
			left: 25px;
			position: absolute;
			background-color: #74b920;
			border-radius: 100%;
			border: 2px solid transparent;
			-webkit-animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
			animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
			transition: all .5s;
			-webkit-transform-origin: 50% 50%;
			-ms-transform-origin: 50% 50%;
			transform-origin: 50% 50%;
			}

			.hotline-phone-ring-img-circle {
				background-color: #74b920;
				z-index: 6;
				width: 33px;
			height: 33px;
			top: 37px;
			left: 37px;
			position: absolute;
			background-size: 20px;
			border-radius: 100%;
			border: 2px solid transparent;
			-webkit-animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
			animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
			-webkit-transform-origin: 50% 50%;
			-ms-transform-origin: 50% 50%;
			transform-origin: 50% 50%;
			display: -webkit-box;
			display: -webkit-flex;
			display: -ms-flexbox;
			display: flex;
			align-items: center;
			justify-content: center;
			box-shadow: 0 0 5px 2px rgb(0 0 0 / 24%);
			}

			.hotline-phone-ring-img-circle .pps-btn-img {
				display: -webkit-box;
			display: -webkit-flex;
			display: -ms-flexbox;
			display: flex;
			}

			.hotline-phone-ring-img-circle .pps-btn-img img {
				width: 20px;
				height: 20px;
			}

			.hotline-bar {
			position: absolute;
			background: rgba(230, 8, 8, 0.75);
			height: 40px;
			width: 200px;
			line-height: 40px;
			border-radius: 3px;
			padding: 0 10px;
			background-size: 100%;
			cursor: pointer;
			transition: all 0.8s;
			-webkit-transition: all 0.8s;
			z-index: 9;
			box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.1);
			border-radius: 50px !important;
			/* width: 175px !important; */
			left: 33px;
			bottom: 37px;
			}

			.hotline-bar > a {
			color: #fff;
			text-decoration: none;
			font-size: 15px;
			font-weight: bold;
			text-indent: 50px;
			display: block;
			letter-spacing: 1px;
			line-height: 40px;
			font-family: Arial;
			}

			.hotline-bar > a:hover,
			.hotline-bar > a:active {
			color: #fff;
			}

			@-webkit-keyframes phonering-alo-circle-anim {
			0% {
				-webkit-transform: rotate(0) scale(0.5) skew(1deg);
				-webkit-opacity: 0.1;
			}
			30% {
				-webkit-transform: rotate(0) scale(0.7) skew(1deg);
				-webkit-opacity: 0.5;
			}
			100% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
				-webkit-opacity: 0.1;
			}
			}
			@-webkit-keyframes phonering-alo-circle-fill-anim {
			0% {
				-webkit-transform: rotate(0) scale(0.7) skew(1deg);
				opacity: 0.6;
			}
			50% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
				opacity: 0.6;
			}
			100% {
				-webkit-transform: rotate(0) scale(0.7) skew(1deg);
				opacity: 0.6;
			}
			}
			@-webkit-keyframes phonering-alo-circle-img-anim {
			0% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
			}
			10% {
				-webkit-transform: rotate(-25deg) scale(1) skew(1deg);
			}
			20% {
				-webkit-transform: rotate(25deg) scale(1) skew(1deg);
			}
			30% {
				-webkit-transform: rotate(-25deg) scale(1) skew(1deg);
			}
			40% {
				-webkit-transform: rotate(25deg) scale(1) skew(1deg);
			}
			50% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
			}
			100% {
				-webkit-transform: rotate(0) scale(1) skew(1deg);
			}
			}
		/*  */
		.yhy-append-wrap {
			position: fixed !important;
			left: 0;
			bottom: 0;
			width: auto !important;
    		display: inline-block;
		}
	</style>
	
	<!--<script type="text/javascript">
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
	</script>-->
</body>

</html>