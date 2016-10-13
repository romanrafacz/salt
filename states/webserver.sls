http:
  pkg:
    - installed
  file:
    - managed
    - name: /etc/httpd/conf/httpd.conf
    - user: root
    - group: root
    - mode: 644
  service:
    - running
    - watch:
      - file: httpd

httpd_pool_update:
  event:
    - wait
    - name: frontend/loadbalance/pool/update
    - data:
      new_web_server_ip: {{ salt['grains.get']('ip4_interfaces')['enp0s8'][0] }}
    - watch:
      - service: httpd
