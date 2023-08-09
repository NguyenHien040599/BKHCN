<#assign theme_type = theme_display.getThemeSetting('theme_type')/>


<#assign theme_color_id = theme_display.getColorSchemeId()/>
<#if theme_color_id == "dklr">
	<#assign img_logo = 'dklr-theme/logo.png'/>
	<#assign img_bg_banner = 'dklr-theme/anh-banner.png?t=9898132323124'/>
	<#assign system = 'Đăng kiểm'/>
<#elseif theme_color_id == "duongbo">
	<#assign img_logo = 'duongbo-theme/logo.png'/>
	<#assign img_bg_banner = 'duongbo-theme/anh-banner.png?t=9898132323124'/>
	<#assign system = 'Đường bộ'/>
<#elseif theme_color_id == "duongsat">
	<#assign img_logo = 'duongsat-theme/logo.png'/>
	<#assign img_bg_banner = 'duongsat-theme/anh-banner.png?t=98981323231324'/>
	<#assign system = 'Đường sắt'/>
<#elseif theme_color_id == "dtnd">
	<#assign img_logo = 'dtnd-theme/logo.png'/>
	<#assign img_bg_banner = 'dtnd-theme/anh-banner.png?t=98981323283124'/>
	<#assign system = 'Đường thủy nội địa'/>
<#elseif theme_color_id == "hanghai">
	<#assign img_logo = 'hanghai-theme/logo.png'/>
	<#assign img_bg_banner = 'hanghai-theme/anh-banner.png?t=9898132323124'/>
	<#assign system = 'Hàng hải'/>
<#elseif theme_color_id == "hangkhong">
	<#assign img_bg_banner = 'hangkhong-theme/anh-banner.png?t=9898132323124'/>
	<#assign img_logo = 'hangkhong-theme/logo.png'/>
	<#assign system = 'Hàng không'/>
<#elseif theme_color_id == "ytegt">
	<#assign img_logo = 'ytegt-theme/logo.png'/>
	<#assign img_bg_banner = 'ytegt-theme/anh-banner.png'/>
	<#assign system = 'Y tế Giao thông'/>
<#elseif theme_color_id == "qlxdvclct">
	<#assign img_logo = 'qlxdvclct-theme/logo.png'/>
	<#assign img_bg_banner = 'qlxdvclct-theme/anh-banner.png'/>
	<#assign system = 'Quản lý Xây dựng và Chất lượng công trình'/>
<#elseif theme_color_id == "bogt">
	<#assign img_logo = 'bogt-theme/logo.png'/>
	<#assign img_bg_banner = 'bogt-theme/anh-banner.png?t=9898132323124'/>
	<#assign img_logo_login = 'bogt-theme/logo_login.png?t=9898132323124'/>
	<#assign system = 'Bộ Giao Thông'/>
<#elseif theme_color_id == "vpbo">
	<#assign img_logo = 'vpbo-theme/logo.png'/>
	<#assign img_bg_banner = 'vpbo-theme/anh-banner.png?t=9898132323124'/>
	<#assign system = 'Văn phòng Bộ'/>
</#if>