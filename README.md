# rust-gamedev.github.io

## Contributing Guide

To contribute to the newsletter, please see [CONTRIBUTING].

[CONTRIBUTING]: CONTRIBUTING.md

## Building from Source

The site is built and deployed automatically from the repo (see
[.github/workflows/ci.yml][ci]).

To preview/experiment locally:

1) [Install Zola][zola-get]. Make sure to use 0.19.1, to match [our CI config][ci]!
2) Run `zola serve --drafts` and open the link.

[zola-get]: https://getzola.org/documentation/getting-started/installation
[ci]: https://github.com/rust-gamedev/rust-gamedev.github.io/blob/source/.github/workflows/ci.yml

## License

This project is licensed under either of:

- Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE.txt) or
  <http://www.apache.org/licenses/LICENSE-2.0>)
- MIT license ([LICENSE-MIT](LICENSE-MIT.txt) or
  <http://opensource.org/licenses/MIT>)

With the exception of:

- The [Font Awesome](https://fontawesome.com) social icons, which are used
  under a [Creative Commons Attribution 4.0 International][cc-by-4-0] license
- The [OpenMoji](https://openmoji.org) icons used on the homepage,
  which are used under
  a [Creative Commons Attribution-ShareAlike 4.0 International][cc-by-sa-4-0] license

[cc-by-4-0]: https://creativecommons.org/licenses/by/4.0
[cc-by-sa-4-0]: https://creativecommons.org/licenses/by-sa/4.0
