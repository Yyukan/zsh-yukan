# Mac Setup

## Color scheme
https://ethanschoonover.com/solarized/

``` 
$ cd vim-colors-solarized/colors
$ mv solarized.vim ~/.vim/colors/
```

## Fonts
https://github.com/powerline/fonts/blob/master/UbuntuMono/Ubuntu%20Mono%20derivative%20Powerline.ttf

## ZSh
```
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
https://github.com/Yyukan/zsh-yukan/blob/master/zshrc

## Vim
https://github.com/Yyukan/vim-yyukan

## Brew
```
zsh zsh-completions zsh-syntax-highlighting
midnight-commander fzf tmux           
scala sbt bloop mill ammonite-repl coursier giter8                  
ifstat telnet htop watch wget jq httpie
coreutils        
kubectx kubernetes-cli
maven gradle 
elasticsearch kibana
cassandra
kafka zookeeper
postgresql
sqlite
```
## Tmux

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
https://github.com/Yyukan/zsh-yukan/blob/master/tmux.conf into ~/.tmux.conf

## iTerm2
```
Profiles -> Colors -> Color presets... -> Solorized Dark 
Foreground - 70% gray
Background - 10% gray 

Profiles -> Colors -> Brighten bold text (Uncheck)
Profiles -> Text -> Font -> Ubuntu mono derivative Powerline -> Regular - 16
Profiles -> Text -> Text Rendering -> Draw bold text in bright colors (Check)
Profiles -> PROFILE -> Command > Send text at start
tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}
```

## Java
```
brew install jenv
brew install java
brew install AdoptOpenJDK/openjdk/adoptopenjdk{11,14}
/usr/libexec/java_home -V

jenv add /Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home/
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home/

jenv versions
jenv global 11
```


