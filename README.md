# dotfiles
Synced dotfiles. Peace.

## Usage

### Setting up a new Mac

1. Install [Homebrew](https://brew.sh/).
1. Install zsh
1. Use link.rb to link relevant files to home folder.
1. To use `custom-scripts`, check path [here](https://github.com/ayushgoel/dotfiles/blob/5c9205a97852b762041d20df1d5079e6bd3e90a1/home/.profile#L5).
This should match the folder's location on your system.
1. Install oh-my-zsh.
1. Install Zsh theme [Powerlevel10k](https://github.com/romkatv/powerlevel10k).
1. Install  and run [install-program-list.rb](/install-program-list.rb) to run get the same programs installed that you always had. :)

### Exporting programs from old Mac

Run `./export-program-list.rb` to export lists of `brew`, `brew cask` and `gems`.
