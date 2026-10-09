# Console Configuration Files

Personal dotfiles: `.vimrc`, `.tmux.conf`, `.bash_profile`.

copy the config files to the home directory (`~`)

## Inconsolata with Powerline font (Homebrew + iTerm)

The vim-airline and tmuxline status bars use Powerline glyphs, so you need a patched font.

1. Install Inconsolata fonts:

   ```bash
   brew install --cask font-inconsolata-nerd-font
   ```

2. Configure iTerm2:
   - Open **iTerm2 > Settings > Profiles > Text**, and select the powerline font.

## Vundle and vim plugins

1. Clone Vundle:

   ```bash
   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   ```

2. Make sure `.vimrc` is in place (see above). It already contains the Vundle setup and plugin list, including jellybeans color scheme.

3. Install the plugins, either from the shell:

   ```bash
   vim +PluginInstall +qall
   ```

   or from inside vim by running `:PluginInstall`.

Other useful commands: `:PluginUpdate` to update, `:PluginClean` to remove plugins no longer listed in `.vimrc`.

