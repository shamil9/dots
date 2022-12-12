if status is-interactive
    # Commands to run in interactive sessions can go here
end

begin
  set --local BREW_PATH (brew --prefix)
  set --local BREW_BIN $HOME/.linuxbrew/bin
  if test -d $BREW_BIN
    fish_add_path -p $BREW_BIN
  end

  set --local CARGO_BIN $HOME/.cargo/bin
  if test -d $CARGO_BIN
    fish_add_path -p $CARGO_BIN
  end

  set --local AUTOJUMP_PATH $BREW_PATH/share/autojump/autojump.fish
  if test -e $AUTOJUMP_PATH
    source $AUTOJUMP_PATH
  end

  set --local ALIAS_PATH $HOME/.config/aliases
  if test -e $ALIAS_PATH
    source $ALIAS_PATH
  end

  set --local STARSHIP_PATH $HOME/.cargo/bin/starship
  set --local STARSHIP_BREW_PATH $BREW_PATH/bin/starship
  if test -e $STARSHIP_PATH -o -e $STARSHIP_BREW_PATH
    starship init fish | source
  end
end
