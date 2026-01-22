#!/usr/bin/env bash

set -e

if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  . "$(code --locate-shell-integration-path zsh)"
  echo -n "✅ OK vscode-shell "
else
  echo -n "⚠  skipping vscode-shell"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
echo -n "✅ OK nvm "

export PNPM_HOME="/home/logic/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
echo -n "✅ OK pnpm "

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
echo -n "✅ OK pyenv "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/logic/miniconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/home/logic/miniconda3/etc/profile.d/conda.sh" ]; then
    . "/home/logic/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="/home/logic/miniconda3/bin:$PATH"
  fi
fi
unset __conda_setup
echo -n "✅ OK conda "
# <<< conda initialize <<<

# poetry
export PATH="$HOME/.local/bin:$PATH"
echo -n "✅ OK poetry "
# poetry end

# init uv
. "$HOME/.local/bin/env"
echo -n "✅ OK uv "

# opencode
export PATH="$HOME/.opencode/bin:$PATH"
echo -n "✅ OK opencode "
