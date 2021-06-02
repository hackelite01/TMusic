#!/bin/bash
while :
do
clear
echo -e "\e[1;31m"
echo '                                 echo '                 mm          
echo '@@@**@@**@@@*@@@@m     m@@@*     echo '                 @@          
echo '@*   @@   *@  @@@@    @@@@       echo '                             
echo '     @@       @ @@   m@ @@  *@@@ echo ' *@@@   m@@*@@@*@@@   m@@*@@ 
echo '     !@       @  @!  @* @@    @@ echo '   @@   @@   **  @@  @@*  @@ 
echo '     !@       !  @!m@*  @@    !@    @@ echo '  *@@@@@m  !@  @!      
echo '     !@       !  *!@*   @@    !@ echo '   @!        @@  !@  @!m    m
echo '     !@       !  !!!!*  !!    !@ echo '   !!   *!   @!  !!  !!      
echo '     !!       :  *!!*   !!    !! echo '   !!   !!   !!  !!  !:!    !
echo '   : :!::   : ::: :   : :::   :: echo '!: :!:  : :!:  : : :  : : :  
                                    
echo -e "\e[1;32m"
echo 'Press 1 to  Install Dependencies'
echo 'Press 2 to  Continue To TMusic'
echo 'Press 3 to  Add TMusic To Bin'
echo 'Press 4 to  Update TMusic'
echo 'Press 5 for Help'
echo 'Press 6 to  Exit'
echo
echo -e "\e[1;34m"
read -p 'select_option >' opt
echo -e "\e[1;33m"
if [ $opt -eq 1 ];then
echo 'Make Sure You Have Installed Termux:API From PlayStore ...'
read -p 'Have You Installed Termux:API From Play Store (Y/N) : ' cho
if [ "$cho" = "Y" ] || [ "$cho" = "y" ] ;then
apt update && apt upgrade
apt install figlet git toilet curl python2 -y
pkg install termux-api
termux-setup-storage
if [[ -s $PREFIX/bin/termux-media-player ]] ;then
echo 'All Dependencies installed...'
read -p 'Do you want to add TMusic To bin (Y/N): ' ch
if [ "$ch" = "Y" ] || [ "$ch" = "y" ] ;then
echo 'cd' $PWD '&& python2 music.py' >$PREFIX/bin/tmusic
echo 'exit' >$PREFIX/bin/tmusic
chmod +x $PREFIX/bin/ymusic
echo 'Added tmusic to bin !!'
echo 'Now You Can Launch TMusic just by typing \e[1;31mtmusic\e[1;33m anywhere!!!'
read -p 'Press Enter Key To Continue..' k
fi
else
echo 'Please Install Termux:API from PlayStore To Proceed...'
read -p 'Press Enter Key To Continue..' k
fi
else
echo 'Please Install Termux:API from PlayStore To Proceed...'
read -p 'Press Enter Key To Continue..' k
fi
elif [ $opt -eq 2 ];then
termux-setup-storage
python2 music.py
exit
elif [ $opt -eq 3 ];then
echo 'cd' $PWD '&& python2 music.py' >$PREFIX/bin/tmusic
echo 'exit' >$PREFIX/bin/tmusic
chmod +x $PREFIX/bin/tmusic
termux-setup-storage
echo 'Added tmusic to bin !!'
echo -e 'Now You Can Launch TMusic just by typing \e[1;31mtmusic\e[1;33m anywhere!!!'
read -p 'Press Enter Key To Continue..' k
elif [ $opt -eq 4 ];then
apt install git -y
git clone https://github.com/hackelite01/TMusic
echo -e "\e[1;34m Downloading Latest Files..."
if [[ -s TMusic/setup.sh ]];then
cd TMusic
cp -r -f * .. > temp
cd ..
rm -rf  TMusic >> temp
rm update.hackelite >> temp
rm temp
chmod +x setup.sh
./setup.sh
fi
echo -e "\e[1;32m The Script Will Now Restart Please Choose Install Depedencies (option 1) To Verify the Working Of TMusic..."
echo -e "\e[1;34m Press Enter To Proceed To Restart..."
read a6
exit
elif [ $opt -eq 5 ];then
cat README.md
read -p 'Press Enter Key To Continue..' k
elif [ $opt -eq 6 ];then
clear
echo -e "\e[1;34m Created By HackElite\e[0m"
echo -e "\e[4;32m This Player Was Created By HackElite \e[0m"
echo -e "\e[1;34m For Any Queries Msg Me!!!\e[0m"
echo -e "\e[1;32m           Telegram: t.me/mayank_ka_b_for_bot \e[0m"
echo -e "\e[1;31m       Channel: https://t.me/hsckel \e[0m"
echo -e "\e[1;33m   YouTube Page: https://youtube.com/channel/UCctC7DrSBTHcc8R-BrB9qRg \e[0m"
echo " "
exit 0
else
echo -e "\e[4;32m Invalid Input !!! \e[0m"
echo "Press Enter To Go Home"
read a3
clear
fi
done
