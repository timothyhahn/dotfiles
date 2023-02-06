export EDITOR="nvim"
source ~/.aliases
source $(brew --prefix asdf)/asdf.sh
eval "$(ssh-agent)"

clear
archey -o
export PYCURL_SSL_LIBRARY=openssl
export LD_LIBRARY_PATH=/usr/local/opt/openssl@1.1/lib:"${LD_LIBRARY_PATH}"
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl@1.1/lib
export CPATH=/usr/local/opt/openssl@1.1/include:"${CPATH}"
export PKG_CONFIG_PATH=/usr/local/opt/openssl@1.1/lib/pkgconfig:"${PKG_CONFIG_PATH}"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export HOSTNAME=timhahn.local

export ANDROID_SDK_ROOT="/Users/thahn/Library/Android/sdk"

export PATH="$HOME/.poetry/bin:$PATH"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source "$HOME/.cargo/env"
