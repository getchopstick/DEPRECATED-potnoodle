{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<!--[if lt IE 7]>
		<div class="alert-box">
			<p>You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser to improve your experience.</p>
		</div>
	<![endif]-->

	{* Header *}
	{include:core/layout/templates/header.tpl}

	{* Position: Main *}
	{option:positionMain}
	<div class="holder">
		<div class="row">
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
	{/option:positionMain}

	{* Position: Aside *}
	{option:positionAside}
	<div class="holder">
		<div class="row">
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
	{/option:positionAside}

	{* Footer *}
	{include:core/layout/templates/footer.tpl}
</body>
</html>
