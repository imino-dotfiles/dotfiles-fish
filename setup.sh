#! /bin/bash

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
