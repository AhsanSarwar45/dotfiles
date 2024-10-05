function spu --wraps='sudo pacman -Syu' --description 'alias spi=sudo pacman -Syu'
  sudo pacman -Syu $argv
end
