{option:navigation}
    <ul class="o-list c-nav-main__list">
        {iteration:navigation}
            <li class="c-nav-main__item{option:navigation.selected} is-selected{/option:navigation.selected}">
                <a
                    href="{$navigation.link}"
                    title="{$navigation.navigation_title}"
                    class="c-nav-main__link"
                    {option:navigation.nofollow}
                        rel="nofollow"
                    {/option:navigation.nofollow}>
                    {$navigation.navigation_title}
                </a>
                {option:navigation.selected}
                    {$navigation.children}
                {/option:navigation.selected}
            </li>
        {/iteration:navigation}
    </ul>
{/option:navigation}
