## Alias
alias rm='rmtrash'
alias gc='git branch | peco | xargs git checkout'

## Ruby (rbenv)
status --is-interactive; and source (rbenv init -|psub)
## Python (pyenv)
status --is-interactive; and source (pyenv init -|psub)
## Node.js (nodenv)
status --is-interactive; and source (nodenv init -|psub)
## Golang (goenv)
status --is-interactive; and source (goenv init -|psub)
## direnv
eval (direnv hook fish)

## Original Prompt
function fish_prompt
  set_color purple; echo -n (basename (pwd))
  set_color brblue; echo -n (git branch  2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \1/')
  set_color brcyan; echo -n " \$ "
  set_color normal;
end
