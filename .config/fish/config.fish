# Prompt setting
function fish_prompt
  set_color purple; echo -n (basename (pwd))
  set_color brblue; echo -n (git branch  2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \1/')
  set_color brcyan; echo -n " \$ "
  set_color normal;
end

# # rbenv setting for Ruby version management
# status --is-interactive; and source (rbenv init -|psub)

# # pyenv setting for Python version management
# status --is-interactive; and source (pyenv init -|psub)

# # nodenv setting for Node version management
# status --is-interactive; and source (nodenv init -|psub)

# # goenv setting for Go version management
# status --is-interactive; and source (goenv init -|psub)

# # direnv setting
# eval (direnv hook fish)
