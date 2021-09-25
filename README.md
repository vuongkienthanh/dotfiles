# dotfiles
My collection of conf files and installation guides  
Put img files in `~/Pictures`  
Put conf files in `~/.config`

### basic, fzf, ripgrep, fd, picom
```sh
mkdir -p ~/.local/bin
echo 'export PATH="$HOME/.local/bin:$PATH"' | sudo tee -a ~/.bashrc
apt update
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt upgrade
apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev \
  libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev \
  libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev \
  libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev \
  libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev \
  libevdev-dev uthash-dev libev-dev libx11-xcb-dev \
  ninja-build gettext libtool libtool-bin autoconf automake cmake g++ \
  pkg-config unzip curl build-essential git dkms linux-headers-$(uname -r) \
  python3 python3-pip jq curl imagemagick ripgrep fd-find \
  trash-cli pmount nodejs unzip tree tar man mediainfo ffmpeg atool \
  libncursesw5-dev libreadline-dev
ln -s $(which fdfind) ~/.local/bin/fd
cd && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
cd && git clone https://github.com/yshui/picom.git --depth 1
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build install
git config --global credential.helper 'store --file ~/.my-credentials'
```
### JetBrains Mono v2.242 nerd fonts: `~/.local/share/fonts/`
### xfce4
### Redshift
### vietnamese input
```sh
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo --install-recommends
ibus restart
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
```
### [fish](fishshell.com) & [oh-my-fish](github.com/oh-my-fish/oh-my-fish)
```sh
sudo apt-add-repository ppa:fish-shell/release-3
apt update
apt install fish
curl -L https://get.oh-my.fish | fish
omf install
```
### [conky](github.com/brndnmtthws/conky)
```sh
curl -sL -o conky-x86_64.AppImage $(curl -sL https://api.github.com/repos/brndnmtthws/conky/releases/latest |  jq --raw-output '.assets[0] | .browser_download_url')
chmod +x ./conky-x86_64.AppImage
mv conky-x86_64.AppImage $HOME/.local/bin/conky
```
### [kitty](sw.kovidgoyal.net/kitty)
```sh
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop
```
### [neovim](https://neovim.io/) 
```sh
pip install pynvim
cd && git clone https://github.com/neovim/neovim.git --depth 1
cd neovim && make -j4
sudo make install
cd && git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# in nvim
:PackerSync
```
### nnn
```sh
cd && git clone https://github.com/jarun/nnn.git --depth 1
sudo make strip install
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh
```
