#deploy jar

create_jar_dir:
  file.directory:
    - user: root
    - name: /java_app
    - group: root
    - 755

deploy-jar:
  file.managed:
    - name: /java_app/stacks_auto_deploy.jar
    - source: salt://stacks/stacks/stacks_auto_deploy.sh 

run_jar:
  cmd.run:
    - name: "/java_app/stacks_auto_deploy.sh"
