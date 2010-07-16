<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{lang}" dir="{langdirection}">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset={charset}" />
        <title>{title}</title>
        <meta name="description" content="{slogan}" />
        <meta name="keywords" content="{keywords}" />
        <meta http-equiv="X-UA-Compatible" content="chrome=1" />
        {pageaddvar name="stylesheet" value="$stylepath/fluid960gs/reset.css"}
        {pageaddvar name="stylesheet" value="$stylepath/fluid960gs/$layout.css"}
        {pageaddvar name="stylesheet" value="$stylepath/style.css"}
        {browserhack condition="if IE 6" assign="ieconditional"}<link rel="stylesheet" type="text/css" href="{$stylepath}/fluid960gs/ie6.css" media="screen" />{/browserhack}
        {pageaddvar name='rawtext' value=$ieconditional}
        {browserhack condition="if IE 7" assign="ieconditional"}<link rel="stylesheet" type="text/css" href="{$stylepath}/fluid960gs/ie.css" media="screen" />{/browserhack}
        {pageaddvar name='rawtext' value=$ieconditional}
    </head>
    <body>

        <div id="theme_page_container" class="container_16">
            <div id="theme_header">
                <h1 class="title"><a href="{homepage}">{sitename}</a></h1>
                <h2 class="slogan">{slogan}</h2>
            </div>