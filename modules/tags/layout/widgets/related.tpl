{*
	variables that are available:
	- {$widgetTagsRelated}: contains an array with all related items
*}

{option:widgetTagsRelated}
	<section>
		<header>
			<h1>{$lblRelated|ucfirst}</h1>
		</header>
		<ul>
			{iteration:widgetTagsRelated}
				<li>
					<a href="{$widgetTagsRelated.full_url}" title="{$widgetTagsRelated.title}">
						{$widgetTagsRelated.title}
					</a>
				</li>
			{/iteration:widgetTagsRelated}
		</ul>
	</section>
{/option:widgetTagsRelated}
