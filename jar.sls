#deploy jar

create_jar_dir:
  file.directory:
    - user: root
    - name: /java_app
    - group: root
    - 755

deploy-jar:
  file.managed:
    - name: /java_app/name.jar
    - source: salt://steam/steam/target/steamboat-0.0.1-SNAPSHOT.jar 

#run_jar:
#  cmd.run:
#    - name: "java -jar /java_app/name.jar"
