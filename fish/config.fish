if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Catpuccin Mocha
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

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

    set --local EPICRC_PATH $HOME/.epicrc
    if test -e $EPICRC_PATH
        source $EPICRC_PATH
    end
end
