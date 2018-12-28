# dotfiles
Synced dotfiles. Peace.

## Usage

### Setting up a new Mac

1. Use link.rb to link relevant files to home folder.
2. To use `custom-scripts`, check path [here](https://github.com/ayushgoel/dotfiles/blob/5c9205a97852b762041d20df1d5079e6bd3e90a1/home/.profile#L5). This should match the folder's location on your system.
3. Install [Homebrew](https://brew.sh/) and run [install-program-list.rb](/install-program-list.rb) to run get the same programs installed that you always had. :)

### Exporting programs from old Mac

Run `./export-program-list.rb` to export lists of `brew`, `brew cask` and `gems`.
