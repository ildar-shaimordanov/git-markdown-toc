# git-markdown-toc

generate the table of content from the Markdown file(s)

<!-- md-toc-begin -->
# Table of Content
* [git-markdown-toc](#git-markdown-toc)
* [NAME](#name)
* [SYNOPSIS](#synopsis)
* [DESCRIPTION](#description)
* [OPTIONS](#options)
* [SEE ALSO](#see-also)
  * [Syntax specification](#syntax-specification)
  * [Perl implementations](#perl-implementations)
  * [Some other implementations](#some-other-implementations)
<!-- md-toc-end -->

# NAME

`git-md-toc` - generate the table of content from the Markdown file(s)

# SYNOPSIS

```
git-md-toc [OPTIONS]
```

# DESCRIPTION

Read and input and generate the table of content (TOC) based on the
markup of the file which is assumed Markdown formatted. The outcome is
also formatted as Markdown.

If no file specified, the file `README.md` is assumed.

The following HTML comments are recognized in a special way and handled
as the markers to insert new TOC or update existing one.

* `<!-- md-toc -->`
  is used to point the place in the document where to put a new TOC.
* `<!-- md-toc-begin -->`, `<!-- md-toc-end -->`
  are used to point the beginning and end of the existing TOC.

Be noticed that these markers themselves must be sticky to the left edge
of the lines where they are situated. This rule doesn't spread on the
content within.

The updated TOC is always ended with double new line to separate from
the further text below. On the same reason, if the TOC is preceded with
some text above, the double new line is prepended the TOC.

# OPTIONS

* `-h`, `--help`
  Print this help and exit.

* `-t TITLE`, `--title=TITLE`
  Set the title for the table of content. If not specified, the
  default value `Table of Content` is assumed.

* `-l LEVEL`, `--level=LEVEL`
  Set the header level used for the TOC title. Available values are `1`
  to `6`. The default value is `1`.

* `-T ENCODE`, `--transcode=ENCODE`
  Apply another encoding to each file. It should be specified explicitly to
  parse inputs in UTF-8 or other encodings.

* `--title-transcode=ENCODE`
  Apply another encoding to the title. If specified, it overwrites the
  encoding specified with `-T`. It can be useful in DOS sessions for
  setting another encoding for the title declared in the command line.

  For example, to correctly set the title in Cyrillic in UTF8 encoded
  files I needed to declare `cp1251` for the title encoding.

* `-u`, `--update`
  Update the file with the new table of content. It works even when reading
  from STDIN. In this case the outcome will be printed to STDOUT.

# SEE ALSO

## Syntax specification

* https://daringfireball.net/projects/markdown

## Perl implementations

* https://metacpan.org/pod/Text::Markdown
* https://metacpan.org/pod/Text::MultiMarkdown
* https://metacpan.org/pod/Markdown::TOC

## Some other implementations

* https://github.com/ekalinin/github-markdown-toc
* https://github.com/ekalinin/github-markdown-toc.go
* https://github.com/frnmst/md-toc
* https://github.com/eGavr/toc-md
