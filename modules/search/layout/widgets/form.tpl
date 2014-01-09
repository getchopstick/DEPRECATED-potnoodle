<section id="searchFormWidget">
	<header>
		<h1>{$lblSearch|ucfirst}</h1>
	</header>
	<div>
		{form:search}
			<p>
				<label for="q_widget">{$lblSearchTerm|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
				{$txtQWidget}
			</p>
			<p>
				<input id="submit" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
			</p>
		{/form:search}
	</div>
</section>
