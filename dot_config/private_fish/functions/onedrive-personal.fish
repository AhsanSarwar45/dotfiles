function onedrive-personal --description 'Mount onedrive-personal'
  rclone --vfs-cache-mode writes mount "OneDrive Personal":  /home/ahsan/data/onedrive-personal
        
end
