<p align="center"><img src="extra/kunst_logo.png"><br><sub>✨ Download and display album art or display embedded album art  ✨</sub></p>

```kunst``` is a deamon that extracts the album art from the songs playing in ```mpd``` and displays them in the a little window. It doesn't loop on a timer, instead it waits for ```mpd``` to send a ```player``` event. When it receives a ```player``` event, it wakes up and extracts the album art of the current playing track. This makes ```kunst```really lightweight and makes it idle at ```~0%``` CPU usage. If there no embbeded album art, it will try to fetch the album art from the internet.


<p align="left">
<img src="extra/demo.gif">
</a>
</p>

[![Support me!](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/XoJfSVI)

## Dependencies
- ```sxiv``` or ```imv```
- ```bash```
- ```ffmpeg```
- ```mpc```
- ```jq```
- ```mpd```


## Installation
### Install using ```make```
```bash
# Clone the repo
$ git clone https://github.com/sdushantha/kunst

# Change your current directory to kunst
$ cd kunst

# Install it
$ sudo make install
```
### Install it locally

```bash
# Download the kunst source code, save as kunst, make it executeable
# and then move it to ~/.local/bin
$ curl -L git.io/raw-kunst > kunst && chmod +x kunst && mv kunst ~/.local/bin
```

## Usage

```bash
$ kunst --help
usage: kunst [-h] [--size "px"] [--viewer imv|sxiv] [--position "+x+y"] [--music_dir "path/to/dir"] [--silent] [--version]

┬┌─┬ ┬┌┐┌┌─┐┌┬┐
├┴┐│ ││││└─┐ │
┴ ┴└─┘┘└┘└─┘ ┴
Download and display album art or display embedded album art

optional arguments:
   -h, --help            show this help message and exit
   --size                what size to display the album art in
   --position            the position where the album art should be displayed
   --music_dir           the music directory which MPD plays from
   --viewer              whether to use sxiv or imv as the image viewer
   --silent              dont show the output
   --version             show the version of kunst you are using
```


## Configure
You can configure `kunst` through environment variables.

```bash
# The image viewer to use
export KUNST_VIEWER="imv"

# The size of the album art to be displayed
export KUNST_SIZE="250x250"

# The position where the album art should be displayed
export KUNST_POSITION="+0+0"

# Where your music is located
export KUNST_MUSIC_DIR="/home/username/Music/"
```

<p align="center">
<a href="https://www.reddit.com/user/SpicyBroseph">
<img src="https://user-images.githubusercontent.com/27065646/53107999-89ec9480-3536-11e9-98a2-9ff416bf4589.png">
</a>
</p>


## License
MIT License

Copyright © 2019 Siddharth Dushantha
