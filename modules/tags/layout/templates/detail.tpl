{*
	Variables that are available:
	- {$tagsModules}: contains all tags, grouped per module
*}

<section id="tagsDetail">
	<div>
		<header>
			<h1>{$lblItemsWithTag|sprintf:{$tag.name}|ucfirst}</h1>
		</header>
		<div>
			{option:tagsModules}
				{iteration:tagsModules}
					<header>
						<h2>{$tagsModules.label}</h2>
					</header>
					<div>
						{iteration:tagsModules.items}
							<p><a href="{$tagsModules.items.full_url}">{$tagsModules.items.title}</a>
							</p>
						{/iteration:tagsModules.items}
					</div>
				{/iteration:tagsModules}
			{/option:tagsModules}
			<p><a href="{$var|geturlforblock:'tags'}" title="{$lblToTagsOverview|ucfirst}">{$lblToTagsOverview|ucfirst}</a></p>

		</div>
	</div>
</section>
