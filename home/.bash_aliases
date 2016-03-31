alias gs='git status'
alias gd='git diff'
alias gca='git checkout -- .'

alias pi='pod install --no-repo-update'

alias clean_iphone_simulator_plist='rm ~/Library/Preferences/com.apple.iphonesimulator.plist'

alias postgres-start-default='postgres -D /usr/local/var/postgres'

alias serve-ayushgoel-github-io='bundle exec jekyll serve'

alias clean-all-xcode-plugins='rm -rf ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/'

alias fix-my-docker='docker-machine restart default;eval $(docker-machine env default)'

alias youtube-dl-mp3='youtube-dl --extract-audio --audio-format mp3 --embed-thumbnail $1'

alias gem-uninstall-all='gem list --no-version | xargs gem uninstall -aIx'
