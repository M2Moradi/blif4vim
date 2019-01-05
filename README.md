# blif4vim
BLIF syntax highlighting for vim

Provides basic funcionality, useful merely for developers or debuggers who need to have some fun editing blif files ;)

A simple way to make it work in linux-based systems is to first create a .vim directory at home, then copy the files containing necessary autocommands into it: 

```
mkdir ~/.vim
mkdir ~/.vim/syntax
cp blif.vim ~/.vim/syntax/blif.vim

mkdir ~/.vim/ftdetect
cp blif_detect.vim ~/.vim/ftdetect/blif.vim
```
