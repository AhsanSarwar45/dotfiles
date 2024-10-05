function spi --wraps='sudo pacman -S' --description 'alias spi=sudo pacman -S'
  sudo pacman -S $argv
end
