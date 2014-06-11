ldap:
  pkg:
    - installed
    {% if grains['os_family'] == 'RedHat' %}
    - pkgs:
      - openldap.servers
      - openldap.clients
    {% elif grains['os_family'] == 'Debian' %}
    - name: ldap-utils
    {% else %}
    - name: openldap
    file:
      - mangaged:
      {% elif grains['os_family'] == 'Debian' %}
      - name: /etc/ldap/ldap.conf
      {% else %}
      - name: /etc/openldap/ldap.conf
      {% endif %}
      - source: salt://openldap/files/ldap.conf
      - template: jinja
      - user: root
      - mode: 644
      - group: root
      - makedirs: True
      - require:
        pkg: ldap

