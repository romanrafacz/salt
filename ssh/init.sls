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
