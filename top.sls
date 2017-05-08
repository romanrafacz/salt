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
      - docker 
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
      - maven
    'nginx*':
      - nginx
    'icinga*':
      - postgres
      - icinga2
      - icinga2.icinga-web2
    'build*':
      - docker
      - sun-java
      - maven
