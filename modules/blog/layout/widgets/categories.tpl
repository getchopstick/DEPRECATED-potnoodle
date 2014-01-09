{*
	variables that are available:
	- {$widgetBlogCategories}:
*}

{option:widgetBlogCategories}
	<section id="blogCategoriesWidget">
		<div>
			<header>
				<h1>{$lblCategories|ucfirst}</h1>
			</header>
			<div>
				{iteration:widgetBlogCategories}
					<a href="{$widgetBlogCategories.url}">
						{$widgetBlogCategories.label}&nbsp;({$widgetBlogCategories.total})
					</a> -
				{/iteration:widgetBlogCategories}
			</div>
		</div>
	</section>
{/option:widgetBlogCategories}
