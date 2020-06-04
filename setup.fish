#! /bin/fish

set -x

: "export" &&
{
  SCRIPT_DIR=$(cd $(dirname $0); pwd)
}

: "symlink" &&
{
  ln -sf $SCRIPT_DIR/fish/config.fish $HOME/.config/fish/config.fish
  ln -sf $SCRIPT_DIR/fish/fish_variables $HOME/.config/fish/fish_variables
}

: "installing fisher" &&
{
  if not functions -q fisher
      set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
      curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
      fish -c fisher
  end
}
