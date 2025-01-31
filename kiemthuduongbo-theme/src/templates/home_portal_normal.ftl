<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Bộ Giao thông Vận tải</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/color_schemes/${theme_color_id}-theme/favicon.ico">
	<meta name="description" content="Cổng Dịch vụ công Bộ Giao thông vận tải cung cấp toàn bộ thông tin về thủ tục hành chính, thực hiện và giải quyết thủ tục hành chính trực tuyến...">
	<link rel="preload" href="/o/kiemthuduongbo-theme/images/anh-banner.webp" as="image">
	<link rel="preload" href="/o/kiemthuduongbo-theme/images/logo-home-responsive.webp" as="image">
	<link rel="preload" href="/o/kiemthuduongbo-theme/images/img-3.webp" as="image">
	<base href="/">

	<@liferay_util["include"] page=top_head_include />
	
	<!-- <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;subset=vietnamese" rel="stylesheet"> -->

	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=8888233311" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'" type="text/css">
	<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=8823883131" rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'" type="text/css">

	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
    
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js?t=9736124123"></script>
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap.min.js?t=9736124123" defer></script> -->
	<script src="${themeDisplay.getPathThemeRoot()}/js/handlebars.min.js?t=9736124123" defer></script>
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/alpaca.min.js" defer></script> -->
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/moment-with-locales.min.js" defer></script> -->
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/bootstrap-datetimepicker.min.js" defer></script> -->
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/moment.min.js" defer></script> -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js" defer></script>
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/jquery-comments.js" defer></script> -->
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/jquery.textcomplete.js" defer></script> -->
	<!-- <script src="${themeDisplay.getPathThemeRoot()}/js/svg-pan-zoom.min.js" defer></script> -->
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
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

<div class="container-fluid" id="">
	<header id="banner">
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

	<footer id="footer">
		<div class="footer">
			<div class="source">Nguồn ảnh internet</div>
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
			<a href="" class="" aria-label="Trang chủ" style="width: 34px;
			height: 34px;
			text-align: left;
			line-height: 34px;"></a>
			<!-- <a target="_blank" href="https://www.facebook.com/groups/1207489822675506/" class="icon-face">
				<i class="fa fa-facebook"></i>
			</a> -->
		</div>
	</footer>
</div>

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
<!-- inject:js -->
	<!--<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}/js/bundle.js?t=65722572255"></script>-->
	<#if permissionChecker.isOmniadmin()>
		<@liferay_util["include"] page=body_bottom_include />
		<@liferay_util["include"] page=bottom_include />
	</#if>
<!-- endinject -->

</body>
	<style>
		#navigation ul.child-menu {
			display: none;
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
		}

		iframe#botplatform_iframe {
			width: 300px !important;
		}
		.yhy-append-wrap {
			position: fixed !important;
			z-index: 10;
			bottom: 60px;
		}
		.yhy-append-wrap img{ 
			width: 16px;
			height: 13px;
		}
	</style>
	<script>
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
		});
	</script>
	<script type="text/javascript">
	    $.ajaxSetup({
			headers: {"Token": Liferay.authToken},
			global: true
		});
	</script>
</html>