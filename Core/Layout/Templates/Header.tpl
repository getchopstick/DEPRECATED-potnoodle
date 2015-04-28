<header class="js-nav-holder c-holder c-holder--alpha">
	<span class="c-main-nav-trigger js-nav-trigger">menu</span>
	{* SEO logo: H1 for home, p for other pages *}

	<div class="o-container">
		{option:isPage1}
		<h1 class="c-logo"><a title="{$siteTitle}" href="/">{$siteTitle}</a></h1>
		{/option:isPage1}

		{option:!isPage1}
		<p class="c-logo"><a title="{$siteTitle}" href="/">{$siteTitle}</a></p>
		{/option:!isPage1}

		{* Navigation *}
		<nav class="js-nav c-main-nav">
			{$var|getnavigation:'page':0:1}
		</nav>

		{* Meta *}
		<nav>
			{$var|getnavigation:'meta':0:1}
		</nav>

		{* Languages *}
		{option:languages}
		<nav>
			{include:Core/Layout/Templates/Languages.tpl}
		</nav>
		{/option:languages}
	</div>
</header>

<div class="c-holder c-holder--alpha">
	<div class="o-container">
		{* Search widget: so you don't have to make a position *}
		{$var|parsewidget:'Search':'Form'}
	</div>
</div>
