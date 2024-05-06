# auto setup for ubuntu


**important: run install script as user and not as root. Otherwise the environment variables are not set correct.**

## problems
#### cargo install
-   cargo is not available when installing bob
-   workaround: after installation run the following commands:
    -   ```cargo install --git https://github.com/MordechaiHadad/bob.git```
    -   ```bob use stable```


## notes
#### additional configuration
**should be automated with dotfiles repo later**
-   set custom shortcut for shutter: add new Custom shortcut in settings with command `shutter -s` for shortcut `win-shift-p`

#### vm
-   install enhanced keyboard when using vm ware player (win+l will lock host machine)
-   switch to light mode when using vm ware player to use multiple monitors
-   install imwheel under additional for correct mouse behavior

#### laptop
- configure trackpad behavior and power button behavior

