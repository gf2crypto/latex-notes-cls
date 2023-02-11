\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{civnotes}[2022/11/07 Notes class of Ivan Chizhov]

\newcommand{\STATUS}{draft}
\DeclareOption{final}{\renewcommand{\STATUS}{final}}
\ProcessOptions\relax
\LoadClass[
8pt,
\STATUS
]{extarticle}

%%%%%%%%%%%%%%%%%%%Настройка шрифтов%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Поддержка русского языка
\RequirePackage[T1, T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english, russian]{babel}
% %Прямые греческие буквы (принято в русской типографии)
\RequirePackage{upgreek}
%Дополнительные символы
\RequirePackage{textcomp}

%%%%%%%%%%%%%%%%%%%Обеспечиваем работу с математикой%%%%%%%%%%%%%%%%%

%Поддержка математики
\RequirePackage{amsthm}
\RequirePackage{amstext}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
%Красивые дроби
\RequirePackage{xfrac}
%Дополнительные математические окружения
\RequirePackage{mathtools}
%Математический шрифт
\RequirePackage[bigdelims,vvarbb]{newtxmath}
%Прямые греческие буквы (принято в русской типографии)
\RequirePackage{upgreek}

\numberwithin{equation}{section}

%%%%%%%%%%%%%%%%%%%Настраиваем дизайн текста (отступы, интервалы и пр.)&&&&&&
%Отступ в первом абзаце раздела
\RequirePackage{indentfirst}
%Точка после номера раздела
\RequirePackage{misccorr}

\RequirePackage{hyperref}
%Тонкое оформление перекрёстных ссылок
\RequirePackage[russian]{cleveref}
\RequirePackage[dvipsnames, table, hyperref]{xcolor}
\RequirePackage{csquotes}
\RequirePackage{hyphenat}
\RequirePackage{titlesec}
\titleformat*{\section}{\normalsize\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize\bfseries}
%%%%%%%%%%%%%%%%%%%%Настройка дизайна страницы%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[
    paper=a6paper,
    includefoot,
    landscape,
    bmargin=.1in,
    tmargin=.5em,
    hmargin=.3in,
    includehead,
    headsep=.5em
]{geometry}
%Изменение ориентации страницы внутри документа
\RequirePackage{changepage}
%Для включения альбомных страниц
\RequirePackage{pdflscape}
%Добавление внешних pdf файлов
\RequirePackage{pdfpages}

%%%%%%%%%%%%%%%%%%%%Обеспечиваем работу с медиа-контентом (с рисунками)%%%%%%%%%%%%%%%%%%%
% Крутой пакет для рисования
\RequirePackage{tikz}
% Подключаем пакет работы с графикой
\RequirePackage{graphicx}

% Пусть к папке с рисунками
\graphicspath{{images/}}

% Можно указывать имя файлов без расширений
% LaTeX будет последовательно подставлять перечисленные
% пока файл не будет найден
\DeclareGraphicsExtensions{.pdf,.png,.jpg}

%%% Возможность использовать окружения типа algorithm внутри фреймов.
%%% Для этого нужно писать
%%% \begin{algorithm}[H]  % вот именно H и включает этот пакет
\RequirePackage{float}

%%%%%%%%%%%%%%%%%%%Обеспечиваем работу с таблицами%%%%%%%%%%%%%%%%%%%
%Хорошие таблицы
\RequirePackage{booktabs}
%Длинные таблицы
\RequirePackage{longtable}
%Предоставляет окружение таблицы со столбцами, которые
%позволяют установить их фиксированную ширину в процентах
%и переносить слова в ячейке
\RequirePackage{tabu}


%%%%%%%%%%%%%%%%%%%%Обеспечиваем оформление алгоритмов и листингов%%%
%Включение в документ листингов
\RequirePackage{listings}

%Окружение для алгоритма
\RequirePackage[%
    ruled,
    vlined,
    algosection,
    linesnumbered,
    titlenumbered
]{algorithm2e}

%Русификация окружения алгоритмов
\SetKwComment{Comment}{/* }{ */}
\SetKwInput{KwData}{Вход}
\SetKwInput{KwData}{Выход}
\SetAlgorithmName{Алгоритм}{алгоритм}{Список алгоритмов}

%Предоставляет команды для написания алгоритма
%в псевдокоде
%\RequirePackage{algorithmic}

% Подстветка синтаксиса
% ВНИМАНИЕ! Требует установки python и пакета pygmentize
% Поэтому по умолчанию пакет закомментирован, чтобы не возникало ошибок компиляции
% \usepackage{minted}

%%решаем проблему с кириллицей в комментариях (в pdflatex) https://tex.stackexchange.com/a/103712
%\lstset{extendedchars=true,keepspaces=true,literate={Ö}{{\"O}}1
%    {Ä}{{\"A}}1
%    {Ü}{{\"U}}1
%    {ß}{{\ss}}1
%    {ü}{{\"u}}1
%    {ä}{{\"a}}1
%    {ö}{{\"o}}1
%    {~}{{\textasciitilde}}1
%    {а}{{\selectfont\char224}}1
%    {б}{{\selectfont\char225}}1
%    {в}{{\selectfont\char226}}1
%    {г}{{\selectfont\char227}}1
%    {д}{{\selectfont\char228}}1
%    {е}{{\selectfont\char229}}1
%    {ё}{{\"e}}1
%    {ж}{{\selectfont\char230}}1
%    {з}{{\selectfont\char231}}1
%    {и}{{\selectfont\char232}}1
%    {й}{{\selectfont\char233}}1
%    {к}{{\selectfont\char234}}1
%    {л}{{\selectfont\char235}}1
%    {м}{{\selectfont\char236}}1
%    {н}{{\selectfont\char237}}1
%    {о}{{\selectfont\char238}}1
%    {п}{{\selectfont\char239}}1
%    {р}{{\selectfont\char240}}1
%    {с}{{\selectfont\char241}}1
%    {т}{{\selectfont\char242}}1
%    {у}{{\selectfont\char243}}1
%    {ф}{{\selectfont\char244}}1
%    {х}{{\selectfont\char245}}1
%    {ц}{{\selectfont\char246}}1
%    {ч}{{\selectfont\char247}}1
%    {ш}{{\selectfont\char248}}1
%    {щ}{{\selectfont\char249}}1
%    {ъ}{{\selectfont\char250}}1
%    {ы}{{\selectfont\char251}}1
%    {ь}{{\selectfont\char252}}1
%    {э}{{\selectfont\char253}}1
%    {ю}{{\selectfont\char254}}1
%    {я}{{\selectfont\char255}}1
%    {А}{{\selectfont\char192}}1
%    {Б}{{\selectfont\char193}}1
%    {В}{{\selectfont\char194}}1
%    {Г}{{\selectfont\char195}}1
%    {Д}{{\selectfont\char196}}1
%    {Е}{{\selectfont\char197}}1
%    {Ё}{{\"E}}1
%    {Ж}{{\selectfont\char198}}1
%    {З}{{\selectfont\char199}}1
%    {И}{{\selectfont\char200}}1
%    {Й}{{\selectfont\char201}}1
%    {К}{{\selectfont\char202}}1
%    {Л}{{\selectfont\char203}}1
%    {М}{{\selectfont\char204}}1
%    {Н}{{\selectfont\char205}}1
%    {О}{{\selectfont\char206}}1
%    {П}{{\selectfont\char207}}1
%    {Р}{{\selectfont\char208}}1
%    {С}{{\selectfont\char209}}1
%    {Т}{{\selectfont\char210}}1
%    {У}{{\selectfont\char211}}1
%    {Ф}{{\selectfont\char212}}1
%    {Х}{{\selectfont\char213}}1
%    {Ц}{{\selectfont\char214}}1
%    {Ч}{{\selectfont\char215}}1
%    {Ш}{{\selectfont\char216}}1
%    {Щ}{{\selectfont\char217}}1
%    {Ъ}{{\selectfont\char218}}1
%    {Ы}{{\selectfont\char219}}1
%    {Ь}{{\selectfont\char220}}1
%    {Э}{{\selectfont\char221}}1
%    {Ю}{{\selectfont\char222}}1
%    {Я}{{\selectfont\char223}}1
%    {і}{{\selectfont\char105}}1
%    {ї}{{\selectfont\char168}}1
%    {є}{{\selectfont\char185}}1
%    {ґ}{{\selectfont\char160}}1
%    {І}{{\selectfont\char73}}1
%    {Ї}{{\selectfont\char136}}1
%    {Є}{{\selectfont\char153}}1
%    {Ґ}{{\selectfont\char128}}1
%}
%% Ширина текста минус ширина надписи 999
%\newlength{\twless}
%\newlength{\lmarg}
%\setlength{\lmarg}{\widthof{999}}   % ширина надписи 999
%\setlength{\twless}{\textwidth-\lmarg}
%\lstset{ %
%%    language=R,                     %  Язык указать здесь, если во всех листингах преимущественно один язык, в результате часть настроек может пойти только для этого языка
%    numbers=left,                   % where to put the line-numbers
%    numberstyle=\fontsize{12pt}{14pt}\selectfont\color{Gray},  % the style that is used for the line-numbers
%    firstnumber=1,                  % в этой и следующей строках задаётся поведение нумерации 5, 10, 15...
%    stepnumber=5,                   % the step between two line-numbers. If it's 1, each line will be numbered
%    numbersep=5pt,                  % how far the line-numbers are from the code
%    backgroundcolor=\color{white},  % choose the background color. You must add \usepackage{color}
%    showspaces=false,               % show spaces adding particular underscores
%    showstringspaces=false,         % underline spaces within strings
%    showtabs=false,                 % show tabs within strings adding particular underscores
%    frame=leftline,                 % adds a frame of different types around the code
%    rulecolor=\color{black},        % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. commens (green here))
%    tabsize=2,                      % sets default tabsize to 2 spaces
%    captionpos=t,                   % sets the caption-position to top
%    breaklines=true,                % sets automatic line breaking
%    breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
%%    title=\lstname,                 % show the filename of files included with \lstinputlisting;
%% also try caption instead of title
%    basicstyle=\fontsize{12pt}{14pt}\selectfont\ttfamily,% the size of the fonts that are used for the code
%%    keywordstyle=\color{blue},      % keyword style
%    commentstyle=\color{ForestGreen}\emph,% comment style
%    stringstyle=\color{Mahogany},   % string literal style
%    escapeinside={\%*}{*)},         % if you want to add a comment within your code
%    morekeywords={*,...},           % if you want to add more keywords to the set
%    inputencoding=utf8,             % кодировка кода
%    xleftmargin={\lmarg},           % Чтобы весь код и полоска с номерами строк была смещена влево, так чтобы цифры не вылезали за пределы текста слева
%}
%
%\renewcommand{\lstlistingname}{Листинг}

%%%%%%%%%%%%%%%%%%%%Оформление библиографии по ГОСТ
\RequirePackage[%
    backend=biber, %подключение пакета biber
    bibstyle=gost-numeric, %подключение одного из четырех главных стилей biblatex-gost
    citestyle=numeric-comp, %подключение стиля
    language=auto, %указание сортировки языков
    sorting=none, %тип сортировки в библиографии
    style=verbose,
    doi=true,
    eprint=false,
    isbn=false,
    dashed=true,
    url=true
]{biblatex}
%\addbibresource{mynotes.bib}

%%%%%%%%%%%%%%%%%%%Полезные команды%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Возможность использовать автонумерацию
\newcounter{index}
\newcommand*{\No}{\noindent\refstepcounter{index}\textnumero~\theindex}
\newcommand*{\Index}{\refstepcounter{index}\theindex}

%%% Русская традиция начертания математических знаков
\renewcommand{\le}{\ensuremath{\leqslant}}
\renewcommand{\leq}{\ensuremath{\leqslant}}
\renewcommand{\ge}{\ensuremath{\geqslant}}
\renewcommand{\geq}{\ensuremath{\geqslant}}
\renewcommand{\emptyset}{\varnothing}

%%% Русская традиция начертания математических функций
\renewcommand{\tan}{\operatorname{tg}}
\renewcommand{\cot}{\operatorname{ctg}}
\renewcommand{\csc}{\operatorname{cosec}}
%%% Русская традиция начертания греческих букв (пакет upgreek)
\renewcommand{\epsilon}{\ensuremath{\upvarepsilon}}   %  русская традиция записи
\renewcommand{\phi}{\ensuremath{\upvarphi}}
\renewcommand{\kappa}{\ensuremath{\varkappa}}
\renewcommand{\alpha}{\ensuremath{\upalpha}}
\renewcommand{\beta}{\ensuremath{\upbeta}}
\renewcommand{\gamma}{\ensuremath{\upgamma}}
\renewcommand{\delta}{\ensuremath{\updelta}}
\renewcommand{\varepsilon}{\ensuremath{\upvarepsilon}}
\renewcommand{\zeta}{\ensuremath{\upzeta}}
\renewcommand{\eta}{\ensuremath{\upeta}}
\renewcommand{\theta}{\ensuremath{\uptheta}}
\renewcommand{\vartheta}{\ensuremath{\upvartheta}}
\renewcommand{\iota}{\ensuremath{\upiota}}
\renewcommand{\kappa}{\ensuremath{\upkappa}}
\renewcommand{\lambda}{\ensuremath{\uplambda}}
\renewcommand{\mu}{\ensuremath{\upmu}}
\renewcommand{\nu}{\ensuremath{\upnu}}
\renewcommand{\xi}{\ensuremath{\upxi}}
\renewcommand{\pi}{\ensuremath{\uppi}}
\renewcommand{\varpi}{\ensuremath{\upvarpi}}
\renewcommand{\rho}{\ensuremath{\uprho}}
\renewcommand{\varrho}{\ensuremath{\upvarrho}}
\renewcommand{\sigma}{\ensuremath{\upsigma}}
\renewcommand{\varsigma}{\ensuremath{\upvarsigma}}
\renewcommand{\tau}{\ensuremath{\uptau}}
\renewcommand{\upsilon}{\ensuremath{\upupsilon}}
\renewcommand{\varphi}{\ensuremath{\upvarphi}}
\renewcommand{\chi}{\ensuremath{\upchi}}
\renewcommand{\psi}{\ensuremath{\uppsi}}
\renewcommand{\omega}{\ensuremath{\upomega}}

%%% operators
\DeclareMathOperator{\supp}{supp}
\DeclareMathOperator{\wt}{wt}
\DeclareMathOperator{\len}{len}
\DeclareMathOperator{\argmin}{argmin}
\DeclareMathOperator{\im}{}
\newcommand{\getsR}{\mathrel{\overset{\$}{\gets}}}
\newcommand\scalemath[2]{\scalebox{#1}{\mbox{\ensuremath{\displaystyle #2}}}}  %%% масштабирование формулы


%%%%%%% Красивое оформление математических окружений
\RequirePackage{thmtools}
\RequirePackage[framemethod=TikZ]{mdframed}
\mdfsetup{skipabove=1em,skipbelow=0em}

%%%% Определения
\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{ForestGreen!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=ForestGreen, backgroundcolor=ForestGreen!5,
    }
]{thmgreenbox}

\theoremstyle{definition}
\declaretheorem[style=thmgreenbox, numberwithin=section, name=Определение]{definition}

%%% Пример

\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{NavyBlue!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=NavyBlue, backgroundcolor=NavyBlue!5,
    }
]{thmbluebox}

\declaretheorem[style=thmbluebox, numberwithin=section, name=Пример]{example}
\declaretheorem[style=thmbluebox, numbered=no, name=Пример]{example*}

%%%%% Замечание

\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{NavyBlue!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=NavyBlue
    }
]{thmblueline}

\declaretheorem[style=thmblueline, numberwithin=section, name=Замечание]{remark}
\declaretheorem[style=thmblueline, numbered=no, name=Замечание]{remark*}

%%%%% Утверждения
\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{RawSienna!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=RawSienna, backgroundcolor=RawSienna!5,
    }
]{thmredbox}

\theoremstyle{plain}
%%%% С нумерацией
\declaretheorem[style=thmredbox, numberwithin=section, name=Утверждение]{proposition}
\declaretheorem[style=thmredbox, numberwithin=section, name=Теорема]{theorem}
\declaretheorem[style=thmredbox, numberwithin=section, name=Лемма]{lemma}
\declaretheorem[style=thmredbox, numberwithin=section, name=Следствие]{corollary}

%%%% Без нумерации
\declaretheorem[style=thmredbox, numbered=no, name=Утверждение]{proposition*}
\declaretheorem[style=thmredbox, numbered=no, name=Теорема]{theorem*}
\declaretheorem[style=thmredbox, numbered=no, name=Лемма]{lemma*}
\declaretheorem[style=thmredbox, numbered=no, name=Следствие]{corollary*}

\declaretheoremstyle[
    headfont=\itshape\sffamily\color{RawSienna!70!black}, bodyfont=\normalfont,
    numbered=no,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=RawSienna, backgroundcolor=RawSienna!1,
    },
    qed=\qedsymbol
]{thmproofbox}

\declaretheorem[style=thmproofbox, name=Доказательство]{replacementproof}
\renewenvironment{proof}[1][\proofname]{\vspace{-10pt}\begin{replacementproof}}{\end{replacementproof}}


%%%%%%%%%%%%%%%%%%%Содержание%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{%
    \tableofcontents
    \newpage
}

%%%%%%%%%%%%%%%%%%%%Печатаем библиографию%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\AtEndDocument{
%    \printbibliography[heading=none]
%}

%%%%%%%%%%%%%%%%%%%%Делаем так, чтобы ссылки печатались сносками%%%%%
\renewcommand{\cite}[1]{\footcite{#1}}

%%%%%%%%%%%%%%%%%%%%Оформление заметки%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} % clear existing header/footer entries
% Place Page X of Y on the right-hand
% side of the footer

\numberwithin{page}{section}
\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
\fancyhead[L]{\slshape\nouppercase{\leftmark}}
\newcommand{\notetags}{}
\fancyhead[R]{%
    \begin{minipage}[t]{0.86\linewidth}
        \begin{flushright}
            \slshape\nouppercase{\tiny{\notetags}}
        \end{flushright}
    \end{minipage}
}

\fancyfoot[R]{стр.~\thepage\hspace{1pt}}
\renewcommand{\headrulewidth}{0pt}

\RequirePackage{currfile}  %% получить имя файла (будет идентификатором)
\RequirePackage{etoolbox}      %% работа со списками

%%%%% Служебная команда для добавления хеш-тега к строке
\newcommand{\addhashtag}[1]{%
    \##1
}

%%%%% Создаём заметку
\newcommand*{\note}[2][\DefaultOpt]{%
    \def\DefaultOpt{#2}%  %% нужно для корректной работы с section
    \section[#1]{#2}
    \label{sec:\currfilebase}%   %%% создаём метку в стиле sec:id, id - фактически имя файла
    \sectionmark{\currfilebase}%   %%% добавляем id заметки в колонтитулы
    \setcounter{page}{1}           %%%% для нумерации страниц каждой заметки с 1
    \renewcommand{\notetags}{}     %%%% обнуляем переменную тегов
}

%%%%% Команда для добавления тегов к заметке
\newcommand{\addtags}[1]{%
    \renewcommand{\notetags}{\forcsvlist\addhashtag{#1}}  %%% фактически добавляем к каждому элементу списка хеш-тег
}

%%%%%% Команда для добавления специального раздела со ссылками на другие заметки
\newcommand*{\seealsomessage}{См.~также}
\newcommand*{\seealsotag}{see-also}

\newcommand*{\seealso}{%
    \subsection{\seealsomessage}
    \label{subsec:\currfilebase:\seealsotag}
}

%%%%%% Полезные команды для создания на основе заметок других документов, например, лекций
\newcommand{\NotesPath}{}
\newcommand{\inputnote}[1]{\input{\NotesPath/#1}}
\newcommand{\setNotesPath}[1]{
    \renewcommand{\NotesPath}{#1}
    \graphicspath{{\NotesPath/images/}}
}
