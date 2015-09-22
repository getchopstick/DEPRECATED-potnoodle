<footer class="c-row c-row--beta">
    <div class="o-container">
        <div class="o-grid">
            <nav class="o-grid__item">
                <ul class="o-list o-list--horizontal">
                    <li class="o-list__item">&copy; {$now|date:'Y'} {$siteTitle}</li>
                    {iteration:footerLinks}
                        <li class="o-list__item {option:footerLinks.selected} is-selected{/option:footerLinks.selected}">
                            <a
                                href="{$footerLinks.url}"
                                title="{$footerLinks.title}"
                                {option:footerLinks.rel}
                                    rel="{$footerLinks.rel}"
                                {/option:footerLinks.rel}>
                                {$footerLinks.navigation_title}
                            </a>
                        </li>
                    {/iteration:footerLinks}
                </ul>
            </nav>
        </div>
    </div>
</footer>
