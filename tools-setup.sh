#!/bin/bash

echo "installing sdkman"
curl -s "https://get.sdkman.io" | bash
echo "source \"$HOME/.sdkman/bin/sdkman-init.sh\"" >> /etc/profile

echo "install Node Version Manager"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
echo "add the code below to /etc/profile to enable NVM on terminal startup\n"
cat << EOL
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh" 

EOL

echo "installing jdk-17"
sdk install java 17.0.7-jbr
