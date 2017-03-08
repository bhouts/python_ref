%ref.cls: LaTeX class for reference guide
%by: Brian Houts
%aknol: https://www.sharelatex.com/learn/Writing_your_own_class


%Identification
%The file declares itself as a class written with the LATEX2ε syntax.
\NeedsTeXFormat{LaTeX2e}
%sets the LATEX version for the class to work. Additionally, a date can be added within brackets to specify the minimal release date required
\ProvidesClass{ref}[2017/03/06 LaTeX class for reference guides]
%identifies this class as exampleclass and, inside the brackets, the release date and some additional information is included. The date should be in the form YYYY/MM/DD

%Preliminary declarations
%Here the external packages and classes needed are imported. Also, in this part of the file the commands and definitions needed by the declared options are coded.
%The commands in this part either initialize some parameters that latter will be used to manage the options, or import external files.
\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[twocolumn]{article}
%loads the class article with the additional parameter twocolumn. Therefore all the commands in the standard article class will be automatically available in the example class, except that the document will be printed in a two-column format
\RequirePackage[usenames, dvipsnames]{xcolor}
%\RequirePackage is very similar to the well-known \usepackage, adding optional parameters within brackets will also work. The only difference is that the \usepackage can not be used before \documentclass command. It's strongly recommended to use \RequierePackage when writing new classes or packages
\RequirePackage{hyperref} %TOC will be linkable
\hypersetup{
    colorlinks=true, % color the links
    linkcolor=blue, % color links blue
    urlcolor=red, % color URLs red
    linktoc=all % create links for 'all' TOC items
}
\RequirePackage{graphicx}
% This is an example of how a \usepackage{} command should be included. 
\RequirePackage{verbatim}
\RequirePackage{listings}
\definecolor{slcolor}{HTML}{882B21}

%Options
%The class declares and processes the options.

%More declarations
%The main body of the class. Almost everything a class does is defined here.
\lstset{ 
    language=Python, % choose the language of the code
    basicstyle=\fontfamily{pcr}\selectfont\footnotesize\color{white},
    keywordstyle=\color{myblue}, % style for keywords
    numbers=left, % where to put the line-numbers
    numberstyle=\color{myblue}\tiny, % the size of the fonts that are used for the line-numbers     
    backgroundcolor=\color{mygray},
    showspaces=false, % show spaces adding particular underscores
    showstringspaces=false, % underline spaces within strings
    showtabs=false, % show tabs within strings adding particular underscores
    frame=false, % adds a frame around the code
    tabsize=2, % sets default tabsize to 2 spaces
    rulesepcolor=\color{gray},
    %captionpos=b, % sets the caption-position to bottom
    %breaklines=true, % sets automatic line breaking
    %breakatwhitespace=false, 
}

%http://www.december.com/html/spec/colorper.html
\definecolor{mygray}{RGB}{139, 137, 137}
\definecolor{mygreen}{RGB}{0, 255, 0}
\definecolor{myblue}{RGB}{0, 255, 255}
