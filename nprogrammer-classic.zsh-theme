# Created by nProgramer - Norbert Wagner
# Simple and pretty ZSH theme

# returning errors
return_status() {
   echo "%(?..❌)"
}

# time
current_time() {
   echo "%*"
}

# git configure
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%} git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%})"


# ui
PROMPT='%B%{$fg_bold[green]%}%n%{$reset_color%} %{$fg_bold[blue]%}%2~%{$reset_color%} '
PROMPT+='$(git_prompt_info) %{$fg_bold[green]%}#%{$reset_color%} '
RPROMPT='$(return_status) $(current_time)'

