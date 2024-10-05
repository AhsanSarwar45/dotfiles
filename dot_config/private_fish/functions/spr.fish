function spr --wraps='sudo pacman -R' --description 'alias spr=sudo pacman -R'
  sudo pacman -R $argv
end
