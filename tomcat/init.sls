tomcat-server:
  pkg.installed:
    - name: tomcat6
    - enabled: True

tomcat-service:
  service.running:
    - name: tomcat6
