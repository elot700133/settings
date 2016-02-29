#
# ~/.bashrc_common
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
set bell-style none

# common path
# export PATH=$PATH

# 
export EDITOR="vim"
# vim in bash shell
set -o vi

#
#export DISPLAY=localhost:0

# git utilities
#source /usr/share/git/completion/git-prompt.sh

#
source ~/.git-prompt.sh

# 
source ~/.git-completion.bsh

# bach-git-prompt
#GIT_PROMPT_ONLY_IN_REPO=1
#source ~/applications/bash-git-prompt/gitprompt.sh

# prompt
#PS1='\u@\h \w$(__git_ps1 " (%s)")\n\$ '
PS1='$(tput bold)$(tput setaf 2)\u$(tput sgr0)@$(tput bold)$(tput setaf 6)\h$(tput setaf 3) \w$(__git_ps1 " (%s)")$(tput sgr0)\n\$ '
#PS1='[\u@\h \W]\$ '

# History
export HISTIGNORE="ls:ll:cd"
export HISTSIZE=100000
export HISTCONTROL=ignoredups # ignorespace
export HISTTIMEFORMAT="[$(tput setaf 6)%F %T$(tput sgr0)]: " # colorful date

# alias common for all distros
test -f ~/.bashrc_custom && source ~/.bashrc_custom
test -f ~/.bash_alias && source ~/.bash_alias 

print_bach_emblem()
{

echo "  ...........  .... ... ................"
echo "    ......... ...?M.DM. ... ...  .... .."
echo "  .  ...........M  M=.M,.  ........  ..."
echo ".....=. .MN.MMM.M..M .M.MMM.MM..MMM ...."
echo "......MM MM   N    M     +  MM  MM.     "
echo "...... .M 8MMMMMMMMMMMMMMM OM ?MMM      "
echo "......  MM  ..MM.MMM~ MM . ..M. ........"
echo "  .  .  M MM..  .......... M.M..... ...."
echo "  .  .    MMM  .........  MMM .........."
echo "  ....  .   $$ NM...M .7MM$............."
echo "   ... MMMM .. MMM..MMM ... MM ........."
echo "  .  .  M   .....M.M .........M........."
echo "  . ?M..M$M....MM.....MMM.....MMMMM ...."
echo "   M..  M  MM ...~MZMM=... MM ....MZ...."
echo "  I...   MM MM ...MMM ...MMN.MM....ZM..."
echo "..?.MMM .  ...M+MMM MMM.MM .....MM..M..."
echo "   M  7M$ M ..MMM8...MMMM,..?..   .M M.."
echo " MM   M   MM.MMMM ....MMM .MM.M$ MM.MM.."
echo " .M. M. . .MMMM.MM.. MM.MMMM....M...M..."
echo "   M.M  . MMMM...MMMMM....MMM...M .M ..."
echo "    MNMMMM.. MM.. MMZ....MM...$.M  ....."
echo " MM M  M.. M..MMMMM.MM .MM. .M.MZ.MMM..."
echo "   NM       ..MMM.... MMM.....~..MM....."
echo " ..  M.M  .MMM .MMM..MMMMMMM.. MN......."
echo "       ?M   ......MMMM.......M~........."
echo "      MMMM  . MM .MM~M?MM ...MMM........"
echo " ..  .. .MM..M  MM .M. MM ..MM.........."
echo "      .... MMM.... M~ ... MM,..........."
echo "            ..IMM....MMMM7.MM..........."
echo "            ..........M................."
echo "            ..................... ......"

}
