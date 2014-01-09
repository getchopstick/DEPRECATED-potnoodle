{*
	variables that are available:
	- {$widgetFaqCategoryList}: contains an array with all posts for the category, each element contains data about the post
*}

{option:widgetFaqCategoryList}
	<section id="faqCategoryListWidget">
		<header>
			<h3>{$lblFaq}: {$widgetFaqCategory.title}</h3>
		</header>
		<div>
			<ul>
				{iteration:widgetFaqCategoryList}
					<li><a href="{$widgetFaqCategoryList.full_url}" title="{$widgetFaqCategoryList.question}">{$widgetFaqCategoryList.question}</a></li>
				{/iteration:widgetFaqCategoryList}
			</ul>
		</div>
	</section>
{/option:widgetFaqCategoryList}
