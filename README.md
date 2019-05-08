+ 아마존 AWS EC2 서버에서 우분투 OS 루트 관리자 계정 만들기 순서


    $ sudo passwd   
    $ su -
    $ sudo nano /etc/ssh/sshd_config      
        PermitRootLogin yes          
        #StrictModes yes
    $ sudo cp /home/ubuntu/.ssh/authorized_keys /root/.ssh
    $ sudo service ssh restart



# TTC Supernode setting
https://github.com/TTCECO/gttc/wiki/Building-GTTC

https://medium.com/@RidhamTarpara/install-go-1-11-on-ubuntu-18-04-16-04-lts-8c098c503c5f

https://github.com/TTCECO/gttc/wiki/HOWTO-BUILD-SUPERNODE
