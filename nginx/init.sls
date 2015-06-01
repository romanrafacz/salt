nginx-server:
  pkg.installed:
    -name: nginx

nginx-service:
  service.running:
    -neable: True


