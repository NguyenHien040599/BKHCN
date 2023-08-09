<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Cổng thông tin quốc gia về bảo vệ dữ liệu cá nhân</title>

	<meta name="viewport" content="initial-scale=1.0, width=device-width, initial-scale=1"/>
	<meta name="description" content="Cổng thông tin Quốc gia về dữ liệu cá nhân">

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header id="banner" class="row" role="banner">
		<div id="header" class="container d-flex align-items-center">
			<a href="/" class="logo d-flex align-items-center">
				<img src="${themeDisplay.getPathThemeRoot()}/images/logo.png" width="68" height="52" alt="logo"/>
				<span>Cổng thông tin quốc gia<br> về bảo vệ dữ liệu cá nhân</span>
			</a>
			<div class="head-right ml-auto d-flex align-items-center">
				<!-- DVCQG -->
				<button class="btn-login-dvcqg-desktop btn btn btn-primary lfr-ddm-form-submit btn-primary" id="login_dvcqg_btn" style="
					background-color: #FFFFFF;
					color: #1E7D30;
					border-color: #1E7D30;
					line-height: 1.5;
					font-size: 14px;
					padding: 5px 15px;
					margin-right: 20px;
					font-weight: 600;
					border-radius: 6px;
				"> 
					<span class="lfr-btn-label">Đăng nhập</span> 
				</button>
				<div class="user-info-desktop" id="userInfo" style="margin-right: 20px;display: none;">
					<div id="nav">
						<a class="dropdown-toggle" href="javascript:;" style="display: inline-flex;align-items: center;">
							<i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 26px;margin-right: 10px;color: #fff"></i>
							<span id="userName" style="margin-right: 5px;;color: #fff"></span>
							<i class="fa fa-caret-down" aria-hidden="true" style="color: #fff"></i>
						</a>
						<ul class="dropdown">
							<li>
								<a id="goToProfile_btn" href="javascript:;">
									<i class="fa fa-address-card-o" aria-hidden="true" style="font-size: 16px;margin-right: 5px;"></i>
									Thông tin tài khoản
								</a>
							</li>
							<li>
								<a id="logout_btn" href="javascript:;">
									<i class="fa fa-sign-out" aria-hidden="true" style="font-size: 16px;margin-right: 5px;"></i>
									Đăng xuất
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!--  -->
				<div class="language">
					<a href="/" class="lang-vn">Tiếng Việt</a>
					<span>|</span>
					<a href="/" class="lang-en">English</a>
				</div>
			</div>
		</div>
	</header>

	<div class="container">
		<#include "${full_templates_path}/navigation.ftl" />
	</div>

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

	<footer id="footer" class="row" role="contentinfo">
		<div class="container d-flex  align-items-center justify-content-between">
			<div class="sitename"><i class="fa fa-copyright"></i><span>Cục an ninh mạng và phòng chống tội phạm sử dụng công nghệ cao</span></div>
			<div class="address"><i class="fa fa-map-marker"></i><span>Trụ sở: 207 Khuất Duy Tiến, quận Thanh Xuân, Hà Nội</span></div>
		</div>
	</footer>
	
	<button class="btt" aria-label="btt"><i class="fa fa-chevron-up"></i></button>
</div>
	
<script src="${themeDisplay.getPathThemeRoot()}/js/jquery-3.7.0.min.js"></script>
<script src="${themeDisplay.getPathThemeRoot()}/js/selectize.min.js"></script>
<script src="${themeDisplay.getPathThemeRoot()}/js/slick.min.js"></script>
<script>
	$( document ).ready(function() {
		// Đăng nhập cổng DVCQG
		var setCookie = function(name,value,expires_in) {
			var expires = "";
			if (expires_in) {
				var date = new Date();
				date.setTime(date.getTime() + (expires_in*1000));
				expires = "; expires=" + date.toUTCString();
			}
			document.cookie = name + "=" + (value || "")  + expires + "; path=/";
		}
		var getCookie = function(cname) {
			let name = cname + "=";
			let decodedCookie = decodeURIComponent(document.cookie);
			let ca = decodedCookie.split(';');
			for(let i = 0; i <ca.length; i++) {
				let c = ca[i];
				while (c.charAt(0) == ' ') {
				c = c.substring(1);
				}
				if (c.indexOf(name) == 0) {
				return c.substring(name.length, c.length);
				}
			}
			return "";
		}
		var urlLoginDvcqg = '';
		var getUrlXacThuc = function () {
			sessionStorage.removeItem("urlRedirect_NopHoSo")
			$.get(urlLoginDvcqg + '/o/gw/api/idpmgt/exposed/dvcqg/oauth2/authorizeurl')
			.done(function(data) {
				window.location.href = data
			})
			.fail(function (){
				alert('Lỗi hệ thống. Vui lòng quay lại sau.')
			})
		};
		var getThongTinTaiKhoan = function () {
			let settings = {
				method: 'get',
				url: urlLoginDvcqg + '/idpmgt/exposed/security/profile',
				headers: { 
					'Accept': 'application/json', 
					'Content-Type': 'application/json'
				}
			}
			$.ajax(settings).then(function (result) {
				let isSigned = false
				let userName = ""
				if (result.hasOwnProperty('CaNhan') && result.CaNhan) {
                    isSigned = true;
					userName = result.CaNhan["HoVaTen"];
				} else if (result.hasOwnProperty('DonViKinhDoanh') && result.DonViKinhDoanh) {
                    isSigned = true;
					userName = result.DonViKinhDoanh["TenGoi"]
				} else if (result.hasOwnProperty('CoQuanDonVi') && result.CoQuanDonVi) {
                    isSigned = true;
					userName = result.CoQuanDonVi["TenGoi"]
				} else {
				}
				setCookie('UserName', userName);
                if (isSigned) {
					$(".user-info-desktop").css("display", "block")
					$(".btn-login-dvcqg-desktop").css("display", "none")
					$(".user-info-mobile").css("display", "block")
					$(".btn-login-dvcqg-mobile").css("display", "none")
					$(".user-info-desktop #userName").html(userName)
					$(".user-info-mobile #userName").html(userName)
				} else {
					$(".user-info-desktop").css("display", "none")
					$(".btn-login-dvcqg-desktop").css("display", "block")
					$(".user-info-mobile").css("display", "none")
					$(".btn-login-dvcqg-mobile").css("display", "block")
					$(".user-info-desktop #userName").html("")
					$(".user-info-mobile #userName").html("")
				}
			}).catch(function (err) {
			
			})
			
		}
		
		$(".btn-login-dvcqg-desktop").bind("click", function () {
			getUrlXacThuc()
		});
		$(".btn-login-dvcqg-mobile").bind("click", function () {
			getUrlXacThuc()
		});
		$(".user-info-desktop #goToProfile_btn").bind("click", function () {
			window.location.href = "/web/guest/quan-ly-ho-so#/thong-tin-tai-khoan"
		});
		$(".user-info-mobile #goToProfile_btn").bind("click", function () {
			window.location.href = "/web/guest/quan-ly-ho-so#/thong-tin-tai-khoan"
		});
		$(".user-info-desktop #logout_btn").bind("click", function () {
			setCookie("session_id", "")
			setCookie("UserName", "")
			$(".user-info-desktop").css("display", "none")
			$(".btn-login-dvcqg-desktop").css("display", "block")
			$("#userName").html("")
			window.location.href = window.location.origin
		});
		$(".user-info-mobile #logout_btn").bind("click", function () {
			setCookie("session_id", "")
			setCookie("UserName", "")
			$(".user-info-mobile").css("display", "none")
			$(".btn-login-dvcqg-mobile").css("display", "block")
			$("#userName").html("")
			window.location.href = window.location.origin
		});
		var isSigned = getCookie('session_id')
		var userName = getCookie('UserName')
		if (isSigned) {
			$(".user-info-desktop").css("display", "block")
			$(".btn-login-dvcqg-desktop").css("display", "none")
			$(".user-info-mobile").css("display", "block")
			$(".btn-login-dvcqg-mobile").css("display", "none")
			$(".user-info-desktop #userName").html(userName)
			$(".user-info-mobile #userName").html(userName)
		} else {
			$(".user-info-desktop").css("display", "none")
			$(".btn-login-dvcqg-desktop").css("display", "block")
			$(".user-info-mobile").css("display", "none")
			$(".btn-login-dvcqg-mobile").css("display", "block")
			$(".user-info-desktop #userName").html("")
			$(".user-info-mobile #userName").html("")
		}
		// 
		$(function() {
			$('.dropdown-toggle').click(function() { 
				$(this).next('.dropdown').slideToggle();
			});

			$(document).click(function(e) { 
				var target = e.target; 
				if (!$(target).is('.dropdown-toggle') && !$(target).parents().is('.dropdown-toggle')) 
				//{ $('.dropdown').hide(); }
				{ $('.dropdown').slideUp(); }
			});
		});
	})
</script>
<style>
	#userInfo {
		display: none
	}
	#login_dvcqg_btn {
		display: block
	}
	#userInfo #nav { 
		position: relative; 
	} 
	#userInfo #nav a { 
		padding: 5px 15px 5px; 
	}
	#userInfo .dropdown-toggle { 
		padding: 0; 
		display: inline-flex;
    	align-items: center;
	}
	#userInfo ul.dropdown { 
		position: absolute;
		top: 100%;
		margin-top: 5px;
		background: #fff;
		min-width: 200px;
		border-radius: 3px;
		box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.25);
		display: none;
	}
	#userInfo ul.dropdown li { list-style-type: none; border-bottom: 1px solid #dadada;display: inline-flex;height: 36px;align-items: center;min-width: 200px;}
	#userInfo ul.dropdown li a { text-decoration: none;font-weight: 500; color:#1E7D30;padding: 10px 10px 10px 10px; display: block;width: 100%;}

	@media screen and (max-width: 768px) {
		.btn-login-dvcqg-desktop, .user-info-desktop {
			display: none !important;
		}
	}
</style>
<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>