# Install

On MacOS I would recommend install macvim with lua:

    brew install macvim --with-cscope --with-lua --with-ruby --HEAD
        
My ready to go VIM package for quick setup on new machines.

This package is ruby/rails oriented with monokai2 theme by default.

1. Backup/rename (!) your previous .vim folder and vimrc files.

2. Then just install full package (including all plugins):

    ```zsh
        git clone --recursive https://github.com/kajamite/vim.git ~/.vim
    ```

    If you need more information about every plugin, read their README docs
    in corresponding folders in ~/.vim/bundle folder.

3. For ag.vim plugin to work you need to install ag itself(if you don't already). Read more [here](https://github.com/rking/ag.vim).

### Enjoy!

