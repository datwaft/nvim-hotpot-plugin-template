# use with https://github.com/casey/just

# Display list of commands
@help:
  just --list

# Ensure dependencies are installed
@ensure-deps:
  git submodule update --init

# Build lua/ for distribution
@build: ensure-deps
  nvim --clean --headless \
    +"set rtp+=./deps/hotpot.nvim" \
    +"source ./deps/hotpot.nvim/plugin/hotpot.vim" \
    +"Fnlfile make.fnl" \
    +"qa"

# Clean lua/
@clean:
  rm -rf ./lua/
