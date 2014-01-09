{*
	variables that are available:
	- {$faqCategories}: contains all categories, along with all questions inside a category
	*}


	{option:!faqCategories}
	<div id="faqIndex">
		<section>
			<div>
				<p>{$msgFaqNoItems}</p>
			</div>
		</section>
	</div>
	{/option:!faqCategories}

	{option:faqCategories}
	<section id="faqIndex">
		{option:allowMultipleCategories}
		<div>
		<header>
			<h3>{$lblCategories}</h3>
		</header>
				{iteration:faqCategories}
					<a href="#{$faqCategories.url}" title="{$faqCategories.title}">{$faqCategories.title}</a>
				{/iteration:faqCategories}
		</div>
		{/option:allowMultipleCategories}
		<div>
			{iteration:faqCategories}
			<section>
				{option:allowMultipleCategories}
				<header>
					<h3 id="{$faqCategories.url}"><a href="{$faqCategories.full_url}" title="{$faqCategories.title}">{$faqCategories.title}</a></h3>
				</header>
				{/option:allowMultipleCategories}

				<div>
					<ul>
						{iteration:faqCategories.questions}
						<li><a href="{$faqCategories.questions.full_url}">{$faqCategories.questions.question}</a></li>
						{/iteration:faqCategories.questions}
					</ul>
				</div>
			</section>
			{/iteration:faqCategories}
		</div>
	</section>
	{/option:faqCategories}
