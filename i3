# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
#font pango:monospace 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango:DejaVu Sans Mono 9

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
#bindsym $mod+Shift+Return exec i3-sensible-terminal
#bindsym $mod+Shift+Return exec termite
#bindsym $mod+Shift+Return exec alacritty
#bindsym $mod+Shift+Return exec qterminal
bindsym $mod+Shift+Return exec kitty

# kill focused window
bindsym $mod+Shift+comma kill

# start dmenu (a program launcher)
#bindsym $mod+bracketleft exec dmenu_run
bindsym $mod+bracketleft exec rofi -show run -modi run -location 1 -width 100 -lines 2 -line-margin 0 -line-padding 1 -separator-style none -columns 9 -bw 0 -hide-scrollbar
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.n
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+n split h

# split in vertical orientation
bindsym $mod+b split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+d layout tabbed
bindsym $mod+g layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

set $tag3 "3: www"
set $tag4 "4: mail"
set $tag5 "5: chat"

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace $tag3
bindsym $mod+4 workspace $tag4
bindsym $mod+5 workspace $tag5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 0

bindsym $mod+q workspace q
bindsym $mod+w workspace w
bindsym $mod+e workspace e
bindsym $mod+r workspace r
bindsym $mod+t workspace t
bindsym $mod+y workspace y
bindsym $mod+u workspace u
bindsym $mod+i workspace i
bindsym $mod+o workspace o
bindsym $mod+p workspace p

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace $tag3
bindsym $mod+Shift+4 move container to workspace $tag4
bindsym $mod+Shift+5 move container to workspace $tag5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 0

bindsym $mod+Shift+q move container to workspace q
bindsym $mod+Shift+w move container to workspace w
bindsym $mod+Shift+e move container to workspace e
bindsym $mod+Shift+r move container to workspace r
bindsym $mod+Shift+t move container to workspace t
bindsym $mod+Shift+y move container to workspace y
bindsym $mod+Shift+u move container to workspace u
bindsym $mod+Shift+i move container to workspace i
bindsym $mod+Shift+o move container to workspace o
bindsym $mod+Shift+p move container to workspace p

bindsym $mod+Ctrl+h move workspace to output left
bindsym $mod+Ctrl+j move workspace to output down
bindsym $mod+Ctrl+k move workspace to output up
bindsym $mod+Ctrl+l move workspace to output right

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+v restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+period exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

bindsym XF86AudioRaiseVolume exec pactl set-sink-volume $(pacmd list-sinks |awk '/* index:/{print $3}') +5%
bindsym XF86AudioLowerVolume exec pactl set-sink-volume $(pacmd list-sinks |awk '/* index:/{print $3}') -5%
bindsym XF86AudioMute exec pactl set-sink-mute $(pacmd list-sinks |awk '/* index:/{print $3}') toggle
bindsym XF86KbdBrightnessDown exec brightnessctl set 5%-
bindsym XF86KbdBrightnessUp exec brightnessctl set +5%
bindsym XF86MonBrightnessDown exec brightnessctl set 5%-
bindsym XF86MonBrightnessUp exec brightnessctl set +5%

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym h resize shrink width 10 px or 10 ppt
        bindsym j resize grow height 10 px or 10 ppt
        bindsym k resize shrink height 10 px or 10 ppt
        bindsym l resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+v mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
		position top
        status_command i3status
		colors{
			background #232323
				statusline #DCDCDC
		}
}

new_window pixel 1
# class                 border  backgr. text    indicator child_border
#client.focused          #4c7899 #285577 #ffffff #2e9ef4   #285577
#client.focused_inactive #333333 #5f676a #ffffff #484e50   #5f676a
#client.unfocused        #333333 #222222 #888888 #292d2e   #222222
#client.urgent           #2f343a #900000 #ffffff #900000   #900000
#client.placeholder      #000000 #0c0c0c #ffffff #000000   #0c0c0c
#client.background       #ffffff

exec --no-startup-id nm-applet

client.focused_inactive #333333 #5F676A #ffffff #484e50
client.unfocused        #333333 #424242 #888888 #292d2e
client.urgent           #C10004 #900000 #ffffff #900000

# Lock
bindsym $mod+semicolon exec "i3lock -n -f --color=000000"


# Force assignment of programs
assign [class="^Firefox$"] $tag3
assign [class="^Slack$"] $tag5

