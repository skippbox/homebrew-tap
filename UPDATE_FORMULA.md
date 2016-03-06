# How to update formula

To update a formula, the following fields need to be upgraded:

 - `version`
 - `url`
 - `sha256`

All those fields are strings.

You can directly update from `/usr/local/Library/Taps/skippbox/`, this will help for debugging install, testing, and audit.

Test the formula installation with:

    $ brew install --debug --verbose $FORMULA_NAME

If the installation goes well, you can test and audit the formula for styling (just to be sure):

    $ brew test $FORMULA_NAME
    $ brew audit --strict --online $FORMULA_NAME

And you are done :)

## OS X application bundle (.app)

Those applications are rejected in Homebrew, a specific project exist
for that: [Homebrew Cask](https://github.com/caskroom/homebrew-cask)

The formulae are sensibly the same, but you need to put those in the `Casks`
folder and use the `brew cask` command:

    $ brew cask install skippbox

## Resources

Nice to have resources on hombrew.

 - [Formula Cookbook](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md)
 - [Common Issues](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Common-Issues.md)
 - [Homebrew FAQ](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/FAQ.md)
 - [Homebrew Cask contribution guide](https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md)
