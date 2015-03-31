# Install

On MacOS I would recommend install macvim with lua:

    ```zsh
        brew reinstall macvim --with-cscope --with-lua --with-ruby --HEAD                                                                                 
    ```
My ready to go VIM package for quick setup on new machines.

This package is ruby/rails oriented with monokai2 theme by default.

1. Backup/rename (!) your previous .vim folder and vimrc files.

2. Then just install full package (including all plugins):

    ```zsh
        git clone --recursive https://github.com/kajamite/vim.git ~/.vim
    ```

    If you need more information about every plugin, read their README docs
    in corresponding folders in ~/.vim/bundle folder.

3. You will need to additionaly configure YouCompleteMe plugin (if you plan to use it). Read more about it [here](http://valloric.github.io/YouCompleteMe/)(skip step of installing plugin with Vundle - if you executed step 2 then it is already installed).
4. For ag.vim plugin to work you need to install ag itself(if you don't already). Read more [here](https://github.com/rking/ag.vim).

### Enjoy!

