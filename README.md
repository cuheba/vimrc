# Vim config
My .vimrc config in single file

## Example 
<img width="854" height="571" alt="image" src="https://github.com/user-attachments/assets/f370600b-2edd-4019-bba8-f8a4edc4d8c5" />


## Can be used in neovim
To use that specific commands in nvim you need to create nvim/init.vim and paste code from .vimrc

Then you need to configure plug-vim in neovim:
### Powershell (for win)
```powershell
New-Item -Path "$env:LOCALAPPDATA\nvim-data\site\autoload" -ItemType Directory -Force

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$env:LOCALAPPDATA\nvim-data\site\autoload\plug.vim"
```
### Linux shell
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Then you need to run this command in nvim:
```
:PlugInstall
```

### If you did it right you should see smth like ***this:***
<img width="852" height="568" alt="image" src="https://github.com/user-attachments/assets/6c4a0ff5-7d60-4355-aa5f-0e8fd4c19020" />

*For proper look of airline-vim you need to install any NerdFont*
