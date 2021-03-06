# 実行時オプションとかショートカットaliasの設定
alias ls='ls -G'
alias grep='grep --color'
alias pass='mono ~/Downloads/KeePass-2.26/KeePass.exe'

# gitコマンドラインの見せ方設定
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# homebrewでインストールしたものが/usr/binより先に読み込まれるようにするための設定
export PATH="/usr/local/bin:$PATH"
