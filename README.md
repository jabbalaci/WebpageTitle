# Webpage Title

Extracts the title of a webpage and copies it
to the clipboard in Markdown format.

## Example

```console
$ title
Enter URL: https://nim-lang.org/
Nim Programming Language

[Nim Programming Language](https://nim-lang.org/)
^ this line was copied to the clipboard
---
Enter URL: ^C
bye
```

Quit with Ctrl+C.

The Markdown-formatted title is copied to the clipboard,
thus you can paste it easily somewhere else.

## Compilation

You must have the [Nim](https://nim-lang.org/) compiler.
Then, issue the one of the following commands:

```console
# debug mode:
$ make c

# release mode:
$ make rel
```

## Supported Platforms

It was tested under **Linux** and **Windows**. Under Linux
you must have the command `xsel` (install it with your
package manager).

I also added **MacOS** support, but I couldn't try it.
Please send me a feedback if it works under Mac.
Under Mac you must have the programs `pbcopy` and
`pbpaste`.
