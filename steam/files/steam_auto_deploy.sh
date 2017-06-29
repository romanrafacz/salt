APP_DIR=/java_app
STEAM_DIR=$APP_DIR/steam

if [ ! -d "$APP_DIR" ]; then
  mkdir $APP_DIR;
fi

if [ ! -d "$STEAM_DIR" ]; then
  init=true
  cd $APP_DIR && pwd && git clone https://github.com/romanrafacz/steam.git
  cd $STEAM_DIR
  sudo mvn clean install
  java -Dspring.profiles.active=dev -jar $STEAM_DIR/target/steamboat-0.0.1-SNAPSHOT.jar
  exit 1
else
  cd $STEAM_DIR
  sudo mvn clean install
  java -Dspring.profiles.active=dev -jar $STEAM_DIR/target/steamboat-0.0.1-SNAPSHOT.jar
  exit 1
fi

