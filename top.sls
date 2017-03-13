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
      - iptables
    'db*':
      - postgres
      - maven
      - sun-java
    'sensu-client':
      - tomcat
    'webserver*':
      - rabbitmq
      - sensu.client
    'appserver*':
      - maven
      - sun-java
    'nagios':
      - postgres
