vim-enhanced:
  pkg.installed

vimrc:
  file.managed:
    - name: /etc/skel/.vimrc
    - source: salt://vim/files/vimrc
    - mode: 644

