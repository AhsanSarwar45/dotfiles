function sps --wraps='sudo pacman -Sy' --description 'alias sps=sudo pacman -Sy'
  sudo pacman -Sy $argv
end
