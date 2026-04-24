# Vim config
My .vimrc config in single file

## Example 
<img width="859" height="563" alt="image" src="https://github.com/user-attachments/assets/21f43342-9d98-4bf0-9872-eb79bd110033" />

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

If you did it right you should see smth like *this*:

<img width="849" height="560" alt="image" src="https://github.com/user-attachments/assets/56ac4544-1617-4660-b7c3-e688b9734964" />

*For proper look of airline-vim you need to install any NerdFont*
