---@diagnostic disable: undefined-global
return {
    s("^php", {
        t("<?php "), i(0), t(" ?>")
    }),
    s("^echo", {
        t("<?= "), i(0), t(" ?>")
    }),
    -- s("stag", {
    --     t('s("'), i(0), t({ '", {', "    t('" }),
    --     i(1), t("'), "), t("t('"), i(2), t({ "')", "", '}),' }),
    -- }),
    -- Tags for html
    s("^link", {
        t('<link rel="stylesheet" href"'), i(0), t('">')
    }),
    s("^meta", {
        t('<meta name="description" content="'), i(0), t('">')
    }),
    s("^h1", {
        t('<h1>'), i(0), t('</h1>')
    }),
    s("^h1.", {
        t('<h1 class="">'), i(0), t('</h1>')
    }),
    s("^h1#", {
        t('<h1 id="">'), i(0), t('</h1>')
    }),
    s("^h2", {
        t('<h2>'), i(0), t('</h2>')
    }),
    s("^h2.", {
        t('<h2 class="">'), i(0), t('</h2>')
    }),
    s("^h2#", {
        t('<h2 id="">'), i(0), t('</h2>')
    }),

    s("^h3", {
        t('<h3>'), i(0), t('</h3>')
    }),
    s("^h3.", {
        t('<h3 class="">'), i(0), t('</h3>')
    }),
    s("^h3#", {
        t('<h3 id="">'), i(0), t('</h3>')
    }),

    s("^h4", {
        t('<h4>'), i(0), t('</h4>')
    }),
    s("^h4.", {
        t('<h4 class="">'), i(0), t('</h4>')
    }),
    s("^h4#", {
        t('<h4 id="">'), i(0), t('</h4>')
    }),

    s("^h5", {
        t('<h5>'), i(0), t('</h5>')
    }),
    s("^h5.", {
        t('<h5 class="">'), i(0), t('</h5>')
    }),
    s("^h5#", {
        t('<h5 id="">'), i(0), t('</h5>')
    }),

    s("^h6", {
        t('<h6>'), i(0), t('</h6>')
    }),
    s("^h6.", {
        t('<h6 class="">'), i(0), t('</h6>')
    }),
    s("^h6#", {
        t('<h6 id="">'), i(0), t('</h6>')
    }),

    s("^div", {
        t('<div>'), i(0), t('</div>')
    }),
    s("^div.", {
        t('<div class="">'), i(0), t('</div>')
    }),
    s("^div#", {
        t('<div id="">'), i(0), t('</div>')
    }),

    s("^sect", {
        t('<section>'), i(0), t('</section>')
    }),
    s("^sect.", {
        t('<section class="">'), i(0), t('</section>')
    }),
    s("^sect#", {
        t('<section id="">'), i(0), t('</section>')
    }),

    s("^asi", {
        t('<aside>'), i(0), t('</aside>')
    }),
    s("^asi.", {
        t('<aside class="">'), i(0), t('</aside>')
    }),
    s("^asi#", {
        t('<aside id="">'), i(0), t('</aside>')
    }),

    s("^atag", {
        t('<a href="" alt="">'), i(0), t('</a>')
    }),
    s("^ablank", {
        t('<a href="" alt="" target="_blank">'), i(0), t('</a>')
    }),
    s("^atag.", {
        t('<a href="" alt="" class="">'), i(0), t('</a>')
    }),
    s("^atag#", {
        t('<a href="" alt="" id="">'), i(0), t('</a>')
    }),

    s("^ptag", {
        t('<p>'), i(0), t('</p>')
    }),
    s("^ptag.", {
        t('<p class="">'), i(0), t('</p>')
    }),
    s("^ptag#", {
        t('<p id="">'), i(0), t('</p>')
    }),

    s("^formpost", {
        t('<form action="" method="post">'), i(0), t('</form>')
    }),
    s("^formget", {
        t('<form action="" method="get">'), i(0), t('</form>')
    }),

    s("^butn", {
        t('<button>'), i(0), t('</button>')
    }),
    s("^but.", {
        t('<button class="">'), i(0), t('</button>')
    }),
    s("^but#", {
        t('<button id="">'), i(0), t('</button>')
    }),

    s("^inp", {
        t('<input type="" name="">'), i(1), t('</input>')
    }),

    s("^nav", {
        t('<nav>'), i(0), t('</nav>')
    }),
    s("^nav.", {
        t('<nav class="">'), i(0), t('</nav>')
    }),
    s("^nav#", {
        t('<nav id="">'), i(0), t('</nav>')
    }),

    s("^li", {
        t('<li>'), i(0), t('</li>')
    }),
    s("^li.", {
        t('<li class="">'), i(0), t('</li>')
    }),
    s("^li#", {
        t('<li id="">'), i(0), t('</li>')
    }),

    s("^ul", {
        t('<ul>'), i(0), t('</ul>')
    }),
    s("^ul.", {
        t('<ul class="">'), i(0), t('</ul>')
    }),
    s("^ul#", {
        t('<ul id="">'), i(0), t('</ul>')
    }),

    s("^ol", {
        t('<ol>'), i(0), t('</ol>')
    }),
    s("^ol.", {
        t('<ol class="">'), i(0), t('</ol>')
    }),
    s("^ol#", {
        t('<ol id="">'), i(0), t('</ol>')
    }),

    s("^footer", {
        t('<footer>'), i(0), t('</footer>')
    }),
    s("^footer.", {
        t('<footer class="">'), i(0), t('</footer>')
    }),
    s("^footer#", {
        t('<footer id="">'), i(0), t('</footer>')
    }),

    -- EJS Tags
    -- keymap.set("i", "^%", "<%%><ESC>hi  <ESC>i", { noremap = true, silent = true })
    -- keymap.set("i", "^$", "<%=%><ESC>hi  <ESC>i", { noremap = true, silent = true })
    -- keymap.set("i", "^*", "<%-%><ESC>hi  <ESC>i", { noremap = true, silent = true })
    -- keymap.set("i", "^&", '<%- include("") %><ESC>F"i', { noremap = true, silent = true })
    -- keymap.set("i", "^#", "<%#%><ESC>hi  <ESC>i", { noremap = true, silent = true })
    -- keymap.set("i", "^^", "<%%%%><ESC>hhi  <ESC>i", { noremap = true, silent = true })
}
