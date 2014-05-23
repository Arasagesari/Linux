"Locate this file as /root/.vimrc in your linux system
"set thesaurus+=/root/mthesaur.txt
"colorscheme desert
"color desert
"set guifont=ProggyCleanTT\ 12
if $PWD == '/root'
echo "you in root"
 colorscheme desert
else
echo "you not in root"
 colorscheme delek
endif
