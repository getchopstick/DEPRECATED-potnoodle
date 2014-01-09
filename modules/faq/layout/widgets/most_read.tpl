{*
	variables that are available:
	- {$widgetFaqMostRead}: contains an array with all posts, each element contains data about the post
*}

{option:widgetFaqMostRead}
	<section id="faqMostReadWidget">
		<header>
			<h3>{$lblMostReadQuestions|ucfirst}</h3>
		</header>
		<div>
			<ul>
				{iteration:widgetFaqMostRead}
					<li><a href="{$widgetFaqMostRead.full_url}" title="{$widgetFaqMostRead.question}">{$widgetFaqMostRead.question}</a></li>
				{/iteration:widgetFaqMostRead}
			</ul>
		</div>
	</section>
{/option:widgetFaqMostRead}
