#this program was written by gautam s
#location godav 464 iit madras
#time 11.32am 8 november, 2016
#this program is for installing the basic required softwares for a new ubuntu system

echo "Welcome to my installation script"
echo "-----------------------------------------"
echo "please make yourself available throughout so that you can answer the prompts"
echo "-----------------------------------------"
printf "\nChecking if your OS is the latest version.\n\nit is advised that you check the 'For any new version' in 'Notify me of a new Ubuntu version' under 'Updates' tab in 'Softwares and Updates' in 'Settings'"
echo "type y and press [ENTER] when you are ready"
read go

#repositories

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3 #for sublime text 3
sudo add-apt-repository -y ppa:yannubuntu/boot-repair #for boot repair, in case you need it
sudo ./soft_ubuntu.sh
