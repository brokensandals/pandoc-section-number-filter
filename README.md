# Overview

This is a [Pandoc Lua filter](https://pandoc.org/lua-filters.html) that adds numbering to all headers in a document. You would use this when you want section numbering similar to what you get by default for LaTeX output, but with other output formats. See [test/in/main.md](test/in/main.md) for example input and [test/expected/main.html](test/expected/main.html) for what the output looks like.

# Usage

Download the [pandoc-section-number-filter.lua](pandoc-section-number-filter.lua) file and use `--lua-filter path/to/pandoc-section-number-filter.lua` when when invoking pandoc.

# Testing

Some test pandoc markdown files are in [test/in](test/in) and the corresponding outputs are in [test/expected](test/expected).

There is a script that will run pandoc on all the test files and diff the outputs against the expected outputs. To ensure you're using the intended version of pandoc, I suggest running them in Docker. If you have Docker installed and are on Mac/Linux, just run `./test/docker-test.sh` to build the image and run the tests.

# License

See the [LICENSE](LICENSE) file.
