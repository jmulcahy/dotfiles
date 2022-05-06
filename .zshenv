if [ -f "$HOME/.fzf.zsh" ]; then
    . $HOME/.fzf.zsh
fi

export PATH="$HOME/.cargo/bin:$HOME/rtags/bin/:$HOME/.local/bin:/Users/johnmulcahy/anaconda2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

export PATH_SAVE=$PATH

export JULIA_NUM_THREADS=8
