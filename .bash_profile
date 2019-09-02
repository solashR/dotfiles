# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
source ~/.git-completion.bash

##
# Your previous /Users/rsolash/.bash_profile file was backed up as /Users/rsolash/.bash_profile.macports-saved_2014-06-22_at_18:32:23
##

# MacPorts Installer addition on 2014-06-22_at_18:32:23: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/Users/rsolash/Library/Python/2.7/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/rsolash/.bash_profile file was backed up as /Users/rsolash/.bash_profile.macports-saved_2014-11-22_at_01:58:51
##

# MacPorts Installer addition on 2014-11-22_at_01:58:51: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/go/
export PATH=/usr/local/Cellar/go/1.4.1/libexec/bin/:${PATH}

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.4.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

export PYTHONSTARTUP=${HOME}/pystartup

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/rsolash/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/rsolash/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/rsolash/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/rsolash/Downloads/google-cloud-sdk/completion.bash.inc'
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rsolash/.sdkman"
[[ -s "/Users/rsolash/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rsolash/.sdkman/bin/sdkman-init.sh"
