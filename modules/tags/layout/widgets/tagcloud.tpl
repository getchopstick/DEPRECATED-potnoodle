{*
	variables that are available:
	- {$widgetTagsTagCloud}: contains an array with the most popular tags
*}

{option:widgetTagsTagCloud}
	<section id="tagCloudWidget">
		<div>
			<header>
				<h1>{$lblTags|ucfirst}</h1>
			</header>
			<div>
				{iteration:widgetTagsTagCloud}
					<a href="{$widgetTagsTagCloud.url}">
						{$widgetTagsTagCloud.name}&nbsp;({$widgetTagsTagCloud.number})
					</a>
				{/iteration:widgetTagsTagCloud}
			</div>
		</div>
	</section>
{/option:widgetTagsTagCloud}
