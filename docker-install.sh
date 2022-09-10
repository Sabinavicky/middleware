#Author Sabina, Email..........., UID.................
#Date september 10-2022
## Description ------------ docker installation

echo "step1 make sure to remove any previous docker software in your system"
sleep2
 sudo yum remove docker  docker-client docker-client-latest docker-common  docker-latest docker-latest-logrotate  docker-engine      
sleep2
 sudo yum install -y yum-utils
sleep2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
sleep2
sudo yum install docker-ce docker-ce-cli containerd.io -y

if
  [ $? -eq 0 ]
then

echo" you need to run this command"
  sudo systemctl start docker
exit2
fi
sleep2
sudo systemctl enable docker
sleep2

sudo systemctl status docker
sleep2
echo" docker software succefully install, now you can run your container"