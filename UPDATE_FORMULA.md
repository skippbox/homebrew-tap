# How to update formula

To update a formula, the following fields need to be upgraded:

 - `version`
 - `url`
 - `sha256`

All those field are strings.

You can directly update from `/usr/local/Library/Taps/skippbox/`, this will help for the following.

Test the formula installation with:

    $ brew install --debug --verbose $FORMULA_NAME

If the installation goes well, you can test and audit the formula for styling (just to be sure):

    $ brew test $FORMULA_NAME
    $ brew audit --strict --online $FORMULA_NAME

And you are done :)

## Resources

Nice to have resources on hombrew.

 - [Formula Cookbook](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md)
 - [Common Issues](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Common-Issues.md)
 - [Homebrew FAQ](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/FAQ.md)
