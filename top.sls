base:
    '*':
      - epel
      - curl
      - ntp
      - ntpdate
      - git
      - vim
      - zsh
      - oh-my-zsh
      - users
      - rabbitmq
      - sensu.client
      - sun-java
    'sensu-client':
      - tomcat
    'turkey':
      - sun-java
      - users
      - zsh
      - iptables
    'stacks':
      - iptables
    'nginx':
      - rabbitmq
      - sensu.client
