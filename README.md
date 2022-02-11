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

    is used to point the place in the document where to put a new TOC.

- `<!-- toc-begin -->`, `<!-- toc-end -->`

    are used to point the beginning and end of the existing TOC.

Be noticed that these markers themselves must be sticky to the left edge
of the lines where they are situated. This rule doesn't spread on the
content within.

The updated TOC is always ended with double new line to separate from
the further text below. On the same reason, if the TOC is preceded with
some text above, the double new line is prepended the TOC.

## Old-style markers

Early, before 2022, another set of markers was used: `md-toc`, `md-toc-begin` and `md-toc-end`.

Currently they are considered obsolete and not recommended in use. However they are still supported but replaced with the newly ones when TOC is updated.

Be noticed that you shouldn't mix old and new paired markers to designate the beginning and end of a the same TOC.

# OPTIONS

- **-h**, **--help**

    Print this help and exit.

- **-t** _TITLE_, **--title**=_TITLE_

    Set the title for the table of content. If not specified, the default
    value `Table of Content` is assumed.

- **-l** _LEVEL_, **--level**=_LEVEL_

    Set the header level used for the TOC title. Available values are `1`
    to `6`. The default value is `1`.

- **-d** _DEPTH_, **--depth**=_DEPTH_

    Use `DEPTH` to control how many levels of headers to include in the
    TOC. Available values are `1` to `6`. Defaults to `6`.

- **-T** _ENCODE_, **--transcode**=_ENCODE_

    Apply another encoding to each file. It should be specified explicitly to
    parse inputs in UTF-8 or other encodings.

- **--title-transcode**=_ENCODE_

    Apply another encoding to the title. If specified, it overwrites the
    encoding specified with **-T**. It can be useful in DOS sessions for
    setting another encoding for the title declared in the command line.

    For example, to correctly set the title in Cyrillic in UTF8 encoded
    files I needed to declare `cp1251` for the title encoding.

- **-u**, **--update**

    Update the file with the new table of content. It works even when reading
    from STDIN. In this case the outcome will be printed to STDOUT.

- **-c**, **--create-before**
- **-C**, **--create-after**

    Create and add the TOCs before and/or after the input.

    Together the **-u**/**--update** option they allow to create and insert
    the TOCs from the scratch even if no any TOC markers not specified.

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
