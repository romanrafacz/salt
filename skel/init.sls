https://github.com/robbyrussell/oh-my-zsh.git:
  git.latest:
    - rev: master
    - target:  /etc/skel/.oh-my-zsh
    - force: True

.zshrc:
  cmd.run:
    - name: "curl -L http://install.ohmyz.sh | sh"

/etc/skel/.vimrc:
  file.managed:
    - source: salt://skel/.vimrc
    - user: root
    - group: root
    - mode: 644
    - template: jinja

/etc/skel/.vim:
  file.directory:
    - user:  root
    - group: root
    - dir_mode: 755
    - file_mode: 655

https://github.com/tpope/vim-pathogen.git:
  git.latest:
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

https://github.com/tpope/vim-surround.git:
  git.latest:
    - rev: master
    - target: /etc/skel/.vim/bundle
    - force: True

https://github.com/tpope/vim-fugitive.git:
  git.latest:
    - rev: master
    - target: /etc/skel/.vim/bundle
    - force: True

/etc/skel/.ssh:
  file.directory:
    - user: roman
    - group: roman 
    - dir_mode: 700

/etc/skel/.ssh/authorized_keys:
  file.managed:
    - source: salt://users/keys/authorized_keys
    - user: roman
    - group: roman
    - mode: 600
    - template: jinja
