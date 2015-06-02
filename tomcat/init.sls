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

tomcat-service:
  service.running:
    - name: tomcat6
    - watch:
      - file: tomcat-config

tomcat:
  tomcat.war_deployed:
    - name: /Merk
    - war: salt://tomcat/files/Merck2015_0430_TEST_1.war
