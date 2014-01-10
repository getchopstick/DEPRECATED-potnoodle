<header class="header">
	<div class="inner">
		{* Brand *}
		<a href="/">
			<h1 class="logo">{$siteTitle}</h1>
		</a>

		{* Navigation *}
		<nav class="main-nav">
			{$var|getnavigation:'page':0:1}

			{* Language *}
			{include:core/layout/templates/languages.tpl}
		</nav>
	</div>
</header>

