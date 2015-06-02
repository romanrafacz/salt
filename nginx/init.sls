nginx-server:
  pkg.installed:
    - name: nginx

nginx-service:
  service.running:
    - name: nginx
    - enable: True


