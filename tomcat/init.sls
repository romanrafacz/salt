tomcat-server:
  pkg.installed:
    - name: tomcat6

tomcat-service:
  service.running:
    - name: tomcat6
