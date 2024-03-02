local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return{
  s("article",
      fmta(
        [[
          \documentclass{scrartcl}

          \usepackage[utf8]{inputenc}
          \usepackage[ngerman]{babel}

          \usepackage{graphicx}
            \graphicspath{ {graphics/} }
          \usepackage{tabularx}
          \usepackage{listings}

          \usepackage[colorlinks=true,urlcolor=blue,linkcolor=blue]{hyperref}
          \usepackage{booktabs}
          \usepackage{float}

          \begin{document}

          <1>

          \end{document}
        ]],
        { i(1) }
      )
    ),  
}
