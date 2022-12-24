if status is-interactive
    # Commands to run in interactive sessions can go here
end

begin
    set --local CARGO_BIN $HOME/.cargo/bin
    if test -d $CARGO_BIN
        fish_add_path -p $CARGO_BIN
    end

    set --local STARSHIP_LOADED 0
    set --local STARSHIP_PATH $CARGO_BIN/starship
    if test -e $STARSHIP_PATH -a "$STARSHIP_LOADED" = 0
        starship init fish | source
        set STARSHIP_LOADED 1
    end

    if type -q brew
        set --local BREW_PATH (brew --prefix)
        set --local BREW_BIN $BREW_PATH/bin

        if test -d $BREW_BIN
            fish_add_path -p $BREW_BIN
        end


        if type -q direnv
            direnv hook fish | source
        end

        set --local AUTOJUMP_PATH $BREW_PATH/share/autojump/autojump.fish
        if test -e $AUTOJUMP_PATH
            source $AUTOJUMP_PATH
        end

        set --local STARSHIP_BREW_PATH $BREW_BIN/starship
        if test -e $STARSHIP_BREW_PATH -a "$STARSHIP_LOADED" = 0
            starship init fish | source
            set STARSHIP_LOADED 1
        end
    end

    set --local ALIAS_PATH $HOME/.config/aliases
    if test -e $ALIAS_PATH
        source $ALIAS_PATH
    end

end
