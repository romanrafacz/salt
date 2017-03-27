base:
    '*':
      - epel
      - curl
      - ntp
      - ntpdate
      - git
      - zsh
      - oh-my-zsh
      - ssh
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
      - jar
    'nagios':
      - postgres
