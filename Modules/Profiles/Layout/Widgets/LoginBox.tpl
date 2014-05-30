
{*
	variables that are available:
	- {$widgetProfilesLoginBox}:
*}

<section>
	{option:isLoggedIn}
		<div class="bd content">
			{$msgProfilesLoggedInAs|sprintf:{$profile.display_name}:{$profile.url.dashboard}} -
			<a href="{$profile.url.settings}">{$lblSettings|ucfirst}</a>
		</div>
	{/option:isLoggedIn}

	{option:!isLoggedIn}
		<header>
			<h3>{$lblLogin|ucfirst}</h3>
		</header>
		<div>
			{form:login}
				<fieldset>
					<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail}{$txtEmailError}
					</p>
					<p{option:txtPasswordError} class="errorArea"{/option:txtPasswordError}>
						<label for="password">{$lblPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtPassword}{$txtPasswordError}
					</p>
					<p>
						<label for="remember">{$chkRemember} {$lblRememberMe|ucfirst}</label>
						{$chkRememberError}
					</p>
					<p>
						<input class="inputSubmit" type="submit" value="{$lblLogin|ucfirst}" />
					</p>
				</fieldset>
			{/form:login}
		</div>
		<footer>
			<p>
				<a href="{$var|geturlforblock:'Profiles':'ForgotPassword'}" title="{$msgForgotPassword}">{$msgForgotPassword}</a>
			</p>
		</footer>
	{/option:!isLoggedIn}
</section>
