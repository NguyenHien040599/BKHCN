<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${site_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/logoico.png">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap&subset=vietnamese" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${themeDisplay.getPathThemeRoot()}/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<!--<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=8888" rel="stylesheet" type="text/css">-->
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=666" rel="stylesheet" type="text/css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=1789331312387" rel="stylesheet">

	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/handlebars.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/alpaca.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment-with-locales.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/select2-full.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery-comments.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.textcomplete.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/svg-pan-zoom.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/date-time-picker.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/mermaid.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/vgcaplugin.js?t=9312231"></script>
	<script src="https://sp.zalo.me/plugins/sdk.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
	
	<!-- Begin Tracking OpenCps -->
	<!-- thongketruycap -->
	<!-- <script type="text/javascript">
		var _paq = window._paq = window._paq || [];
		/* tracker methods like "setCustomDimension" should be called before "trackPageView" */
		_paq.push(['trackPageView']);
		_paq.push(['enableLinkTracking']);
		(function() {
		  var u="//thongke.opencps.vn/";
		  _paq.push(['setTrackerUrl', u+'matomo.php']);
		//   _paq.push(['setSiteId', '3']);
			_paq.push(['setSiteId', '2']);
		  var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
		  g.type='text/javascript'; g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
		})();
	</script> -->
	<!-- End Tracking OpenCps -->
	
	

	<!-- Config Scope -->
	<script type="text/javascript">
		var activeChangePass = true; /* disable change password employee*/
		var requiredOptionConfig = {
			applicantIdNo: false,
			applicantName: true,
			address: true,
			cityCode: true,
			districtCode: true,
			wardCode: true,
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
		var showTinhPhi = false; /*show tính phí dịch vụ chuyển phát*/
		var hasOrganization = false; /*loại người dùng tách "Tổ chức" riêng*/
		var applicantConfig = true; /*bind applicant từ danh sách applicant*/
		var notifyConfig = false; /*lựa chọn hình thức gửi thông báo*/
		var defaultCityCode = "01"; 
		var defaultCityName = "";
		var khoTaiLieuCongDan = false; /*sử dụng kho tài liệu công dân*/
		var showKySoDvc = true; /*sử dụng ký số phía cổng DVC*/
		var hasPreviewSync = true; /*in tiến trình xử lý hs*/
		var thanhToanChuyenKhoan = false; /*sử dụng thanh toán chuyển khoản*/
		var thaoTacUyQuyen = false; /*sử dụng chức năng ủy quyền xử lý hs*/
		var hasDownloadAllFile = false; /*sử dụng chức năng download tất cả giấy tờ đính kèm*/
		var checkTrungChuHoSo = false; /*bật check trùng chủ hồ sơ có hồ sơ đang giải quyết*/
		var fromViaPostalConfig = false; /*check xác nhận là hồ sơ nhận qua bưu chính*/
		var activePdfEditor = false; /*sử dụng chức năng ghi chú trên tài liệu Pdf*/
		var viTriLuuTru = false; /*sử dụng chức năng vị trí lưu trữ hồ sơ*/
		var traCuuLgspCongDan = false;
		var traCuuLgspDoanhNghiep = false;
		var requiredEform = true;
		var checkAccSso = false;
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
				<a href="${site_default_url}" class="mLogo" style="display: flex;"> 
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo_dhqg.png" style="
						width: 76px;
						height: 76px;
					">
					<div style="
						margin-left: 20px;
						display: flex;
						align-self: center;
						flex-direction: column;
					">
											<div class="title-banner-vi-1" style="
						font-size: 20px;
						font-family: 'Roboto', sans-serif;
						font-weight: 500;
						color: #fff;
					">HỆ THỐNG QUẢN LÝ HỒ SƠ HÀNH CHÍNH</div>
											<div class="title-banner-vi" style="
						font-size: 20px;
						font-weight: 500;
						color: #fff;
					">ĐẠI HỌC QUỐC GIA HÀ NỘI</div>
					</div>
				</a>
				<div id="react-root" style="">
					<div id="app_login"></div>
				</div>
				<!-- <a href="/c/portal/login" class="btn-banner btn-login-motcua">Đăng nhập</a> -->
				<a href="javascript:;" onclick="luaChonDangNhap()" class="btn-banner btn-login-dvc">Đăng nhập</a>
				<a href="https://dangky.dichvucong.gov.vn/register" class="btn-banner btn-register-dvc">Đăng ký</a>
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
			<!--  -->
			<!-- <div class="mPopup" id="login-type">
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
						<div class="content-login" onclick="loginDvcqg()">
							<img class="idp-image" src="/o/daihocquocgia-theme/images/quoc_huy.svg" height="70">
							<div style="color: #2A6EBB; font-size: small;margin-top: 10px;font-weight: 450;">
								<span>Đăng nhập qua</span><br>
								<span>Cổng DVCQG</span>
							</div>
						</div>
					</div>
					<div class="col-content-1">
						<div class="content-login" onclick="loginSso()">
							<img class="idp-image" src="/o/daihocquocgia-theme/images/logo_dhqg.png" height="70">
							<div style="color: #2A6EBB; font-size: small;margin-top: 10px;font-weight: 450;">
								Đăng nhập qua Hệ thống xác thực tài khoản SSO
							</div>
						</div>
					</div>
				</div>
			</div> -->
			<!--  -->
		</section>
		<!--  -->
		<footer id="footer">
			<div class="container" style="
				display: block !important;
				position: relative !important;
			">
				<div class="owner mb-1"><b>ĐẠI HỌC QUỐC GIA HÀ NỘI</b></div>
				<p class="mb-1"><b>HỆ THỐNG QUẢN LÝ HỒ SƠ HÀNH CHÍNH</b></p>				
			</div>
		</footer>
	</div>
	
	<a href="" class="btt"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
	<!-- <a href="/web/cong-dich-vu-cong-tinh-hau-giang" class="bth"><i class="fa fa-home" aria-hidden="true"></i></a> -->
		
	<!-- inject:js -->
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js?t=985313242531555"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js?t=983312423315555"></script>
	<!-- thongketruycap -->
	<!-- <script>
		var settingsGetTracking = {
			"url": "https://thongke.opencps.vn",
			"method": "GET",
			"headers": {
			},
			"data": {
				"module": "API",
				"method": "Live.getCounters",
				// "idSite": "3",
				"idSite": "2",
				"lastMinutes": "3",
				"format": "JSON",
				"token_auth": "bc959a4604e178dd1cf61e5d9ab7b2b7"
			}
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
			// xhr.open("GET", "https://thongke.opencps.vn/?module=API&method=Live.getCounters&idSite=3&lastMinutes=3&format=JSON&token_auth=bc959a4604e178dd1cf61e5d9ab7b2b7")
			xhr.open("GET", "https://thongke.opencps.vn/?module=API&method=Live.getCounters&idSite=2&lastMinutes=3&format=JSON&token_auth=bc959a4604e178dd1cf61e5d9ab7b2b7")
			xhr.send()
		}
		setTimeout(function () {
			getTracking()
		}, 500)
	</script> -->
	<#if permissionChecker.isOmniadmin()>
		<@liferay_util["include"] page=body_bottom_include />
		<@liferay_util["include"] page=bottom_include />
	</#if>
	<!-- endinject -->
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf.js?t=9991"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf-table-extractor.js?t=9991"></script>

	<script type="text/javascript">
		var urlRedirectLoginSso = ""		
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
		
			$(".header_login .logo > a > img").attr("src","o/daihocquocgia-theme/images/logo_dhqg.png");
			$(".login-dvc .header_login .logo > a > img").attr("src","o/daihocquocgia-theme/images/logo_dhqg.png");

			$(".footer_login").html("<p></p>");
			
			$("#navigation li a[href$='huong-dan-can-bo']").attr('target', '_blank');
			
			//Back to top
			var offset = 300,
				scroll_top_duration = 600;
				$back_to_top = $('.btt');
				$back_to_home = $('.bth');
				$("#login_container .text-logo").html('<p class="text-logo-1"> Hệ thống quản lý hồ sơ hành chính </p><p class="text-logo-2"> Đại học quốc gia Hà Nội </p>');
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
		$.ajaxSetup({
		headers: {
			'groupId': window.themeDisplay.getScopeGroupId(),
			'Token': window.Liferay.authToken
			}
		});
		$.get('/o/v1/opencps/is-enabled-sso-login',{})
		.done(function(data) {
			urlRedirectLoginSso = data 
		})
		var loginDvcqg = function () {
			event.preventDefault();
		    $.ajaxSetup({
		    headers: {
				'groupId': window.themeDisplay.getScopeGroupId(),
				'Token': window.Liferay.authToken
				}
			});
			$.get('/o/rest/v2/dvcqgsso/authurl',{state: "",redirectURL: ""})
			.done(function(data) {    
					window.location.href = data
			})
			.error(function (){
				alert("Chức năng đang cập nhật. Thử lại sau")
			})
			// window.location.href = "/web/cong-dich-vu-cong-tinh-hau-giang/register#/login"
		}
		var loginSso = function () {
			window.location.href = urlRedirectLoginSso
		}
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
		window.PDFJS.workerSrc = '${themeDisplay.getPathThemeRoot()}/js/pdf.worker.js?t=9991';
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
	</script>
	
	<style>
		#banner img {
			max-height: 88px;
		}
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
			color: #00803D;
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
			background-color: #00803D;
		}
		.login-wrapper .login-input input {
			height: 26px;
			width: 200px;
			border: 1px solid #00803D;
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
			color: #2a2a2a;
			-webkit-box-shadow: none;
			box-shadow: none;
			border: 1px solid #CE7A58;
			border-radius: 4px;
			background-color: transparent;
			font-size: 12px;
			font-weight: bold;
			will-change: box-shadow;
			/* box-shadow: 0 3px 1px -2px rgba(0,0,0,.2), 0 2px 2px 0 rgba(0,0,0,.14), 0 1px 5px 0 rgba(0,0,0,.12); */
		}
		/* .login-wrapper .btn-register {
			background-color: #fdb44b;
		} */
		.login-wrapper button:hover {
			background-color: #CE7A58;
			cursor: pointer;
			color: white;
		}
		/* .login-wrapper .btn-register:hover {
			background-color: #ad6601;
			cursor: pointer;
		} */
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
			top: 5px;
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
			/* color: white; */
		}
		#react-root span > i, #react-root .v-icon {
			/* color: white !important; */
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
		.body .accent--text, body .primary--text {
			color: #0167d3 !important;
			caret-color: #0167d3 !important;
		}
		.page-theme .group__thanh_phan .v-icon, .motcua-theme .group__thanh_phan .v-icon {
			color: #00803D !important
		}
		.page-theme .red--text .v-icon, .motcua-theme .red--text .v-icon {
			color: #c62828 !important;
		}
		
		
		.body_login {
			background: url("/o/daihocquocgia-theme/images/bg-login.png") center center no-repeat;
			background-size: cover;
			min-height: 100vh;
		}
		body.body_login * {
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
			max-width: 550px;
			margin: auto;
			position: relative;
			padding: 60px 15px 30px;
			display: flex;
			flex-wrap: wrap;
			background: rgb(6 56 24 / 77%);
			background-size: cover;
			border-radius: 0 0 50px 50px;
			box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3);
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
			/* background: url("/o/bo-tttt-theme/images/bg-login-1.jpg") center center no-repeat; */
			background-size: cover;
			border-radius: 8px 0 0 8px;
			padding: 30px 45px;
			margin-top: 0 !important;
			max-width: 410px !important;
		}		
		.body_login #login_container > div:nth-child(3) {
			width: 100%;
			text-align: center;
			color: #ef9c00;
		}
		.body_login #login_container > div:nth-child(3) p:not(:last-child) {
			margin-bottom: 5px;
		}
		.body_login #login_container > div:nth-child(3) p:last-child {
			font-style: italic;
			color: white;
			margin: 10px 0 0;
		}
		.body_login .header_login + div .v-btn {
			border-radius: 50px;
			padding: 3px 25px;
			height: 34px;
			color: #fff !important;
			background-color: transparent !important;
			border: 1px solid #fff !important;
		}
		.body_login .header_login + div .v-btn:hover {
			color: white !important;
		}
		.body_login .header_login + div .v-btn .v-icon {
			color: #fff !important;
		}
		.body_login .header_login + div .v-btn:hover .v-icon {
			color: white !important;
		}
		.body_login .header_login + div .v-btn:last-child {
			display: none;
		}
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
		#react-root .login_wrap_app_panel > div > div:last-child {
			left: auto !important;
			right: 0;
			top: 110% !important;
		}

		@media screen and (max-width: 1366px) {
			.body_login #login_container {
				padding: 30px 15px 15px; 
			}
			.body_login .logo img {
				margin-bottom: 0;
			}
		}
		
		@media screen and (max-width: 767px) {
			.body_login {
				border-radius: 0;
				/* background: url("/o/daihocquocgia-theme/images/bg-form-login.png") center center no-repeat; */
			}
			.body_login #login_container {
				background: transparent none;
				padding: 15px;
				box-shadow: none;
			}
			.body_login #login_container > div:nth-child(2) {
				padding: 30px 0;
			}
			.body_login #login_container > div:nth-child(3) p:not(:last-child) {
				font-size: 13px;
			}
		}
		
		body.page-theme .deactive__btn {
			background-color: #0d7535 !important;
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

		.page-theme .primary--text, .page-theme .status__counter, .page-theme h3 {
			color: #00803D !important;
		}
		.page-theme .primary {
			background-color: #00803D !important;
			border-color: #00803D !important;
		}
		.background-triangle-big, .background-triangle-small, .page-theme .v-card__title, .page-theme .blue.darken-3, .page-theme #app_serviceinfo .v-tabs__item--active, .background-triangle-big1 {
			background-color: #00803D !important;
		}
		.background-triangle-big1 + div button {
			background-color: #00803D !important;
			border-color: #00803D !important;
		}
		.background-triangle-big:before {
			border-top: 26px solid #00803D !important;
		}
		.background-triangle-big1:before, .background-triangle-small:before {
			border-top: 28px solid #00803D;
		}
		.background-triangle-small:before {
			border-top: 19px solid #00803D !important;
		}
		.page-theme .v-icon:not(.v-alert__icon), .background-triangle-big1 + div .groupcode-active {
			color: #00803D;
		}
		.page-theme .primary .v-icon, .page-theme .blue.darken-3 .v-icon, .page-theme .background-triangle-small .v-icon {
			color: white !important;
		}



		body.signed-out #react-root, .dvc-theme .btn-login-motcua, .motcua-theme .btn-login-dvc, .motcua-theme .btn-register-dvc, body.signed-in .btn-banner {
			display: none !important;
		}
		.btn-banner {
			padding: 10px 15px;
			float: right;
			color: white;
			border: 1px solid #CE7A58;
			background-color: #CE7A58;
			border-radius: 4px;
			font-weight: bold;
			display: inline-block;
			position: absolute;
		    right: 0;
		    top: 50%;
		    transform: translateY(-50%);
		}
		.btn-banner:hover {
			background-color: #FFC251;
			border: 1px solid #FFC251;
			cursor: pointer;
		}
		.btn-login-dvc {
			right: 100px;
		}
		.dvc-theme #navigation .login-motcua, .motcua-theme #navigation .login-dvc {
			display: none !important;
		}
		.alert.alert-info {
			display: none;
		}

		.login_wrap_app_panel .v-icon.swing {
			color: #fff !important;
		}

		@media screen and (max-width: 767px) {
			.btn-login-motcua {
				display: none !important;
			}
			.btn-banner-mobile {
				display: inline-block !important;
				padding: 5px 10px !important;
			}
			#app_serviceinfo > div.application--wrap > main > div > div > div.list-thu-tuc > div.service__info__table.mt-2 > div.v-card.v-sheet.theme--light.elevation-2 > div.px-2.py-2.text-bold.white--text {
				background-color: #00803D !important;
			}
			.btn-login-dvc{
				right: 85px !important;
				top: 78px !important;
				z-index: 1000 !important;
				height: 36px !important;
				padding: 5px 10px !important;
			}
			.btn-register-dvc {
				right: 0px !important;
				top: 78px !important;
				z-index: 1000 !important;
				height: 36px !important;
				padding: 5px 10px !important;
			}
		}
		@media screen and (min-width: 768px) {
			.btn-banner-mobile {
				display: none !important;
			}
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
			border: 2px solid #e60808;
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
			background-color: rgba(230, 8, 8, 0.7);
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
				background-color: #e60808;
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
			left: -35px;
			bottom: 0;
		}
		.col-content-1 {
        background: #fff;
        width: 50%;
        padding: 15px
    }
    .content-login{
		border: 1px solid #d8d8d8;
		height: 150px;
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
		background-color: #ce7a58;
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
		border: 1px solid #ce7a58;
		padding: 6px 12px;
	}
	.mPopup .popup-footer a:hover {
		color: white;
		background-color: #ce7a58;
	}
	.mPopup .popup-footer .popup-submit {
		margin-left: 15px;
	}
	.popup-content input {
		background-color: transparent;
		border: 1px solid #ce7a58;
		border-radius: 4px;
		width: 100%;
		height: 34px;
		padding: 0 5px;
	}

	#login_container .header_login .text-logo-1 {
		text-transform: uppercase;
		font-size: 20px !important;
		font-weight: 900 !important;
		color: #fff !important;
		line-height: 30px;
	}
	#login_container .header_login .text-logo-2 {
		text-transform: uppercase;
		font-size: 20px !important;
		font-weight: 900 !important;
		color: #fff !important;
		line-height: 30px;
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