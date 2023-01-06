# use with https://github.com/casey/just

# Display list of commands
@help:
  just --list

# Build lua/ for distribution
@build:
  nvim --headless +"Fnlfile build.fnl" +"qa"

# Clean lua/
@clean:
  rm -rf ./lua/