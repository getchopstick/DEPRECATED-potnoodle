{*
	variables that are available:
	- {$item}: contains data about the question
	- {$related}: the related items
	*}
	<div id="faqDetail">
		<article>
			<header>
				{option:settings.allow_multiple_categories}
					{* Category*}
					<h1>
						<a href="{$item.category_full_url}" title="{$item.category_title}">{$item.category_title}</a>
					</h1>
					{option:!item.tags}{/option:!item.tags}

					{* Tags*}
					{option:item.tags}
					{$lblWith} {$lblThe} {$lblTags}
					{iteration:item.tags}
					<a href="{$item.tags.full_url}" rel="tag" title="{$item.tags.name}">{$item.tags.name}</a>{option:!item.tags.last}, {/option:!item.tags.last}{option:item.tags.last}.{/option:item.tags.last}
					{/iteration:item.tags}
					{/option:item.tags}
				{/option:settings.allow_multiple_categories}

				{* Tags *}
				{option:!settings.allow_multiple_categories}
				{option:item.tags}
				<ul>
					<li>
						{$lblWith} {$lblThe} {$lblTags}
						{iteration:item.tags}
						<a href="{$item.tags.full_url}" rel="tag" title="{$item.tags.name}">{$item.tags.name}</a>{option:!item.tags.last}, {/option:!item.tags.last}{option:item.tags.last}.{/option:item.tags.last}
						{/iteration:item.tags}
					</li>
				</ul>
				{/option:item.tags}
				{/option:!settings.allow_multiple_categories}
			</header>
			<div>
				<h2>{$item.question}</h2>
				{$item.answer}
			</div>
		</article>

		{option:inSameCategory}
		<section id="faqRelatedItems">
			<header>
				{option:settings.allow_multiple_categories}<h3>{$msgQuestionsInSameCategory|ucfirst}</h3>{/option:settings.allow_multiple_categories}
				{option:!settings.allow_multiple_categories}<h3>{$msgOtherQuestions|ucfirst}</h3>{/option:!settings.allow_multiple_categories}
			</header>
			<div>
				<ul>
					{iteration:inSameCategory}
					<li><a href="{$inSameCategory.full_url}" title="{$inSameCategory.question}">{$inSameCategory.question}</a></li>
					{/iteration:inSameCategory}
				</ul>
			</div>
		</section>
		{/option:inSameCategory}

		{option:related}
		<section id="faqRelatedItems">
			<div>
				<header>
					<h3>{$msgRelatedQuestions|ucfirst}</h3>
				</header>
				<div>
					<ul>
						{iteration:related}
						<li><a href="{$related.full_url}" title="{$related.question}">{$related.question}</a></li>
						{/iteration:related}
					</ul>
				</div>
			</div>
		</section>
		{/option:related}

		<p><a href="{$var|geturlforblock:'faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></p>

		{option:settings.allow_feedback}
		<section id="faqFeedbackForm">
			<div>
				<header>
					<h3 id="{$actFeedback}">{$msgFeedback|ucfirst}</h3>
				</header>
				<div>
					{option:success}<div class="message success"><p>{$msgFeedbackSuccess}</p></div>{/option:success}
					{option:spam}<div class="message error"><p>{$errFeedbackSpam}</p></div>{/option:spam}

					{form:feedback}
					{$hidQuestionId}
					<div class="options">
						<ul class="inputList">
							{iteration:useful}
							<li>
								{$useful.rbtUseful}
								<label for="{$useful.id}">{$useful.label|ucfirst}</label>
							</li>
							{/iteration:useful}
						</ul>
					</div>

					<div id="feedbackNoInfo"{option:hideFeedbackNoInfo} style="display: none;"{/option:hideFeedbackNoInfo}>
						<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
							<label for="message">{$msgHowToImprove|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtMessage} {$txtMessageError}
						</p>
						<p>
							<input class="inputSubmit" type="submit" name="comment" value="{$lblSend|ucfirst}" />
						</p>
					</div>
					{/form:feedback}
				</div>
			</div>
		</section>
		{/option:settings.allow_feedback}
	</div>
