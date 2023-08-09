<nav class="${nav_css_class}" id="navigation" role="navigation">
	<!-- <h1 class="hide-accessible"><@liferay.language key="navigation" /></h1> -->
	<a href="#" class="nav-toggle" style="display: none;"><i class="fa fa-bars"></i></a>

	<ul aria-label="<@liferay.language key="site-pages" />" role="menubar">
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_attr_selected = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_css_class = "selected"
				/>
			</#if>

			<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
				<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem">
					<span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span>
				</a>
			</li>
		</#list>
	</ul>
	<style>
		body #navigation {
		overflow: hidden;
		background-color: #0054a6;
		width: 100%;
		}
		body #navigation ul {
		max-width: 1300px;
		padding: 0 15px;
		margin: auto;
		}
		body #navigation li {
		float: left;
		}
		body #navigation li a {
		display: block;
		color: #6dcff6;
		padding: 15px;
		font-weight: bold;
		text-transform: uppercase;
		}
		body #navigation li.selected a, body #navigation li:hover a {
		background-color: #00aeef;
		color: white;
		}

		.home-theme #navigation {
		margin: 0 -15px;
		}

		.page-theme #navigation li a {
		padding: 10px 15px;
		}
	</style>
</nav>