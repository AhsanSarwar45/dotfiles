function fish-config --wraps='nvim ~/.config/fish/config.fish' --description 'alias fish-config=nvim ~/.config/fish/config.fish'
  nvim ~/.config/fish/config.fish $argv
        
end
