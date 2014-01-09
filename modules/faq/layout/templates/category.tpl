{*
	variables that are available:
	- {$questions}: contains all questions inside this category
*}

<section id="faqCategory">
	<header>
		<h1>{$category.title}</h1>
	</header>
	<div>
		{option:questions}
			<section>
				<div>
					<ul>
						{iteration:questions}
							<li><a href="{$questions.full_url}">{$questions.question}</a></li>
						{/iteration:questions}
					</ul>
				</div>
			</section>
		{/option:questions}

		{option:!questions}
			<p>{$msgNoQuestionsInCategory|ucfirst}</p>
		{/option:!questions}

		<p><a href="{$var|geturlforblock:'faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></p>
	</div>
</section>
