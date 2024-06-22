# My Dotfiles

my dearest dot files.

I like optimising my setup for speed and ease of use.

### Screenshots

![overall look](https://github.com/AyushmanTripathy/dots/assets/85863923/877eb395-1ce6-4a71-ba42-f4c26729fb57)
![neovim config](https://github.com/AyushmanTripathy/dots/assets/85863923/bed9107a-0cae-4988-a6c7-a927f89e477b)

### Setup

| My                | Choice                 |
| ----------------- | ---------------------- |
| OS                | Arch Linux             |
| Editor            | Neovim                 |
| Window Manager    | dwm (dwmblocks, dmenu) |
| Terminal Emulator | alacritty, st          |
| Shell             | bash                   |
| Media Player      | mpv, moc               |
| Window System     | X                      |
| Notifications     | dunst                  |
| Compositor        | picom                  |
| Multimedia        | pipewire               |
| Lockscreen        | slock                  |

## Replication

before using the dotfiles, you need the following

-   how to configure Arch? check out my [notes](https://github.com/AyushmanTripathy/notes/blob/master/linux/linux_setup.md)
-   my patched versions of [dwm](https://github.com/AyushmanTripathy/dwm), [dwmblocks](https://github.com/AyushmanTripathy/dmenu) and [dwmblocks](https://github.com/AyushmanTripathy/dwmblocks).
-   [my local bin](https://github.com/AyushmanTripathy/bin)

this repo comes with a `dots` script, used to backup files and push to the repo
below command will retrive all the files in the `list.txt` file
retriving `private.txt` requires the gpg key used to encrypt in the first place

```shell
git clone https://github.com/AyushmanTripathy/dots --depth 1
sh dots/dots -r
```

for doing a backup of you dotfiles do

```shell
./dots -b
```

#### FAQs

-   how to configure Neovim? see [here](./backups/nvim/Readme.md)
-   problems with keybindings? use the buitin `get-help` command
