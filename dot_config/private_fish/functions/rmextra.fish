function rmextra --description 'remove all unneeded packages'
  sudo pacman -Qtdq | sudo pacman -Rns -
  sudo pacman -Qqd | sudo pacman -Rsu -
end
