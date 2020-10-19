#!/bin/bash

#Init of functions
  create_workstation_debian()
  {

    #Removing apt locks
      sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;
    #;;

    #Bases of system
      apt install arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip -y; apt install snapd -y;
      apt install nvidia-driver-435 -y; apt install synaptic -y; apt install gparted -y; apt install qbittorrent -y;
      dpkg --add-architecture i386; apt update; apt install aptitude build-essential most cups-pdf poppler-utils -y;
      apt install net-tools -y; apt install git -y; apt install gufw -y; apt install pv -y;  apt install postgresql -y; apt install mongodb -y;
      apt install virtualbox -y; apt-get install apt-transport-https;
      export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
    #;

    #Security tools
      apt install nmap -y; apt install zenmap -y; apt install tcpdump -y;
      apt install sqlmap -y; apt install dirb -y; apt install netcat -y;
      apt install crunch -y; apt install whois -y; apt install nikto -y;
      apt install dnsenum -y; apt install iptables -y; apt install whois -y;
    #;

    #Media tools
      apt install libreoffice -y; apt install gimp -y; apt install blender -y;
      apt install audacity -y; apt install openshot -y;
      apt install kdenlive -y; apt install simplescreenrecorder -y; apt install vlc -y;
    #;

    #Install langs c,c++,c#,python,perl, java, kotlin,dart,ruby, assembly and tools
      apt install gcc -y; apt install g++;  wget -c https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
      sudo dpkg -i packages-microsoft-prod.deb; sudo apt-get install aspnetcore-runtime-3.1; apt update; sudo apt-get install dotnet-runtime-3.1;
      apt install python3 -y; apt update; sudo apt-get install dotnet-sdk-3.1 apt install perl -y; sudo apt-get install openjdk-8-jdk -y;
      apt install default-jre; snap install --classic kotlin;
      sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -';
      sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list';
      sudo apt-get update;  sudo apt-get install dart; export PATH="$PATH:/usr/lib/dart/bin";
      echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile; apt install ruby; apt install nasm;
    #;

    #Ides, editors
      apt install codeblocks; -y; apt apt install idle3 -y; sudo snap install android-studio --classic;
      apt install netbeans -y; snap install code --classic; snap install intellij-idea-community --classic --edge;
      snap install atom
    #;;

    #Install frameworks
      apt install nodejs; apt install npm; npm install -g react-cli; npm install -g react-native-cli;
      npm install -g expo-cli apt install composer -y;
    #;

    #Confing to android
      export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
    #

  }


  create_workstation_fedora()
  {
    echo "Nothing here yet";
  }


  create_workstation_suze()
  {
    echo "Nothing here yet";
  }

#;;

#Init of script
  echo "##===========================##";
  echo "##== 1) Debian workstation ==##";
  echo "##== 2) Fedora workstation ==##";
  echo "##== 3) Suze workstation   ==##";
  echo "##===========================##";
  read -p "Option: " option;

  case $option in

    1)
      create_workstation_debian
    ;;

    2)
      create_workstation_fedora
    ;;

    3)
      create_workstation_suze
    ;;

    *)
      echo "Option no avaible";
    ;;
  esac
#;;
