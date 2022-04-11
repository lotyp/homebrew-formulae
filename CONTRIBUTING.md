# Contributing

## Proposing an update

Fork the repo:

```bash
git clone git@github.com:lotyp/homebrew-formulae.git
```

Make your change. Verify that your change can be installed by Homebrew:

```bash
brew install <GitHub URL of the raw formula>
```

Push to your fork and [submit a pull request][pr].

[pr]: https://github.com/lotyp/homebrew-formulae/compare/

Wait for feedback. Increase the chance that your pull request is accepted:

* Follow the [style guide][style].
* Write a [good commit message][commit].

[style]: https://github.com/wayofdev/guides/tree/master/style
[commit]: https://www.conventionalcommits.org/en/v1.0.0/

## Reviewing an update

Download the formula target (usually a `.tar.gz` file) and verify the checksum:

```bash
shasum -a 256 <file.tar.gz>
```

Compare the returned hash with the `sha256` field in the formula.

Install the formula locally:

```bash
brew install <GitHub URL of the raw formula>
```
