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
    'jvm*':
      - maven
      - sun-java
