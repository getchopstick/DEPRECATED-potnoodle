{* General Javascript *}
{iteration:jsFiles}
    <script src="{$jsFiles.file}"></script>
{/iteration:jsFiles}

{* Theme specific Javascript *}
<script src="{$THEME_URL}/Core/Js/theme.concat.js"></script>
