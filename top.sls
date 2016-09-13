base:
    '*':
      - epel
      - ntp
      - ntpdate
      - git
      - vim
      - zsh
      - oh-my-zsh
      - users
    'sensu-client':
      - tomcat
    'turkey':
      - sun-java
      - users
      - zsh
      - iptables
    'stacks':
      - iptables
