function execall --description 'Set all scripts as executable'
  find . -type f -iname "*.sh" -exec chmod +x {} \;
end
