# https://docs.docker.com/engine/install/ubuntu/
# Script to install Docker CE and Docker Compose used by project

apt-get update

apt-get install  \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-compose
docker run hello-world

# To install a specfic version of docker:
# Gett available versions:
# $ apt-cache madison docker-ce
# From output above, install specific verseion:
# $ app-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io


