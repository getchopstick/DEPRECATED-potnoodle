{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<!--[if lt IE 7]>
		<div class="alert-box">
			<p>You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser to improve your experience.</p>
		</div>
	<![endif]-->

	{* Header *}
	{include:core/layout/templates/header.tpl}

	{* Position: Hero *}
	{option:positionHero}
	<div class="holder hero-holder">
		<section class="row hero-row">
			<div class="hero">
				<div class="inner">
					{iteration:positionHero}
					{option:!positionHero.blockIsHTML}
						{$positionHero.blockContent}
					{/option:!positionHero.blockIsHTML}
					{option:positionHero.blockIsHTML}
						<article>
							{$positionHero.blockContent}
						</article>
					{/option:positionHero.blockIsHTML}
					{/iteration:positionHero}
				</div>
			</div>
		</section>
	</div>
	{/option:positionHero}

	{* Position: Main *}
	<div class="holder main-holder">
		<section class="row main-row">
			<div class="main">
				<div class="inner">
					{option:positionMain}
					{iteration:positionMain}
					{option:!positionMain.blockIsHTML}
						{$positionMain.blockContent}
					{/option:!positionMain.blockIsHTML}
					{option:positionMain.blockIsHTML}
						<article>
							{$positionMain.blockContent}
						</article>
					{/option:positionMain.blockIsHTML}
					{/iteration:positionMain}
				</div>
			</div>
		</section>
	</div>
	{/option:positionMain}

	{* Position: Aside *}
	{option:positionAside}
	{iteration:positionAside}
	<div class="holder aside-holder">
		<section class="row aside-row">
			<div class="aside">
				<div class="inner">

					{option:!positionAside.blockIsHTML}
						{$positionAside.blockContent}
					{/option:!positionAside.blockIsHTML}
					{option:positionAside.blockIsHTML}
						<article>
							{$positionAside.blockContent}
						</article>
					{/option:positionAside.blockIsHTML}
					{/iteration:positionAside}
				</div>
			</div>
		</section>
	</div>
	{/option:positionAside}

	<noscript>
		<div class="message notice">
			<h4>{$lblEnableJavascript|ucfirst}</h4>
			<p>{$msgEnableJavascript}</p>
		</div>
	</noscript>

	{* Footer *}
	{include:core/layout/templates/footer.tpl}

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/core/js/theme.js"></script>

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>
