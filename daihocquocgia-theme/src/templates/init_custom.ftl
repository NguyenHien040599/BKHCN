<#assign theme_type = theme_display.getThemeSetting('theme_type')/>
<#assign theme_color_id = theme_display.getColorSchemeId()/>


<#if theme_color_id == "dvc">
	<#assign site_title = 'Cổng DVC trực tuyến'/>
	<#assign logo_img = 'logo-dvc.png'/>
<#elseif theme_color_id == "motcua">
	<#assign site_title = 'Hệ thống quản lý hồ sơ hành chính - Đại học Quốc gia Hà Nội'/>
	<#assign logo_img = 'logo-motcua.png'/>
</#if>