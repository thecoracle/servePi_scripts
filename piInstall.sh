#!/bin/bash

##################################################
# Script: piSetup.sh
# Author: TheCoracle
# Creation Date: 2018-03-28
# Edit: 
#
# Purpose: Run script to setup each type of pi project
# so you don't have to manually install everything
#
# Notes:
##################################################

export PATH="$PATH:/home/TheMacPC/scripts/"

#COLORS
# No Colors
NC='\033[0m'

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan

    set -eu -o pipefail # fail on error , debug all lines

    sudo -n true
    test $? -eq 0 || exit 1 "you should have sudo priveledge to run this script"
    
    PS3='What Pi do you need?'
while :
do
    clear
    rasPis=("carPi ${pi[1]}" "kaliPi ${pi[2]}" "mediaPi ${pi[3]}" "mobiPi ${pi[4]}" "octoPi ${pi[5]}" "servePi ${pi[6]}" "Done")
    select opt in "${rasPis[@]}"
    do
        case $opt in
            "carPi ${pi[1]}")
                choice 1
                break
                ;;
            "kaliPi ${pi[2]}")
                echo -e ${Red} "Hey $USER! Let's get all the Kali Tools we can!" ${NC}
    			echo -e ${Red} "It's probably a good idea to check for updates first... Dont't worry, I got this" ${NC}
    			echo -e "\n"
    			while read -r p ; do sudo apt-get -u -y $p ; done < <( cat << "EOF"
        			update
        			upgrade 
				EOF
				)

			    sleep 2
			    echo -e "\n"
			    echo -e ${Cyan} "Here's all the tools from Kali-linux-forensic" ${NC}
			    echo -e "\n"

			    while read -r p ; do sudo apt-get install -y $p ; done < <( cat << "EOF"
				afflib-tools
				apktool
				autopsy
				bulk-extractor
				cabextract
				chkrootkit
				creddump
				dc3dd
				dcfldd
				ddrescue
				dissy
				dumpzilla
				edb-debugger
				ewf-tools
				exiv2
				extundelete
				fcrackzip
				firmware-mod-kit
				flasm
				foremost
				galleta
				gdb
				gparted
				guymager
				hashdeep
				inetsim
				iphone-backup-analyzer
				jad
				javasnoop
				libhivex-bin
				lvm2
				lynis
				magicrescue
				mdbtools
				memdump
				missidentify
				nasm
				ollydbg
				p7zip-full
				parted
				pasco
				pdfid
				pdf-parser
				pdgmail
				python-capstone
				python-distorm3
				python-peepdf
				pev
				polenum
				radare2
				readpst
				recoverjpeg
				reglookup
				regripper
				rifiuti
				rifiuti2
				samdump2
				safecopy
				scalpel
				scrounge-ntfs
				sleuthkit
				smali
				sqlitebrowser
				tcpdump
				tcpflow
				tcpick
				tcpreplay
				truecrack
				unrar | unar
				upx-ucl
				vinetto
				volafox
				volatility
				wce
				wireshark
				xplico
				yara
				EOF
				)

					sleep 2
					echo -e "\n"
					echo -e ${Cyan} "Here's all the tools from Kali-gpu" ${NC}
					echo -e "\n"
					oclgausscrack
					oclhashcat
					pyrit
				#	truecrack
				EOF
				)

					sleep 2
					echo -e "\n"
					echo -e ${Cyan} "Here's all the tools from Kali-linux-pwtools" ${NC}
					echo -e "\n"
				#	kali-linux-gpu
					chntpw
					cmospwd
					crunch
					findmyhash
					gpp-decrypt
					hash-identifier
					hashcat
					hashcat-utils
					hashid
					hydra
					hydra-gtk
					john
					johnny
					keimpx
					maskprocessor
					medusa
					mimikatz
					ncrack
					ophcrack
					ophcrack-cli
					pack
					passing-the-hash
					patator
					pdfcrack
					pipal
				#	polenum
					rainbowcrack
					rarcrack
					rcracki-mt
					rsmangler
				#	samdump2
					seclists
					sipcrack
					sipvicious
					sqldict
					statsprocessor
					sucrack
					thc-pptp-bruter
				#	truecrack
					twofi
				#	wce
					wordlists
				EOF
				)

					sleep 2
					echo -e "\n"
					echo -e ${Cyan} "Here's all the tools from Kali-linux-rfid" ${NC}
					echo -e "\n"
					libfreefare-bin
					libnfc-bin
					mfcuk
					mfoc
					mfterm
					python-rfidiot
				EOF
				)


					sleep 2
					echo -e "\n"
					echo -e ${Cyan} "Here's all the tools from Kali-linux-sdr" ${NC}
					echo -e "\n"
					chirp
					gnuradio
					gqrx-sdr
					gr-osmosdr
					gr-iqbal
					hackrf
					kalibrate-rtl
					libgnuradio-baz
					multimon-ng
					rtlsdr-scanner
					uhd-host
					uhd-images
				EOF
				)

					sleep 2
					echo -e "\n"
					echo -e ${Cyan} "Here's all the tools from Kali-linux-voip" ${NC}
					echo -e "\n"
					ace-voip
					dnmap
					enumiax
					iaxflood
					inviteflood
					libfindrtp
					nmap
					ohrwurm
					protos-sip
					rtpbreak
					rtpflood
					rtpinsertsound
					rtpmixsound
					sctpscan
					siparmyknife
				#	sipcrack
					sipp
				#	sipvicious
					voiphopper
				#	wireshark
				EOF
				)

					sleep 2
					echo -e "\n"
					echo -e ${Cyan} "Here's all the tools from Kali-linux-web" ${NC}
					echo -e "\n"
					apache2
					apache-users
					arachni
					automater
					bbqsql
					beef-xss
					blindelephant
					burpsuite
					cadaver
					clusterd
					cookie-cadger
					cutycapt
					davtest
					default-mysql-server
					dirb
					dirbuster
				#	dnmap
					dotdotpwn
					eyewitness
					ftester
					funkload
					golismero
					grabber
					hamster-sidejack
					hexorbase
					http-tunnel
					httprint
					httrack
				#	hydra
				#	hydra-gtk
					jboss-autopwn
					joomscan
					jsql-injection
					laudanum
					lbd
					maltego
					maltego-teeth
				#	medusa
					mitmproxy
				#	ncrack
					nikto
					nishang
				#	nmap
					oscanner
					owasp-mantra-ff
					padbuster
					paros
				#	patator
					php
					php-mysql
					plecost
					powerfuzzer
					proxychains
					proxystrike
					proxytunnel
					python-halberd
					redsocks
					sidguesser
					siege
					skipfish
					slowhttptest
					sqlmap
					sqlninja
					sqlsus
					sslcaudit
					ssldump
					sslh
					sslscan
					sslsniff
					sslstrip
					sslsplit
					sslyze
				#	sqlitebrowser
				#	sqldict
					stunnel4
					thc-ssl-dos
					tlssled
					tnscmd10g
					ua-tester
					uniscan
					vega
					wafw00f
					wapiti
					webacoo
					webhandler
					webscarab
					webshells
					weevely
					wfuzz
					whatweb
				#	wireshark
					wpscan
					xsser
					zaproxy
				EOF
				)

					sleep 2
					echo -e "\n"
					echo -e ${Cyan} "Here's all the tools from Kali-linux-wireless" ${NC}
					echo -e "\n"
				#	ali-linux-sdr
					aircrack-ng
					asleap
					bluelog
					blueranger
					bluesnarfer
					bluez
					bluez-hcidump
					btscanner
					bully
					cowpatty
					crackle
					eapmd5pass
					fern-wifi-cracker
					giskismet
					iw
					killerbee
					kismet
				#	libfreefare-bin
				#	libnfc-bin
					macchanger
					mdk3
				#	mfcuk
				#	mfoc
				#	mfterm
				#	oclhashcat
				#	pyrit
				#	python-rfidiot
					reaver
					redfang
					rfcat
					rfkill
					sakis3g
					spectools
					spooftooph
					ubertooth
					wifi-honey
					wifitap
					wifite
				#	wireshark
				EOF
				)

				break
				;;
			"mediaPi ${pi[3]}")
				choice 3
				break
				;;
			"mobiPi ${pi[4]}")
				choice 4
				break
				;;
			"octoPi ${pi[5]}")
				choice 4
				break
				;;
			"servePi ${pi[6]}")
				choice 4
				break
				;;
			"Done")
				break 2
				;;
			*) printf '%s\n' 'invalid option';;
		esac
	done
done

printf '%s\n' 'rasPis chosen:'
for opt in "${!ip[@]}"
do
	if [[ ${pi[opt]} ]]
	then
		printf '%s\n' "rasPi $opt"
	fi
done




choice () {
    local choice=$1
    if [[ ${pi[choice]} ]] # toggle
    then
        pi[choice]=
    else
        pi[choice]=◉
    fi
}

