<!DOCTYPE html>
<html lang="{$LANGUAGE}">

{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">

    {* Browser-alert *}
    {include:Core/Layout/Templates/Browser-alert.tpl}

    {* Header *}
    {include:Core/Layout/Templates/Header.tpl}

    <div class="c-row c-row--alpha">
        <div class="o-container">
            <main class="o-grid o-grid--gutter">

                {* Breadcrumb *}
                {option:!isPage1}
                <div class="o-grid__item">
                    {include:Core/Layout/Templates/Breadcrumb.tpl}
                </div>
                {/option:!isPage1}


                {* Page title *}
                {option:!hideContentTitle}
                <div class="o-grid__item">
                    <h1>{$page.title}</h1>
                </div>
                {/option:!hideContentTitle}


                {* Main position *}
                <div class="o-grid__item">
                    {option:positionMain}
                    {iteration:positionMain}

                    {option:!positionMain.blockIsHTML}
                        {$positionMain.blockContent}
                    {/option:!positionMain.blockIsHTML}

                    {option:positionMain.blockIsHTML}
                        {$positionMain.blockContent}
                    {/option:positionMain.blockIsHTML}

                    {/iteration:positionMain}
                </div>
                {/option:positionMain}
            </main>
        </div>
    </div>

    {* Footer *}
    {include:Core/Layout/Templates/Footer.tpl}

    {* Javascript *}
    {include:Core/Layout/Templates/Javascript.tpl}

    {* Site wide HTML *}
    {$siteHTMLFooter}

</body>
</html>
