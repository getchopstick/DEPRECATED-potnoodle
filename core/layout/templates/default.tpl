{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<!--[if lt IE 7]>
		<div class="alert-box">
			<p>You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser to improve your experience.</p>
		</div>
	<![endif]-->

	{* Header *}
	<div class="holder header-holder">
		<div class="row header-row">
			{include:core/layout/templates/header.tpl}
		</div>
	</div>

	{* Position: Main *}
	{option:positionMain}
	<div class="holder main-holder">
		<div class="row main-row">
			<div class="main">
				<div class="inner">
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
		</div>
	</div>
	{/option:positionMain}

	{* Position: Aside *}
	{option:positionAside}
	<div class="holder Aside-holder">
		<div class="row Aside-row">
			<div class="Aside">
				<div class="inner">
					{iteration:positionAside}
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
		</div>
	</div>
	{/option:positionAside}

	{* Footer *}
	<div class="holder footer-holder">
		<div class="row header-row">
			{include:core/layout/templates/footer.tpl}
		</div>
	</div>

	<noscript class="holder main-holder">
		<div class="row main-row">
			<div class="message notice">
				<h4>{$lblEnableJavascript|ucfirst}</h4>
				<p>{$msgEnableJavascript}</p>
			</div>
		</div>
	</noscript>

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
