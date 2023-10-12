# Cheatsheet

This file contains important shortcuts and commands for using this ubuntu
configuration. It includes default keybindings, but also some custom remaps for
i3, tmux and nvim.

## general
#### vm
- install enhanced keyboard when using vm ware player
(win+l will lock host machine)
- switch to light mode when using vm ware player to use multiple monitors

#### laptop
- configure trackpad behavior and power button behavior

## i3
- ```win + shift + o``` cycle workspace between monitors

## tmux
##### shortcuts
- ```ctrl + space``` prefix
- ```prefix + c``` create new window
- ```prefix + 1``` switch to window 1
- ```prefix + alt + l/h``` next/previous window
- ```prefix + :``` enter command
- ```prefix + &``` close window
- ```prefix + %``` split window verticaly
- ```prefix + "``` split window horizontaly
- ```prefix + h/j/k/l``` navigate through panes
- ```prefix + {/}``` switch panes
- ```prefix + q``` show pane numbers
- ```prefix + z``` zoom into pane
- ```prefix + !``` turn pane into window
- ```prefix + x``` close pane
- ```prefix + s``` list sessions
- ```prefix + w``` show sessions with windows (attach with enter)
- ```prefix + I``` install plugins when in tmux.conf
- terminal selection plugin:
    - ```prefix + [``` enter selection mode in terminal
    - ```v``` go into visual mode
    - ```y``` yank selection
    - ```ctrl + v``` toggle line and rectangle select

##### commands
- ```:swap-window -s 2 -t 1``` swap windows
- ```:new``` new session in tmux
- ```tmux new -s my-session``` create session (-s optional)
- ```tmux ls``` list all sessions
- ```tmux attach``` reattach to session (most recent)
- ```tmux attach -t my-session``` reattach to specific session
- ```tmux source ~/.config/tmux/tmux.conf``` source tmux.conf after plugin
installation or config changes

##### [more ...](https://tmuxcheatsheet.com/)

## vim

