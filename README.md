<p align="center"><img src="extra/kunst_logo.png"><br><sub>✨ Download and display album art or display embedded album art  ✨</sub></p>

```kunst``` is a deamon that extracts the album art from the songs playing in ```mpd``` and displays them in the a little window. It doesn't loop on a timer, instead it waits for ```mpd``` to send a ```player``` event. When it receives a ```player``` event, it wakes up and extracts the album art of the current playing track. If there no embbeded album art, it will try to fetch the album art from the internet. This maks ```kunst```really lightweight and makes it idle at ```~0%``` CPU usage. 


<p align="left">
<img src="extra/demo.gif" width="657.8" height="438.1">
</a>
</p>

## Dependencies
- ```sxiv```
- ```imagemagick```
- ```bash```
- ```ffmpeg```
- ```mpc```

## Installation
```sudo make install```

**OR**

Add ```kunst``` to a directory which is in your ```$PATH```

**OR**

[AUR](https://aur.archlinux.org/packages/kunst-git/) *(maintained by [networkpanic](https://github.com/networkpanic))*

## Usage

```bash
$ kunst --help
usage: kunst [-h] [--size px] [--music_dir path/to/dir] [--version]
 
┬┌─┬ ┬┌┐┌┌─┐┌┬┐
├┴┐│ ││││└─┐ │
┴ ┴└─┘┘└┘└─┘ ┴ 1.0
Download and display album art or display embedded album art
 
optional arguments:
   -h, --help            show this help message and exit
   --size                what size to display the album art in
   --music_dir           the music directory which MPD plays from
   --version             show the version of bum you are using
```

## License
MIT License

Copyright © 2019 Siddharth Dushantha
