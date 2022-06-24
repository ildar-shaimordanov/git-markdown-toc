<!-- toc-begin -->
# Table of Content
* [NAME](#name)
* [SYNOPSIS](#synopsis)
* [DESCRIPTION](#description)
  * [Old-style markers](#old-style-markers)
* [OPTIONS](#options)
* [SEE ALSO](#see-also)
  * [Syntax specification](#syntax-specification)
  * [Perl implementations](#perl-implementations)
  * [Some other implementations](#some-other-implementations)
* [AUTHORS](#authors)
* [COPYRIGHT](#copyright)
<!-- toc-end -->

# NAME

git-md-toc - generate the table of content from the Markdown file(s)

# SYNOPSIS

    git-md-toc [OPTIONS]

# DESCRIPTION

Read an input and generate the table of content (TOC) based on the
markup of the file which is assumed Markdown formatted. The outcome is
also formatted as Markdown.

The following HTML comments are recognized in a special way and handled
as the markers to insert new TOC or update existing one.

- `<!-- toc -->`

    is used to point the place in the document for putting a new TOC.

- `<!-- toc-begin -->`, `<!-- toc-end -->`

    are used to point the beginning and end of the existing TOC.

Be noticed that these markers themselves must be sticky to the left edge
of the lines where they are situated. This rule doesn't spread on the
content within.

The updated TOC is always ended with double new line to separate from
the further text below. On the same reason, if the TOC is preceded with
some text above, the double new line is prepending the TOC.

## Old-style markers

Early, before 2022, another set of markers was used: `md-toc`,
`md-toc-begin` and `md-toc-end`.

Currently they are considered obsolete and not recommended in use. However
they are still supported but replaced with the newer ones when TOC
is updated.

Be noticed that you shouldn't mix old and new paired markers to designate
the beginning and end of the same TOC.

# OPTIONS

- **-h**, **--help**

    Print this help and exit.

- **-t** _TITLE_, **--title**=_TITLE_

    Specify the title for the TOC. If `TITLE` is not specified or it's
    empty value, the default value `Table of Content` is assumed.

- **-l** _LEVEL_, **--level**=_LEVEL_

    Set the header level used for the TOC title. Available values are `1`
    to `6`. The default value is `1`.

- **-d** _DEPTH_, **--depth**=_DEPTH_

    Use `DEPTH` to control how many levels of headers to include in the
    TOC. Available values are `1` to `6`. Defaults to `6`.

- **-T** _TEXT\_ENCODE,TITLE\_ENCODE_, **--transcode**=_TEXT\_ENCODE,TITLE\_ENCODE_

    Point encodings for the file content or the TOC title. It should
    be specified explicitly to correctly parse inputs in UTF-8 or other
    encodings.

    The first value tells that both text and TOC title come in the particular
    encoding.

    The second value specifies encoding for the TOC title only. It can be
    useful in DOS sessions for setting another encoding for the TOC title
    declared in the command line. For example, to correctly set the TOC title
    in Cyrillic in UTF8 encoded files I had to separately declare `cp1251`
    for the TOC title encoding.

- **--title-transcode**=_TITLE\_ENCODE_

    Point another encoding for the TOC title. It works similarly as
    `--transcode=,TITLE_ENCODE` (note the comma in the option).

    This option is obsolete and kept for compatibility reasons. Use
    **-T**/**--transcode** instead.

- **-u**, **--update**

    Update the file with the new table of content. It works even when reading
    from STDIN. In this case the outcome will be printed to STDOUT.

- **-c**, **--create-before**
- **-C**, **--create-after**

    Create and add the TOCs before and/or after the input.

    In combination with the **-u**/**--update** option they allow to create and
    insert the TOCs from the scratch even if no any TOC marker is specified.

- **--folding**=_collapse|expand_

    Make TOC foldable. Two values `collapse` and `expand` are enabled.

    When the document has many sections and TOC becomes correspondingly
    quite big, it can be more friendly to make TOC foldable.

# SEE ALSO

## Syntax specification

- [https://daringfireball.net/projects/markdown/](https://daringfireball.net/projects/markdown/)

## Perl implementations

- [https://metacpan.org/pod/Text::Markdown](https://metacpan.org/pod/Text::Markdown)
- [https://metacpan.org/pod/Text::MultiMarkdown](https://metacpan.org/pod/Text::MultiMarkdown)
- [https://metacpan.org/pod/Markdown::TOC](https://metacpan.org/pod/Markdown::TOC)

## Some other implementations

- [https://github.com/ekalinin/github-markdown-toc](https://github.com/ekalinin/github-markdown-toc)
- [https://github.com/ekalinin/github-markdown-toc.go](https://github.com/ekalinin/github-markdown-toc.go)
- [https://github.com/frnmst/md-toc](https://github.com/frnmst/md-toc)
- [https://github.com/eGavr/toc-md](https://github.com/eGavr/toc-md)
- [https://github.com/jonschlinkert/markdown-toc](https://github.com/jonschlinkert/markdown-toc)

# AUTHORS

Ildar Shaimordanov <`ildar.shaimordanov@gmail.com`>

# COPYRIGHT

Copyright (c) 2019-2022 Ildar Shaimordanov. All rights reserved.

    MIT License
