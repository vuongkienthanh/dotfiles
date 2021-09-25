set BLK 0B
set CHR 0B
set DIR 2D
set EXE 06
set REG 00
set HARDLINK 06
set SYMLINK 06
set MISSING 00
set ORPHAN 09
set FIFO 06
set SOCK 0B
set OTHER 06
set -x NNN_COLORS 1234
set -x NNN_FCOLORS $BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER
set -x NNN_OPTS "exJo"
set -x NNN_FIFO /tmp/nnn.fifo
set -x NNN_PLUG 'p:preview-tui;m:nmount;f:fzcd;d:diffs;w:!xfce4-set-wallpaper $nnn*;s:suedit'
set -x NNN_TRASH 1
set -x NNN_BMS "c:$HOME/.config;"
