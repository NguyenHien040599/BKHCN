<nav aria-label="<@liferay.language key="site-pages" />" class="${nav_css_class}" id="navigation" role="navigation">
	<div class="navbar-toggler-wrapper">
		<!-- DVCQG -->
		<button class="btn-login-dvcqg-mobile btn btn btn-primary lfr-ddm-form-submit btn-primary" id="login_dvcqg_btn" 
			style="display: none; background-color: rgb(255, 255, 255); color: rgb(30, 125, 48); border-color: rgb(30, 125, 48); line-height: 1.5; font-size: 14px; padding: 5px 15px; margin-right: 20px; font-weight: 600; border-radius: 6px; display: block;"> 
			<span class="lfr-btn-label">Đăng nhập</span> 
		</button>
		<div class="user-info-mobile" id="userInfo" style="margin-right: 20px;display: none;">
			<div id="nav">
				<a class="dropdown-toggle" href="javascript:;" style="display: inline-flex;align-items: center;">
					<i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 26px;margin-right: 10px;color: #1E7D30"></i>
					<span id="userName" style="margin-right: 5px;;color: #1E7D30"></span>
					<i class="fa fa-caret-down" aria-hidden="true" style="color: #1E7D30"></i>
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
		<i class="fa fa-search mobile-search" aria-hidden="true"></i>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
			<i class="fa fa-bars" aria-hidden="true"></i>
		</button>
	</div>
	<div id="navbarToggler" class="collapse navbar-collapse">
		<ul role="menubar" class="menuBar">
			<#list nav_items as nav_item>
				<#assign
					nav_item_attr_has_popup = ""
					nav_item_css_class = ""
					nav_item_layout = nav_item.getLayout()
				/>
	
				<#if nav_item.isSelected()>
					<#assign
						nav_item_attr_has_popup = "aria-haspopup='true'"
						nav_item_css_class = "selected"
					/>
				</#if>
	
				<li class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
					<a ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>
	
					<#if nav_item.hasChildren()>
						<i class="fa fa-caret-down" aria-hidden="true"></i>
						<ul class="child-menu" role="menu">
							<#list nav_item.getChildren() as nav_child>
								<#assign
									nav_child_css_class = ""
								/>
	
								<#if nav_child.isSelected()>
									<#assign
										nav_child_css_class = "selected"
									/>
								</#if>
	
								<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
									<a href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
								</li>
							</#list>
						</ul>
					</#if>
				</li>
			</#list>
			<i class="fa fa-search not-mobile-search" aria-hidden="true"></i>
		</ul>
	</div>
		
	<div class="search-wrapper">
		<div class="container">
			<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />
			<@liferay.search_bar default_preferences="${preferences}" />
		</div>
	</div>
</nav>

