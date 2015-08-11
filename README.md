# Dotfiles
This repository includes some of my custom dotfiles. They should be cloned to your home directory so that the path is ~/dotfiles/. 
The included setup script creates symlinks from your home directory to the files which are located in ~/dotfiles/.

The setup script is smart enough to back up your existing dotfiles into a ~/dotfiles_old/ directory 
if you already have any dotfiles of the same name as the dotfile symlinks being created in your home directory.

So, to recap, the install script will:

Back up any existing dotfiles in your home directory to ~/dotfiles_old/
Create symlinks to the dotfiles in ~/dotfiles/ in your home directory

Installation
```
git clone git://github.com/michaeljsmalley/dotfiles ~/dotfiles
```
```
cd ~/dotfiles
```
```
./setup.sh
```

* [myblog](https://lovelinux.me)

## License

The MIT license.

Copyright (c) 2015

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation 
files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS 
BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
