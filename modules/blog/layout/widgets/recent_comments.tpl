{*
	variables that are available:
	- {$widgetBlogRecentComments}: contains an array with the recent comments. Each element contains data about the comment.
*}

{option:widgetBlogRecentComments}
	<section id="blogRecentCommentsWidget">
		<header>
			<h1>{$lblRecentComments|ucfirst}</h1>
		</header>
		<div>
			{iteration:widgetBlogRecentComments}
				<p>
					{option:widgetBlogRecentComments.website}<a href="{$widgetBlogRecentComments.website}" rel="nofollow">{/option:widgetBlogRecentComments.website}
						{$widgetBlogRecentComments.author}
					{option:widgetBlogRecentComments.website}</a>{/option:widgetBlogRecentComments.website}
					{$lblCommentedOn} <a href="{$widgetBlogRecentComments.full_url}">{$widgetBlogRecentComments.post_title}</a>
				</p>
				<blockquote>
					{$widgetBlogRecentComments.text}
				</blockquote>
			{/iteration:widgetBlogRecentComments}
		</div>
	</section>
{/option:widgetBlogRecentComments}
