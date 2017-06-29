#deploy jar

create_jar_dir:
  file.directory:
    - user: root
    - name: /java_app
    - group: root
    - mode: 777

deploy-jar:
  file.managed:
    - user: root
    - group: root
    - name: /java_app/steam_auto_deploy.sh
    - source: salt://steam/files/steam_auto_deploy.sh
    - mode: 777

run_jar:
  cmd.run:
    - name: /java_app/steam_auto_deploy.sh > /dev/null 2>&1 &
