![Oh My Zsh](https://ohmyz.sh/img/ohmyzsh-logo-ansi.png){width=100%}

I use **Oh My Zsh** as my shell and **Powerlevel10k** as my theme in MacOS and Linux Mint.

!!! info "Oh My Zsh"

    Oh My Zsh is an open-source, community-driven framework for managing your Zsh configuration. It comes bundled with thousands of helpful functions, helpers, plugins, themes, and a few things that make you shout... "Oh My Zsh!". [[OhMyZsh](https://ohmyz.sh/)]

## Installation

1.  **Install Zsh**. On MacOS, Zsh is the default shell, so you no need to install it. But on Linux, it's not the default shell, so we need to install it.

    ```bash title="Run in terminal"
    sudo apt update
    sudo apt install zsh
    ```

    ```bash title="Verify Zsh installation"
    zsh --version
    ```

    ```bash title="Make Zsh default shell"
    chsh -s $(which zsh)
    ```

2.  Install Oh My Zsh

    ```bash title="Install"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

3.  Install Powerlevel10k

    ```bash title="Run in terminal"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```

4.  Install MesloLGS NF font

    If you are using iTerm2 or Termux, p10k configure can install the recommended font for you. Simply answer Yes when asked whether to install Meslo Nerd Font.

    If used in other terminal emulators, you need to install the recommended font manually [here](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual-font-installation).

5.  Reconfigure Powerlevel10k

    After installing Powerlevel10k, you will see a configuration wizard the next time you open a new terminal window. But you can also reconfigure it by running the following command.

    ```bash title="Run in terminal"
    # just type `p10k configure` in your terminal
    p10k configure
    ```

6.  Extra My Configuration

    ??? "Plugins"

        ```bash title="Install external plugins"
          # plugin zsh-syntax-highlighting
          git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

          # plugin zsh-autosuggestions
          git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
        ```

        ```bash title="Add plugins in ~/.zshrc"
        plugins=(
          git
          zsh-autosuggestions
          zsh-syntax-highlighting
          web-search
        )
        ```

    ??? "Custom prompt"

        ```.zsh linenums="1" title="Change POWERLEVEL9K_SHORTEN_STRATEGY in ~/.p10k.zsh to truncate_to_last"
        ...

        typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
        ...

        ```
