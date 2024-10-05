function onedrive-lums --description 'Mount onedrive-lums'
  rclone --vfs-cache-mode writes mount "OneDrive LUMS":  /home/ahsan/data/onedrive-lums
        
end
