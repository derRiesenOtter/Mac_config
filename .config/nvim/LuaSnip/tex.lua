local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return{

  s("bold",
    fmta(
      [[
        \textbf{<>}
      ]],
      { i(1) }
    )
  ),

  s("italic",
    fmta(
      [[
        \textit{<>}
      ]],
      { i(1) }
    )
  ),

   s("chapter*",
    fmta(
      [[
        \chapter*{<>}
      ]],
      { i(1) }
    )
  ),

 s("chapter",
    fmta(
      [[
        \chapter{<>}
      ]],
      { i(1) }
    )
  ),
  
  s("section",
    fmta(
      [[
        \section{<>}
      ]],
      { i(1) }
    )
  ),

  s("subsection",
    fmta(
      [[
        \subsection{<>}
      ]],
      { i(1) }
    )
  ),

s("section*",
    fmta(
      [[
        \section*{<>}
      ]],
      { i(1) }
    )
  ),

  s("subsection*",
    fmta(
      [[
        \subsection*{<>}
      ]],
      { i(1) }
    )
  ),

  s("itemize",
    fmta(
      [[
        \begin{itemize}
          \item <>
        \end{itemize}
      ]],
      { i(1) }
    )
  ), 

  s("item",
    fmta(
      [[
        \item <>
      ]],
      { i(1) }
    )
  ), 

  s("figure",
    fmta(
      [[
        \begin{figure}
          \includegraphics[width=\textwidth]{<>}
          \caption{<>}
          \label{fig:<>}
        \end{figure}
      ]],
      { i(1), i(2), i(3)}
    )
  ),

  s("cite",
    fmta(
      [[
        \cite{<>}
      ]],
      { i(1) }
    )
  ),

  s("frac",
    fmta(
      [[
        \frac{<>}{<>}
      ]],
      { i(1), i(2) }
    )
  ),

 s("code",
  fmta(
    [[
      \begin{lstlisting}[frame=single, language=Python, caption=Python example, label=lst:<>]
        <>
      \end{lstlisting}
    ]],
    {i(1), i(2) }
    )
  ),

  s("table",
    fmta(
      [[
        \begin{table}[H]
         \begin{center}
         \caption{<>}
         \vspace{1.725ex}
         \begin{tabular}{<>} % as many c as columns needed
         \toprule{}%
         <> \\ % names of the columns separated by &
         \midrule{}%
         <> \\ % rows separated by &
         \bottomrule{}%
         \end{tabular}
         \label{tbl:<>} 
         \end{center}
         \vspace{-3.8ex}
        \end{table}
      ]],
      {i(1), i(2), i(3), i(4), i(5)}
      )
    ),
}
