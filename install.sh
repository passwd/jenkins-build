#/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -f $HOME/.jenkins-config ]; then
  cp $DIR/config-sample $HOME/.jenkins-config
fi

touch /etc/jenkins
chmod u+x $DIR/jenkins
cp $DIR/jenkins /usr/local/bin/

if [ -f /usr/local/bin/jenkins ]; then
  echo 'Install successful!'
else
  echo 'Could not install script'
fi

exit