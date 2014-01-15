<header class="holder header-holder">
	<div class="row header-row">
		<div class="header">
			{* Brand *}
			<h1><a href="/">{$siteTitle}</a></h1>

			{* Navigation *}
			<nav>
				{$var|getnavigation:'page':0:1}
			</nav>

			{* Meta *}
			<nav>
				{$var|getnavigation:'meta':0:1}
			</nav>

			{* Languages *}
			{option:languages}
				<nav>
					{include:core/layout/templates/languages.tpl}
				</nav>
			{/option:languages}
		</div>
	</div>
</header>

