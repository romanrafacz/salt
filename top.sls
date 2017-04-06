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
      - nagios.nrpe
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
    'elastic*':
      - sun-java
      - elasticsearch
      - kibana
      - nginx
