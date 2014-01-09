<header class="header">
	<div class="inner">
		{* Brand *}
		<a href="/">
			<h1 class="logo">{$siteTitle}</h1>
		</a>

		{* Navigation *}
		<nav class="main-nav">
			{$var|getnavigation:'page':0:1}
		</nav>

		{* Language *}
		<nav class="language-nav">
			{include:core/layout/templates/languages.tpl}
		</nav>
	</div>
</header>

