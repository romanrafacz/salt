https://github.com/robbyrussell/oh-my-zsh.git:
  git.latest:
    - rev: master
    - target:  /etc/skel/.oh-my-zsh
    - force:  True

.oh-my-zsh:
  cmd.run:
    - name: "cp /etc/skel/.oh-my-zsh/templates/zshrc.zsh-template /etc/skel/.zshrc"
