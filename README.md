# ahacop's dotfiles

## Usage

1. Install [homebrew](https://brew.sh/)

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

1. Install [yadm](https://github.com/TheLocehiliosan/yadm)

  ```bash
  brew install yadm
  ```

1. Install [ahacop's dotfiles](https://github.com/ahacop/dotfiles)

  ```bash
  yadm clone https://github.com/ahacop/dotfiles
  ```

1. Choose "yes" when prompted to run `yadm bootstrap`.
1. Install switchable [ruby](https://www.ruby-lang.org/)

  ```bash
  ruby-install ruby
  ```

1. Set `~/.ruby-version` to the latest installed ruby, if necessary.
