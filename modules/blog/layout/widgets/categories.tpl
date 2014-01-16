{*
	variables that are available:
	- {$widgetBlogCategories}:
*}

{option:widgetBlogCategories}
	<section id="blogCategoriesWidget">
		<header>
			<h1>{$lblCategories|ucfirst}</h1>
		</header>
		<ul>
			{iteration:widgetBlogCategories}
				<li>
					<a href="{$widgetBlogCategories.url}">
						{$widgetBlogCategories.label}&nbsp;({$widgetBlogCategories.total})
					</a>
				</li>
			{/iteration:widgetBlogCategories}
		</ul>
	</section>
{/option:widgetBlogCategories}
