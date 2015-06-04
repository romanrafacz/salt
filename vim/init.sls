vim-enhanced:
  pkg.installed

vimrc:
  file.managed:
    - name: /home/roman/.vimrc
    - source: salt://vim/files/vimrc
    - mode: 644

