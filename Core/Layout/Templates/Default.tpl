{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
<!--[if lt IE 8]>
<div class="alert-box">
<p>You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser to improve your experience.</p>
</div>
<![endif]-->

{* Header *}
{include:Core/Layout/Templates/Header.tpl}

<main class="c-holder c-holder--alpha" role="main">
	<div class="o-container">
		{include:Core/Layout/Templates/Breadcrumb.tpl}

		{* Page title *}
		{option:!hideContentTitle}
		<header>
			<h1>{$page.title}</h1>
		</header>
		{/option:!hideContentTitle}

		{* Main position *}
		{option:positionMain}
		{iteration:positionMain}
		{option:!positionMain.blockIsHTML}
		{$positionMain.blockContent}
		{/option:!positionMain.blockIsHTML}
		{option:positionMain.blockIsHTML}
		{$positionMain.blockContent}
		{/option:positionMain.blockIsHTML}
		{/iteration:positionMain}
		{/option:positionMain}
	</div>
</main>

{* Footer *}
{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>
