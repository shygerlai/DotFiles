# Dotfiles

## Showcase

![img](./scrnshot)

## WM

```
$ yay -S i3 dmenu google-chrome fcitx5-im fcitx5-chewing fcitx5-qt fcitx5-gtk fcitx5-chinese-addons nm-applet maim xclip
```

## Neovim

```
rm -rf ~/.config/nvim/
rm -rf ~/.local/share/nvim/
rm -rf ~/.local/state/nvim/
yay -S neovim nvim-lazy tree-sitter-cli
cp -r .config/nvim ~/.config/
```

- Fix other dependency issues with `:checkhealth lazy`

## Display Manager

- Use theme [TokyoNight](https://github.com/siddrs/tokyo-night-sddm)

```
git clone https://aur.archlinux.org/sddm-theme-tokyo-night.git
cd sddm-theme-tokyo-night
makepkg -Ccsi
```

- Change theme in `/etc/sddm.conf`

## Terminal Stuff

- Terimnal : `yay -S alacritty zellij && echo 'eval "$(zellij setup --generate-auto-start zsh)"' >> ~/.zshrc`
- Nerd Font : [Agave](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Agave.zip)

```
unzip ./Agave.zip
cp ./*.ttf ~/.local/share/fonts/
fc-cache -fv
```

- Zellij-sessionizer : Config guide [Here](https://gist.github.com/silicakes/ad6da190d9c05270bc651086c200f8b2)
