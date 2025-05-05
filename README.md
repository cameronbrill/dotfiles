# prerequisites

* [install fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#installation)
* [install mise](https://mise.jdx.dev/getting-started.html#installing-mise-cli)
* [install zsh and make it your default shell](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default)
* seed `~/.zshenv`:

```
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="vim"
export VISUAL="vim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

source -- "$ZDOTDIR"/.zshenv
```

# usage

* run `zsh`
* run `mise install`
* re-run `zsh`
