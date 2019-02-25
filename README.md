# YouTube playlist-maker


## Instructions

Clone this repository wherever you want.

Place yourself at the root and type :

```bash
chmod 755 make_playlist.lua
./make_playlist.lua <path_to_file> <true/false>
```

*or*

```bash
lua make_playlist.lua <path_to_file> <true/false>
```

__then__

Copy paste the **_URL_** from your terminal in your favourite browser

Enjoy its content :tada:.

The second argument decides whether shuffling is applied to the playlist or not.

*N.B. : if you don't pass any argument or pass an unexisting file, the returned playlist will be empty.*


## File syntax

```
Id,Title,Artist
id1,title1,artist1
id2,title2,artist2
...
```


## Comments

* At the root there is a directory *playlists* that contains samples of playlists
* Check these files to make sure you got the syntax and test the program with them
* Video ids are 11 character-lengthed strings, they are written in youtube urls after *watch?v=*
* In my case I need to load the link twice in order to get the playlist right
