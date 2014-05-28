vim-enhanced:
  pkg.installed

/etc/skel/.vimrc:
  file.managed:
    - source: salt://vim/.vimrc
    - user: root
    - group: root
    - mode: 644
    - template: jinja

/etc/skel/.vim:
  file.directory:
    - source: salt://vim/.vim
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644

