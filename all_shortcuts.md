This is a reminder of shortcuts, commands in my daily usage.


# kitty
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>↑</kbd> / <kbd>↓</kbd> / <kbd>j</kbd> / <kbd>k</kbd> / <kbd>PgUp</kbd> / <kbd>PgDw</kbd> / <kbd>Home</kbd> / <kbd>End</kbd>: scrolling

<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>Return</kbd>: add a window  
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>[</kbd> / <kbd>]</kbd> change window  
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>\`</kbd>: pick current window as main  
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>r</kbd>: resize window  
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>l</kbd>: change layout

<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>t</kbd>: add a tab  
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>←</kbd> / <kbd>→</kbd>: change tab  
<kbd>Ctrl</kbd><kbd>Shift</kbd><kbd>Alt</kbd> + <kbd>t</kbd>: rename tab

<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>w</kbd>: close current window/tab  
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>q</kbd>: close all

<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>c</kbd> / <kbd>v</kbd>: copy and paste  
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>e</kbd>: open url  
<kbd>Ctrl</kbd><kbd>Shift</kbd> + <kbd>+</kbd> / <kbd>-</kbd>: font size

<kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>u</kbd>: input Unicode charater

# fish shell
I use `fish_vi_key_bindings`

<kbd>Tab</kbd>, <kbd>Shift</kbd> + <kbd>Tab</kbd>: completion  
<kbd>Ctrl</kbd> + <kbd>n</kbd> / <kbd>p</kbd>: go up/down in subwindow  
<kbd>Ctrl</kbd> + <kbd>l</kbd>: Clear screen  
<kbd>Ctrl</kbd> + <kbd>j</kbd>: Enter  
<kbd>Alt</kbd> + <kbd>s</kbd>: Add `sudo`  
<kbd>Alt</kbd> + <kbd>l</kbd>: Run `ls`  
<kbd>Alt</kbd> + <kbd>P</kbd>: Pager 

<kbd>Ctrl</kbd> + <kbd>t</kbd>: fzf paste filepath  
<kbd>Alt</kbd> + <kbd>r</kbd>: fzf history  
<kbd>Alt</kbd> + <kbd>c</kbd>: fzf cd  

`jobs`, `fg`, `bg`, <kbd>Ctrl</kbd> + <kbd>z</kbd>: manage jobs


# vim
Set <kbd>leader</kbd> = <kbd>,</kbd>

## Commands

### Navigation
<kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd>, <kbd>l</kbd>  
<kbd>w</kbd>, <kbd>e</kbd>, <kbd>b</kbd>  
<kbd>H</kbd>, <kbd>L</kbd>: First/last line  
<kbd>Ctrl</kbd> + <kbd>u</kbd> / <kbd>d</kbd>: PgUp/PgDw  
<kbd>^</kbd>, <kbd>$</kbd>: Home, End   
<kbd>f</kbd> / <kbd>t</kbd> `char`: next `char` inline  
<kbd>;</kbd> / <kbd>,</kbd>: repeat <kbd>f</kbd> forward/backward  
<kbd>gg</kbd>, <kbd>G</kbd>,`num` <kbd>gg</kbd>: go to first, last, `num` line  
<kbd>%</kbd>: go to paired brackets, tags  


### Text objects
<kbd>w</kbd>: numeralphabet and underscore  
<kbd>W</kbd>: nonblank  
<kbd>i</kbd>: inner space, or special characters, tags  
<kbd>a</kbd>: include space, or special characters, tags  
Common: <kbd>daw</kbd>, <kbd>ciw</kbd>  

Other text objects:  
<kbd>p</kbd>: paragraph  
<kbd>s</kbd>: sentence  
<kbd>t</kbd>: html tags  

Special characters such as:
<kbd>\`</kbd><kbd>]</kbd><kbd>}</kbd><kbd>)</kbd><kbd>\*</kbd>, ..  


### Edit
#### Normal mode commands
<kbd>.</kbd> to repeat last edit  
<kbd>x</kbd>, <kbd>d</kbd>, <kbd>dd</kbd>, <kbd>D</kbd>: Delete  
<kbd>s</kbd>, <kbd>c</kbd>, <kbd>cc</kbd>, <kbd>C</kbd>: same as above but change mode  
<kbd>Ctrl</kbd> + <kbd>a</kbd> / <kbd>x</kbd>: add / substract next number  
<kbd>J</kbd>: join line  
<kbd>dc</kbd>: delete line without upshift  
<kbd>[a</kbd>, <kbd>]a</kbd>: add line  
<kbd>[e</kbd>, <kbd>]e</kbd>: move line  


#### Change mode
<kbd>r</kbd>, <kbd>R</kbd>: replace mode  
<kbd>I</kbd>, <kbd>A</kbd>: insert mode at begin, end of line  
<kbd>o</kbd>, <kbd>O</kbd>: next line  
<kbd>Ctrl</kbd> + <kbd>o</kbd>: Insert to one-time Normal mode  


#### Insert mode
<kbd>Ctrl</kbd> + <kbd>h</kbd>, <kbd>w</kbd>, <kbd>u</kbd>: delete back  
<kbd>Ctrl</kbd> + <kbd>n</kbd> / <kbd>p</kbd>: go up/down in suggestion list  
<kbd>Ctrl</kbd> + <kbd>r</kbd> `register`  
> `:reg` to view all registers  
> `"`: last delete  
> `0`: last yank  
> `+`: clipboard  
> `=`: calculation  


#### Visual mode
<kbd>v</kbd>, <kbd>V</kbd>, <kbd>Ctrl</kbd> + <kbd>v</kbd>  
<kbd>gv</kbd>: reselect last selection  
<kbd>o</kbd>: go to other end  
<kbd>v></kbd>, <kbd>v<</kbd>: indent  
<kbd>vu</kbd>, <kbd>vU</kbd>, <kbd>v~</kbd>: upper, lower, toggle case  


### Undo, redo
<kbd>u</kbd>, <kbd>Ctrl</kbd> + <kbd>r</kbd>


### Copy(yank) and paste
<kbd>ddp</kbd>, <kbd>yyp</kbd>: use Kill Ring  
<kbd>Ctrl</kbd> + <kbd>y</kbd>, <kbd>Ctrl</kbd> + <kbd>p</kbd>: use clipboard  


### Mark
<kbd>m</kbd>, <kbd>\`</kbd> `a-zA-Z`: buffer local/global  


## Search
*smartcase*: if pattern is lowercase, enforce lowercase, else ignorecase  
<kbd>/</kbd>, <kbd>n</kbd>, <kbd>N</kbd>  
<kbd>\*</kbd>, <kbd>#</kbd>: search current word
> /pattern\c to ignorecase  

<kbd>CTRL</kbd> + <kbd>L</kbd>: clear highlight  


## Ex commands

### Range object

format: `#,#`
> line number  
> `.`: current line number  
> `$`: last line number  
> `%`: whole file or `1,$`  
> `'<,>'`: selection  
> `/pattern/`  

`#` can be offset  


### Macro
**macro** is an ex-command with a series of normal mode command:  
<kbd>q</kbd>`reg`: start, end recording in `reg`  
<kbd>@</kbd>`reg`: execute macro  


### `grep` and ex-commands
`#,#g/pattern/cmd `: grep and execute cmd  
`#,#v/pattern/cmd `: vgrep and execute cmd
> `#,#d`: delete  
> `#,#y`: yank  
> `#,#put`: put below  
> `#,#t`: copy to  
> `#,#m`: move to
> `#,#j`: join line  
> `#,#norm`: execute ex-command  
> `#,#s`: substitute  

### Substitute
`#,#s/old/new/gci`  
> change `#` to `$` to last line  
> `g` global  
> `c` comfirm prompt  
> `i` ignorecase  


## Buffers, tabs and windows 
I use FZF and nnn.  
<kbd>Ctrl</kbd> + <kbd>n</kbd>: navigate folder  
> <kbd>Ctrl</kbd> + <kbd>g</kbd>: open folder  

<kbd>Ctrl</kbd> + <kbd>f</kbd>: open file  
<kbd>Ctrl</kbd> + <kbd>b</kbd>: go to buffer  
> <kbd>Ctrl</kbd> + <kbd>j</kbd>,<kbd>k</kbd>: navigate  
> <kbd>Tab</kbd>: select  
> <kbd>Alt</kbd> + <kbd>a</kbd>, <kbd>d</kbd>: select/deselect all  
> <kbd>Return</kbd>: open file  
> <kbd>Ctrl</kbd> + <kbd>v</kbd>: vsplit  
> <kbd>Ctrl</kbd> + <kbd>x</kbd>: hsplit  
> <kbd>Ctrl</kbd> + <kbd>t</kbd>: tab  

`ls`, `bd`: list, delete buffer  

`tabe`, `tabc`, `tabo`: open/close/keep tab  
<kbd>gt</kbd>: change tab  

<kbd>Ctrl</kbd> + <kbd>w</kbd>; <kbd>n</kbd><kbd>c</kbd><kbd>o</kbd>: open/close/keep window  
<kbd>Ctrl</kbd> + <kbd>w</kbd>; <kbd>hjkl</kbd><kbd>w</kbd>: change window  
<kbd>Ctrl</kbd> + <kbd>w</kbd>; <kbd>\_</kbd><kbd>|</kbd><kbd>=</kbd>: autoresize window  
<kbd>Ctrl</kbd> + <kbd>w</kbd>; `num` <kbd>+</kbd><kbd>-</kbd><kbd>></kbd><kbd><</kbd>: resize window  


<kbd>Ctrl</kbd> + <kbd>]</kbd>: go to link  
<kbd>Ctrl</kbd> + <kbd>o</kbd>, <kbd>Ctrl</kbd> + <kbd>i</kbd>: go back/forward link  


## Tpope vim stuffs
<kbd>gcc</kbd>, V-mode <kbd>gc</kbd>: toggle comment  
<kbd>ys</kbd>, <kbd>cs</kbd>, <kbd>ds</kbd>, Vmode <kbd>S</kbd>: add, change, remove surround  

---
Read more: Practical Vim, Second Edition  
