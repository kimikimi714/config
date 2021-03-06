if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# 入力したコマンドが存在せず、かつディレクトリ名と一致するなら、そのディレクトリに移動
setopt auto_cd

# cdした先のディレクトリをディレクトリスタックに追加する
setopt auto_pushd

# pushdしたときに、ディレクトリが既にスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups

# 入力したコマンドが既にコマンド履歴に含まれる場合、履歴が古い方のコマンドを削除する
setopt hist_ignore_all_dups

# コマンドがスペースで始まる場合、コマンド履歴に追加しない
# 例： <Space>echo hello と入力
setopt hist_ignore_space

function repo {
  local dir="$( ghq list -p | peco )"
  if [ ! -z "$dir" ] ; then
    cd "$dir"
  fi
}

# 実行時オプションとかショートカットaliasの設定
alias ls='gls --color -F'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kimikimi714/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kimikimi714/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kimikimi714/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kimikimi714/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
