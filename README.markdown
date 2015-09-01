# skim2md

Script to export all Skim notes in a Markdown document.

This script, when called from an open Skim document, generates a text file with all the notes. Highlights are treated as quotes and so are preceded with `>`. Text and anchored notes are copied verbatim. The formatted output is something like:

	Page 1:
	> <highlight on page 1>

	Page 2:
	> <highlight on page 2>

	Page 10:
	<Note on page 10>

	...

A [Pandoc YAML metadata block](http://pandoc.org/README.html#pandocs-markdown) is prepended to the document. The title is taken from the PDF file name, with `Notes ` prepended. This is also used for the Markdown file name, which also has a [zettel ID](http://zettelkasten.de/posts/) in the front. For instance, a PDF named "AppleScript Guide" will generate a file called "20150901084420 Notes AppleScript Guide.md". The digits represent a time stamp in a format `YYYYMMDDhhmmss`.

Right now, to modify any of these settings, you would have to modify the script itself, which is quite readable.

To mantain a version to be tracked in a dedicated folder and "install" the script, clone this repository type `make install` (assuming you have it installed); all it does is to compile the script and place the compiled version at `~/Library/Scripts/Applications/Skim`. If you wish, you can just drop the text script in this folder.

For accessing the scripts, I like [FastScripts](https://red-sweater.com/fastscripts/). You can also create a service in Automator, or use a macro or launcher program.
