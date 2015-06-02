tomcat-server:
  pkg.installed:
    - name: tomcat6
    - enabled: True

tomcat-config:
  file.managed:
    - name: /etc/tomcat6/tomcat-users.xml
    - source: salt://tomcat/files/tomcat-users.xml
    - require:
      - pkg: tomcat-server

wait-for-tomcatmanager:
  tomcat.wait:
    - timeout: 300
    - require:
      - service: tomcat-server

merk:
  tomcat.war_deployed:
    - war: salt://tomcat/files/Merck2015_0430_TEST_1.war
    - url: http://localhost:8080/manager
    - require:
      - pkg: tomcat-server

tomcat-service:
  service.running:
    - name: tomcat6
    - watch:
      - file: tomcat-config
