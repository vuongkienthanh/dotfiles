set -x FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
set -x FZF_DEFAULT_OPTS "--border
--color=fg:#e0dbd3,bg:#3f4e57,hl:#9bb1c7
--color=fg+:#4f442c,bg+:#947809,hl+:#5fd7ff
--color=info:#afaf87,prompt:#d7005f,pointer:#5fd7ff
--color=marker:#87ff00
--color=border:#9c9757
"


set -x FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
