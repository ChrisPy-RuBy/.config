
setting up a terminal
use guake.


setting up powerline 

source ~/.zshrc
pip install --user git+git://github.com/Lokaltog/powerline
gksudo gedit ~/.profile
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
vim .zshrc
source ~/.zshrc
ls
sudo apt-get install fonts-powerlin
sudo apt-get install fonts-powerline


# networking tools
## get netstat and the such
sudo apt-get install net-tools
