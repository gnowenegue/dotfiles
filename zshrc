#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias ll='ls -al'
alias brewbrew='brew update; brew upgrade; brew doctor;'

export FE_DIR="/Users/eugenewong/Documents/Projects/Frontend/singapore"
alias startfront='cd $FE_DIR; runfront;'
alias runfront='npm start;'

alias startfrontgulp='cd $FE_DIR; runfrontgulp;'
alias runfrontgulp='gulp clean-public; gulp;'

export MW_DIR="/Users/eugenewong/Documents/Projects/Middleware/mw-myaxa-sg"
alias startmw='cd $MW_DIR; runmw;'
alias runmw='location=local npm run start-dev;'

alias startapifactory='cd /Users/eugenewong/Documents/Projects/Middleware/myaxa-apifactory; runapifactory;'
alias runapifactory='npm start;'

alias startapifactorytools='cd /Users/eugenewong/Documents/Projects/Middleware/myaxa-apifactory-tools/local-dev-stack; vagrant up; eval "$(docker-machine env api-factory)";'

alias startapifactorystack='cd /Users/eugenewong/Documents/Projects/Middleware/myaxa-apifactory-stack; runapifactorystack;'
alias runapifactorystack='docker-machine start api-factory; docker-machine ip api-factory; eval $(docker-machine env api-factory);'

alias workapps='open -a Safari; open -a Evernote; open -a Wunderlist; open -a Sublime\ Text; open -a SourceTree; open -a Postman; open -a Spark; open -a Spotify'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" != "N/A" ] && [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm install
    fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "Reverting to nvm default version"
        nvm use default
    fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

export NVM_DIR="/Users/eugenewong/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
