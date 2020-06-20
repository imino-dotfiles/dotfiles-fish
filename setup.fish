#! /bin/fish

: "export" &&
{
  SCRIPT_DIR=$(cd $(dirname $0); pwd)
}

: "symlink" &&
{
  ln -sf $SCRIPT_DIR/fish/fish $HOME/.config/
}
