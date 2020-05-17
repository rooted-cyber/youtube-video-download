termux-setup-storage
R () {
	cd $PREFIX/bin
	if [ -e python ];then
	#cd ~/Termux-Hack-2
	#cd /sdcard/Gith*
	cd ~/youtube-video-download
	echo -e "\033[0m"
	python .random.py
	fi
	}
	set () {
		R
		printf "\n\n Installing..\n"
		apt update
		apt upgrade
		apt install python
		apt install figlet
		apt install wget
		cd ~/youtube-video-download
		pip install -r requirement.txt
		cd /sdcard
		mkdir youtube-video-download
		}
		menu () {
			R
			figlet Youtube
			echo
			R
			echo -e -n "Enter youtube video link: "
			read a
			if [ ! -z $a ];then
			cd /sdcard/youtube-video-download
			youtube-dl $a
			R
			printf "\nSaved ( /sdcard/youtube-video-download )"
			fi
			}
			cd /sdcard
			if [ -e youtube-video-download ];then
			menu
			else
			set
			fi