# Critical Role by Script

A small set of tools that together allows querying for lines across all of
critical role's transcripts.

Prerequisites:

* All of a season (or multiple seasons') transcripts, available from
[criticaltranscripts](http://critroletranscript.com/). Place them in a local
directory, then set its path as environment variable `CRITICAL_ROLE_PATH` by
adding, for example, `export CRITICAL_ROLE_PATH="/home/me/Documents/Critrole"`
into your shell rc file.

* [Ag](https://github.com/ggreer/the_silver_searcher),
[Bat](https://github.com/sharkdp/bat) and 
[FZF](https://github.com/junegunn/fzf) should be on your Path.

* Source or incorporate the `critical_role_by_script.zsh` shell script into your
rc file.

* Add the `search_youtube` binary to your path. It requires the `beautifulsoup4`
and `requests` python packages, installable via pip3.
