<div class="c-row c-row--alpha js-nav-holder">
    <div class="o-container">
        <div class="o-grid">
            <div class="o-grid__item">
                {* SEO logo: H1 for home, p for other pages *}

                {option:isPage1}
                <h1 class="c-logo">
                    {$siteTitle}
                </h1>
                {/option:isPage1}

                {option:!isPage1}
                <p class="c-logo">
                    <a title="{$siteTitle}" class="c-logo__link" href="/">
                        {$siteTitle}
                    </a>
                </p>
                {/option:!isPage1}

                {* Navigation *}
                <nav class="c-nav-main js-nav">
                    {$var|getnavigation:'page':0:1}
                </nav>

                {* Mobile nav trigger *}
                <button class="c-nav-main-trigger js-nav-trigger">{$lblMenu|ucfirst}</button>

                {* Meta *}
                <nav>
                    {$var|getnavigation:'meta':0:1}
                </nav>

                {* Languages *}
                {option:languages}
                <nav>
                    {include:Core/Layout/Templates/Languages.tpl}
                </nav>
                {/option:languages}
            </div>
        </div>
    </div>
</div>

<div class="c-row c-row--alpha">
    <div class="o-container">
        <div class="o-grid">
            <div class="o-grid__item">
                {* Search widget: so you don't have to make a position *}
                {$var|parsewidget:'Search':'Form'}
            </div>
        </div>
    </div>
</div>
