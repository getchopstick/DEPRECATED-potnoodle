{include:core/layout/templates/head.tpl}
{include:core/layout/templates/head.tpl}

<!-- <header>
	<h1>
		{$lblBlog|ucfirst}
		{option:filterCategory}: {$msgArticlesFor|sprintf:{$filterCategory.title}}{/option:filterCategory}
	</h1>
</header> -->

{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

<section class="blogIndex">
	{option:!items}
		<p>{$msgBlogNoItems}</p>
	{/option:!items}

	{option:items}
		{iteration:items}
			<article>
					<header>
						<h1><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a></h1>
						<p>

						<!-- AUTHOR -->

							<span>{$items.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</span>, {option:items.authors}{$lblBy}
								{iteration:items.authors}
									{option:items.authors.is_active}
										<a href="{$var|geturlforblock:'team':'detail'}/{$items.authors.url}">{$items.authors.id|usersetting:'name'} {$items.authors.id|usersetting:'surname'}</a>,
									{/option:items.authors.is_active}
									{option:!items.authors.is_active}
										{$items.authors.id|usersetting:'name'} {$items.authors.id|usersetting:'surname'},
									{/option:!items.authors.is_active}
								{/iteration:items.authors}
							{/option:items.authors}

						<!-- CATEGORIES -->

							<a href="{$items.category_url}" title="{$items.category_title}">
							{$items.category_title}</a>,

						<!-- COMMENTS -->

							{option:!items.comments}
								<a href="{$items.full_url}#{$actComment}" style="background-color: #{$items.dominant_color}">
									{$msgBlogNoComments}
								</a>
							{/option:!items.comments}

							{option:items.comments}
								{option:items.comments_multiple}
									<a  href="{$items.full_url}#{$actComments}" style="background-color: #{$items.dominant_color}">
										{$items.comments_count} {$msgBlogNumberOfComments}
									</a>
								{/option:items.comments_multiple}
								{option:!items.comments_multiple}
									<a href="{$items.full_url}#{$actComments}" style="background-color: #{$items.dominant_color}">
										{$msgBlogOneComment}
									</a>
								{/option:!items.comments_multiple}
							{/option:items.comments}
						</p>
					</header>

					<a href="{$items.full_url}">
						{option:items.image}
							<img src="{$FRONTEND_FILES_URL}/blog/images/128x128/{$items.image}" alt="{$items.title}" />
						{/option:items.image}
					</a>
					{option:!items.introduction}<p>{$items.text|truncate:200}</p>{/option:!items.introduction}
					{option:items.introduction}
						{$items.introduction}
					{/option:items.introduction}
			</article>
		{/iteration:items}
	{/option:items}

	{include:core/layout/templates/pagination.tpl}
</section>
