
#!/bin/bash
swayidle -w \
timeout 120 ' swaylock ' \
timeout 180 ' hyprctl dispatch dpms off' \
timeout 5 'if pgrep -x swaylock; then hyprctl dispatch dpms off; fi' resume 'hyprctl dispatch dpms on' \
timeout 600 'systemctl suspend' \
resume ' hyprctl dispatch dpms on' \
before-sleep 'swaylock'



# # For lockscreen
# swayidle -w \
# timeout 2 ' swaylock ' \
# timeout 5 'if pgrep -x swaylock; then hyprctl dispatch dpms off; fi' resume 'hyprctl dispatch dpms on' \
# #timeout 5  'hyprctl dispatch dpms off' \
# timeout 15 'systemctl suspend' \
# resume ' hyprctl dispatch dpms on' \
# before-sleep 'swaylock'

# #  swayidle -w timeout 10 'if pgrep -x swaylock; then hyprctl dispatch dpms off; fi' resume 'hyprctl dispatch dpms on' 
# # # For lockscreen
# # exec-once=swayidle -w timeout 120 'swaylock' timeout 240 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
# # swayidle -w timeout 10 'if pgrep -x swaylock; then hyprctl dispatch dpms off; fi' resume 'hyprctl dispatch dpms on' 

