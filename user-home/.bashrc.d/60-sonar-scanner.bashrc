#!/usr/bin/env bashrc

if [[ "$OSTYPE" == "darwin"* ]]; then
    SONAR_SCANNER_HOME="$(brew --prefix sonar-scanner)"
else 
    SONAR_SCANNER_HOME="/opt/sonar-scanner"
fi
export SONAR_SCANNER_HOME
export PATH="$PATH:$SONAR_SCANNER_HOME/bin"
