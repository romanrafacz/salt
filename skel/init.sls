https://github.com/robbyrussell/oh-my-zsh.git:
  git.latest:
    - rev: master
    - target:  /etc/skel/.oh-my-zsh
    - force: True

.zshrc:
  cmd.run:
    - name: "cp /etc/skel/.oh-my-zsh/templates/zshrc.zsh-template /etc/skel/.zshrc"

/etc/skel/.vimrc:
  file.managed:
    - source: salt:/vim/.vimrc
    - user: root
    - group: root
    - mode: 644
    - template: jinja

/etc/skel/.vim:
  file.directory
    - user:  root
    - group: root
    - dir_mode: 755
    - file_mode: 655

https://github.com/tpope/vim-pathogen.git:
  git.lates:
    - rev: master
    - target: /etc/skel/.vim
    - force: True

/etc/skel/.vim/bundle:
  file.directory

https://github.com/scrooloose/syntastic.git:
  git.latest:
    - rev: master
    - target: /etc/skel/.vim/bundle
    - force: True

