## Alias
alias rm='rmtrash'
alias gc='git branch | peco | xargs git checkout'

## Original Prompt
function fish_prompt
  set_color purple; echo -n (basename (pwd))
  set_color brblue; echo -n (git branch  2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \1/')
  set_color brcyan; echo -n " \$ "
  set_color normal;
end
