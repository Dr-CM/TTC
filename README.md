# 아마존 AWS EC2 서버에서 우분투 OS 루트 관리자 계정 만들기 순서


    $ sudo passwd  
    
    $ su -
    
    $ sudo nano /etc/ssh/sshd_config      
    
        PermitRootLogin yes          
        
        #StrictModes yes
        
    $ sudo cp /home/ubuntu/.ssh/authorized_keys /root/.ssh
    
    $ sudo service ssh restart
    
#보안설정
```
apt-get install fail2ban
systemctl enable fail2ban
systemctl start fail2ban
nano /etc/fail2ban/jail.conf
service fail2ban restart
```
```
chmod 100 /bin/ps
chattr +i /bin/ps
chmod 100 /bin/ping
chmod 100 /bin/ping6
chmod 750 /usr/sbin/useradd
chmod 750 /usr/sbin/userdel
chmod 750 /usr/sbin/usermod
chmod 750 /usr/bin/top
chmod 750 /sbin/fdisk
chmod 750 /sbin/mkfs*
chmod 750 /sbin/fsck*
chmod 100 /usr/bin/pstree 
chmod 100 /usr/bin/w 
chmod 100 /usr/bin/who 
chmod 100 /usr/bin/find 
chmod 100 /bin/df 
chmod 100 /bin/netstat 
chmod 100 /sbin/ifconfig 
chmod 100 /usr/bin/make
chmod 700 /usr/bin/wget 
chmod 700 /usr/bin/curl
chattr +i /usr/sbin/useradd
chattr +i /usr/sbin/userdel
chattr +i /usr/sbin/usermod
chattr +i /usr/bin/top
chattr +i /sbin/fdisk
chattr +i /sbin/mkfs*
chattr +i /sbin/fsck*
```
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
