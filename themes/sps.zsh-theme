# SPS - created by Scott Stewart
# RBENV & Time prompt 
# Hacked from the Crunch theme. Thanks, Steve Eley.
# Initially hacked from the Dallas theme. Thanks, Dallas Reedy.
#
# This theme assumes you do most of your oh-my-zsh'ed "colorful" work at a single machine, 
# and eschews the standard space-consuming user and hostname info.  Instead, only the 
# things that vary in my own workflow are shown:
#
# * The time (not the date)
# * The RBENV version
# * The current directory
# * The Git branch and its 'dirty' state
# 
# Colors are at the top so you can mess with those separately if you like.

SPS_BRACKET_COLOR="%{$fg[white]%}"
SPS_TIME_COLOR="%{$fg[white]%}"
SPS_DIR_COLOR="%{$fg[green]%}"
SPS_GIT_BRANCH_COLOR="%{$fg[blue]%}"
SPS_GIT_CLEAN_COLOR="%{$fg[green]%}"
SPS_GIT_DIRTY_COLOR="%{$fg[red]%}"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$SPS_BRACKET_COLOR($SPS_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX="$SPS_BRACKET_COLOR)"
ZSH_THEME_GIT_PROMPT_CLEAN=" $SPS_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $SPS_GIT_DIRTY_COLOR✗"


# Our elements:
SPS_RBENV_RUBY='$SPS_BRACKET_COLOR $(rbenv version-name)%{$reset_color%}'
SPS_TIME_="$SPS_BRACKET_COLOR$SPS_TIME_COLOR%T${SPS_RBENV_RUBY}$SPS_BRACKET_COLOR %{$reset_color%}"
SPS_DIR_="$SPS_DIR_COLOR%~\$(git_prompt_info) "
SPS_PROMPT="$SPS_BRACKET_COLOR➭ "

# Put it all together!
PROMPT="$SPS_TIME_$SPS_DIR_$SPS_PROMPT%{$reset_color%}"
