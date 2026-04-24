# vimrc config
My vimrc config with single _vimrc (or .vimrc) file

## Example 
<img width="859" height="563" alt="image" src="https://github.com/user-attachments/assets/21f43342-9d98-4bf0-9872-eb79bd110033" />

## Can be used in neovim
To use that specific commands in nvim you need to create nvim/init.vim and paste code from .vimrc

Then you need to configure plug-vim in neovim:
### powershell (for win)
```
New-Item -Path "$env:LOCALAPPDATA\nvim-data\site\autoload" -ItemType Directory -Force

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$env:LOCALAPPDATA\nvim-data\site\autoload\plug.vim"
```
### Linux shell
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

** Then you need to run this command in nvim:
```
:PlugInstall
```


