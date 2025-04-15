# /etc/skel/.bashrc
if [[ $- != *i* ]]; then
  return
fi

export LANG="en_US.utf8"
export LC_COLLATE="C.utf8"
export LC_ALL="en_US.utf8"
export WEBKIT_DISABLE_DMABUF_RENDERER=1
export DRI_PRIME=1
export WINEPREFIX="$HOME\.wine"
alias cat="bat --theme=gruvbox-dark"
alias cls="clear"
alias ls='lsd -lg1F --group-directories-first'
alias osrs='~/Games/bolt-launcher/bolt > /dev/null 2>&1 &'
alias rundeepseek="ollama run deepseek-r1:7b"
alias technic='java -jar ~/Games/technic/TechnicLauncher.jar'
alias xiphos='WEBKIT_DISABLE_DMABUF_RENDERER=1 xiphos &'
PS1='\[\e[32m\]┌──(\[\e[94;1m\]\u\[\e[94m\]@\[\e[94m\]\h\[\e[0;32m\])-[\[\e[40;40;40;1m\]\w\[\e[0;32m\]] [\[\e[32m\]$?\[\e[32m\]]\n\[\e[32m\]╰─\[\e[94;1m\]\$\[\e[0m\]'
eval "$(fzf --bash)"
eval "$(zoxide init bash)"
