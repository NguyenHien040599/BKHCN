<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Bộ Xây dựng</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta name="description" content="Cổng Dịch vụ công Bộ Xây dựng cung cấp toàn bộ thông tin về thủ tục hành chính, thực hiện và giải quyết thủ tục hành chính trực tuyến...">
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	<link rel="preload" href="/o/boxaydung-theme/images/bg.png" as="image">
	<link rel="preload" href="/o/boxaydung-theme/images/logo-new.png" as="image">
	<link rel="preload" href="/o/opencps-store/js/cli/dvc/app/image/logo-viettel-ca.png" as="image">
	<link rel="preload" href="/o/opencps-store/js/cli/dvc/app/image/logo-kyso-bancoyeu.png" as="image">
	<link rel="preload" href="/o/opencps-store/js/cli/dvc/app/image/logo-vnpt-ca.svg" as="image">
	<link rel="preload" href="/o/opencps-store/js/cli/login/app/image/img_login.png" as="image">
	
	<!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&amp;subset=vietnamese" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=6663155314999999923523123" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'" type="text/css">
	<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet" type="text/css"> -->
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=789987" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'">

	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
    
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/handlebars.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/alpaca.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment-with-locales.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap-datetimepicker.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/moment.min.js" defer></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js" defer></script>
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery-comments.js" defer></script>
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/jquery.textcomplete.js" defer></script> -->
	<script src="${themeDisplay.getPathThemeRoot()}/js/svg-pan-zoom.min.js" defer></script>
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/date-time-picker.js"></script> -->
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/mermaid.js" defer></script> -->
	<script src="${themeDisplay.getPathThemeRoot()}/js/vgcaplugin.js?t=02032022" defer></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
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

	<!-- Config Scope -->
	<script type="text/javascript">
		var activeChangePass = true; /* disable change password employee*/
		var requiredOptionConfig = {
			applicantIdNo: false,
			applicantName: true,
			address: true,
			cityCode: false,
			districtCode: false,
			wardCode: false,
			contactTelNo: true,
			contactEmail: true,
			delegateIdNo: true,
			delegateName: true,
			delegateAddress: true,
			delegateCityCode: false,
			delegateDistrictCode: false,
			delegateWardCode: false,
			delegateTelNo: true,
			delegateEmail: false
		}; /*cấu hình bắt buộc thông tin chủ hồ sơ*/
		var applicantSameDelegate = false; /*Tự động check thông tin người nộp giống thông tin chủ hồ sơ*/
		var showTinhPhi = false; /*show tính phí dịch vụ chuyển phát*/
		var hasOrganization = false; /*loại người dùng tách "Tổ chức" riêng*/
		var applicantConfig = false; /*bind applicant từ danh sách applicant*/
		var notifyConfig = false; /*lựa chọn hình thức gửi thông báo*/
		var defaultCityCode = false; /*set cityCode mặc định ex: 87 (Đồng Tháp)*/
		var defaultCityName = false; /*set cityName mặc định ex: 'Tỉnh Đồng Tháp' (Đồng Tháp)*/
		var khoTaiLieuCongDan = true; /*sử dụng kho tài liệu công dân*/
		var showKySoDvc = false; /*sử dụng ký số phía cổng DVC*/
		var hasPreviewSync = false; /*in tiến trình xử lý hs*/
		var thanhToanChuyenKhoan = true; /*sử dụng thanh toán chuyển khoản*/
		var thaoTacUyQuyen = false; /*sử dụng chức năng ủy quyền xử lý hs*/
		var hasDownloadAllFile = true; /*sử dụng chức năng download tất cả giấy tờ đính kèm*/
		var checkTrungChuHoSo = false; /*bật check trùng chủ hồ sơ có hồ sơ đang giải quyết*/
		var fromViaPostalConfig = true; /*check xác nhận là hồ sơ nhận qua bưu chính*/
		var activePdfEditor = false; /*sử dụng chức năng ghi chú trên tài liệu Pdf*/
		var viTriLuuTru = false; /*sử dụng chức năng vị trí lưu trữ hồ sơ*/;
		var yeuCauSoHoa = true;
		var showKySoMotCua = true;
		var levelNameMapping = {
			2: 'Mức độ 2',
			3: 'DVCTT một phần',
			4: 'DVCTT toàn trình'
		}
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

	<div class="container-fluid" id="wrapper" style="overflow: hidden;">
		<header id="banner" class="row">
			<div class="mLogo align-middle"> 
				<a href="${site_default_url}" aria-label="Trang chủ"> 
					<img alt="Ảnh banner" src="${themeDisplay.getPathThemeRoot()}/images/logo-new.png" style="width: 70px;height: 70px;"> 
					<div class="text-logo" style="text-transform: uppercase;
						font-size: 22px !important;
						font-family: 'Roboto';
						font-weight: 900 !important;
						color: red !important;
						-webkit-text-stroke-width: 0.3px;
						-webkit-text-stroke-color: #fff;
						line-height: 30px;"> 
						Hệ thống thông tin giải quyết thủ tục hành chính
						<br/>
						<span>Bộ Xây dựng</span>
					</div> 
				</a> 
			</div>
			<div id="react-root" style="float: right;width: 100%;height: 71px;">
				<div id="app_login"></div>
			</div>

			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
		</header>
		
		<@liferay_util["include"] page=content_include />

		<footer id="footer" >
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
	
	<a aria-label="Trang chủ" href="" class="btt"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
	<a aria-label="Trang chủ" href="/web/cong-dich-vu-cong" class="bth"><i class="fa fa-home" aria-hidden="true"></i></a>
	
	
	<!-- inject:js -->
		<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js?t=931241231"></script>
		<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js?t=931241231"></script>
		<#if permissionChecker.isOmniadmin()>
			<@liferay_util["include"] page=body_bottom_include />
			<@liferay_util["include"] page=bottom_include />
		</#if>
	<!-- endinject -->
	<!-- <script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf.js?t=9991"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/pdf-table-extractor.js?t=9991"></script> -->

	<script type="text/javascript">
		$(document).ready(function() {
			var offset = 300,
				scroll_top_duration = 600;
				$back_to_top = $('.btt');
				$back_to_home = $('.bth');
				
			$(".header_login .logo img").attr("src","o/boxaydung-theme/images/logo-new.png");
			$("#login_container .text-logo").html('<p class="text-logo-1"> Hệ thống thông tin giải quyết thủ tục hành chính </p><p class="text-logo-2"> Bộ xây dựng </p>');

			$(window).scroll(function(){
				( $(this).scrollTop() > offset ) ? $back_to_top.addClass('btt-is-visible') : $back_to_top.removeClass('btt-is-visible');
				( $(this).scrollTop() > offset ) ? $back_to_home.addClass('btt-is-visible') : $back_to_home.removeClass('btt-is-visible');
			});
			
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

	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />
	
	<style>
		.signed-in .btns {
			display: none !important;
		}
		body #reAssign {
			display: none;
		}
		<!-- .page-theme #navigation {
			overflow: hidden;
			margin-bottom: 10px;
		} -->
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
		
		
		body .btt, body .bth {
			position: fixed;
			bottom: 100px;
			right: 30px;
			background-color: #1c6ac6;
			width: 42px;
			height: 42px;
			border-radius: 50%;
			text-align: center;
			line-height: 40px;
			display: none;
			color: white;
			font-size: 24px;
			z-index: 9999;
		}
		body .btt.btt-is-visible, body .bth.btt-is-visible {
			display: block;
		}
		body .btt:hover, body .bth:hover {
			background-color: #082d86;
			color: white !important;
		}
		body .bth {
			right: auto;
			left: 30px;
		}
		
		
		.body_login {
			background: url("/o/boxaydung-theme/images/bg-login.jpg") center center no-repeat;
			background-size: cover;
		}
		.body_login #banner {
			background: none transparent;
		}
		.body_login #banner > div, .body_login .btt, .body_login .bth {
			display: none !important;
		}
		.body_login #footer {
			background: none transparent;
			position: relative;
		}
		.body_login #footer:before {
			content: "";
			position: absolute;
			left: 30px;
			right: 30px;
			top: 0;
			height: 3px;
			background-color: #0dffff;
		}
		.body_login .theme--light.application {
			background-color: transparent;
		}
		.body_login .application--wrap {
			min-height: calc(100vh - 180px);
		}
		.body_login #navigation {
			background: url("/o/boxaydung-theme/images/bg-nav-login.jpg") left center repeat-x;
			background-size: auto 100%;
			border-radius: 0 0 50px 50px;
			display: flex;
			justify-content: center;
			display: none;
		}
		.body_login .header_login img {
			display: block;
			margin: 0;
			max-width: 100%;
		}
		.body_login nav.primary {
			display: none;
		}
		.body_login nav + div {
			border: 0 !important;
			padding: 15px !important;
			background-color: white;
			border-radius: 10px;
			max-width: 350px !important;
			margin: auto;
		}
		.body_login .header_login {
			text-align: center;
			padding: 0 15px;
		}
		.body_login main.v-content > .v-content__wrap {
			display: flex;
			justify-content: center;
			align-items: center;
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
		
		body.page-theme .deactive__btn {
			background-color: #0d7535 !important;
		}
		/*  */
		.yhy-append-wrap {
			position: fixed !important;
			left: 0;
			bottom: 0;
		}
		#footer {
			padding-bottom: 30px !important;
		}
		#banner .text-logo, #banner .mLogo span {
			text-transform: uppercase;
			font-size: 22px !important;
			font-family: 'Roboto';
			font-weight: 900 !important;
			color: red !important;
			-webkit-text-stroke-width: 0.3px;
			-webkit-text-stroke-color: #fff;
			line-height: 30px;
		}
		.body_login .header_login img {
			width: 120px;
			margin: 0 auto !important;
		}
		.body_login .header_login .text-logo{
			text-transform: uppercase;
			font-size: 27px !important;
			font-weight: 900 !important;
			color: red !important;
			-webkit-text-stroke-width: 0.5px;
			-webkit-text-stroke-color: #fff;
			line-height: 30px;
			margin-top: 15px;
			font-family: 'Roboto';
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