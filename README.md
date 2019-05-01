+ 아마존 AWS EC2 서버에서 우분투 OS 루트 관리자 계정 만들기 순서
1. 아마존 서버 접속
    Putty 터미널로 서버에 접속합니다.


2. ubuntu 사용자 아이디로 로그인
    login as: 가 나오면 ubuntu를 입력하고 엔터를 칩니다.
    그럼 ubuntu 사용자 아이디로 바로 로그인됩니다.


3. 루트 관리자 계정 생성
    $ sudo passwd
    
    sudo passwd를 입력하고 엔터치면 패스워드를 입력하라고 나옵니다. 
   루트 관리자용으로 사용할 패스워드를 입력해 주세요.

    $ su -

    su - 를 입력하고 엔터치면 루트 관리자 패스워드를 입력하라고 나옵니다. 
    루트 관리자 패스워드 입력을 하고 엔터치면 바로 루트 관리자로 로그인합니다.


4. SSH 환경설정파일 수정
    $ sudo nano /etc/ssh/sshd_config
    nano 텍스트에디터로 SSH 터미널용 환경설정파일을 엽니다.
    
    설정 내용 중 PermitRootLogin without-password 라인을 찾고 아래와 같이 수정합니다.
    나노 에디터에서 찾기는 Ctrl키와 W키를 함께 누르면 아래쪽에 키워드로 검색할 수 있습니다.
    검색하면 바로 해당 위치 라인에 커서가 이동합니다.
    그 다음에 수정하시면 찾는 시간을 줄일 수 있어서 효율적입니다.    
    
    PermitRootLogin yes
    
    StrictModes yes 라인을 찾고 아래와 같이 수정합니다. 
    # 표시는 주석처리로 해당 라인을 비활성화 처리 합니다.
    
    #StrictModes yes

    nano 텍스트에디터 모드 종료
    Ctrl키와 X키를 함께 누르면 에디터 모드가 종료되고 프롬프트 화면으로 빠져나옵니다.


5. Ubuntu 기본 사용자 계정 관련 개인키를 루트 관리자 계정으로 복사   
    $ sudo cp /home/ubuntu/.ssh/authorized_keys /root/.ssh


6. SSH 서비스 재시작
    $ sudo service ssh restart


7.  Putty 터미널을 종료
    그냥 터미널 창을 닫아 터미널을 종료합니다.


8. Putty 터미널을 다시 새로 띄우기
    putty 터미널을 열고 아마존 서버에 접속합니다.


9. 루트 관리자 계정으로 로그인
    login as: 가 나오면 root를 입력하고 엔터를 칩니다.
    그럼 root 관리자 아이디로 바로 로그인됩니다.


10. 끝.
     이제부턴 아마존 서버 접속시 login as : ubuntu로 로그인하지 말고 root로 바로 로그인 하세요.
# TTC Supernode setting
https://github.com/TTCECO/gttc/wiki/Building-GTTC

https://medium.com/@RidhamTarpara/install-go-1-11-on-ubuntu-18-04-16-04-lts-8c098c503c5f

https://github.com/TTCECO/gttc/wiki/HOWTO-BUILD-SUPERNODE
