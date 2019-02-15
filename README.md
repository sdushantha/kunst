# kunst
```kunst``` is a deamon that extracts the album art from the songs playing in ```mpd``` and displays them in the a little window. It doesn't loop on a timer, instead it waits for ```mpd``` to send a ```player``` event. When it receives a ```player``` event, it wakes up and extracts the album art of the current playing track. This maks ```kunst```really lightweight and makes it idle at ```~0%``` CPU usage. If a track that is currently playing does not have an embedded album art, an image of a msuic note will be shown.
 

Note: ```kunst``` is meant to be used with files that have embedded album art

<p align="left">
<img src="extra/demo.gif" width="657.8" height="438.1">
</a>
</p>

## Dependencies
- ```sxiv```
- ```imagemagick```
- ```bash```

## Installation
Add ```kunst``` to a directory which is in you ```$PATH```

## TODO

- [x] use less CPU
- [ ] add arguments (need to learn how to do this)
  - [ ] music directory
  - [ ] image size (dimentions)

## License
MIT License

Copyright © 2019 Siddharth Dushantha
