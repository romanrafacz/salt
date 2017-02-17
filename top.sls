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
      - sun-java
      - openssh
      - jar
      - maven
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
