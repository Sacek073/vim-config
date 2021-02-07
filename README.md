# vim-config
This script is used to install all plugins, themes and setting to vim to my liking. 

![look](https://github.com/Sacek073/vim-config/blob/master/pics/look.jpg)

## Plugins used:
* Auto-pairs<br>
	* https://github.com/vim-scripts/Auto-Pairs
* Lightline<br>
	* https://github.com/itchyny/lightline.vim
* vim-polyglot<br>
	* https://github.com/sheerun/vim-polyglot 
* NERDTree<br>
	* https://github.com/preservim/nerdtree

## Theme
* onedark<br>
	* https://github.com/joshdick/onedark.vim

## Instalation
If you have already some changes in ```.vimrc``` file, please create a backup of this file and after installation paste the changes into newly created ```.vimrc```. In the instalation process the old file is deleted and then new created.
```
git clone https://github.com/Sacek073/vim-config
chmod +x installer.sh
./installer.sh
```

## Usage 
* Shorcuts:
	* Ctrl + n - toggles NERDTree
	* AltGr + t - opens terminal
	* F4 - previous tab
	* F6 - next tab
	* F7 - toggle highlighting in search
