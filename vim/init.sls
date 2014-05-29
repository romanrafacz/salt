vim-enhanced:
  pkg.installed

/etc/skel/.vimrc:
  file.managed:
    - source: salt://vim/.vimrc
    - user: root
    - group: root
    - mode: 0644
    - template: jinja
