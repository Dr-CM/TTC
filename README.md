# 아마존 AWS EC2 서버에서 우분투 OS 루트 관리자 계정 만들기 순서


    $ sudo passwd  
    
    $ su -
    
    $ sudo nano /etc/ssh/sshd_config      
    
        PermitRootLogin yes          
        
        #StrictModes yes
        
    $ sudo cp /home/ubuntu/.ssh/authorized_keys /root/.ssh
    
    $ sudo service ssh restart
    

# TTC Supernode setting

## Go install
```
sudo apt-get update
sudo apt-get -y upgrade
```

```
cd /tmp
wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
```

```
sudo tar -xvf go1.12.6.linux-amd64.tar.gz
sudo mv go /usr/local
```

```
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
```

```
source ~/.profile
```

# install GTTC
https://github.com/TTCECO/gttc/wiki/Building-GTTC

https://github.com/TTCECO/gttc/wiki/HOWTO-BUILD-SUPERNODE
# ubuntu 보안 설정
https://conory.com/blog/42440
