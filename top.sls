base:
    '*':
      - epel
      - curl
      - ntp
      - ntpdate
      - git
      - zsh
      - oh-my-zsh
      - users
    'sensu-client':
      - tomcat
    'stacks':
      - iptables
    'nginx':
      - rabbitmq
      - sensu.client
    'jvm*':
      - maven
      - sun-java
      - iptables
