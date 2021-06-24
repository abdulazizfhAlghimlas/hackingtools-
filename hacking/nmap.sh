#! /bin/bash
clear
sudo apt install openssl 
sudo apt install nmap 
sudo apt install prettyping
sudo apt install traceroute
sudo apt install pdfcrack
sudo apt install fcrackzip
sudo apt install hashcat
figlet "TOOL FOR HACKING
       BY:ABDULAZIIZ FAHAD
"| lolcat

RED="\e[31m"

echo "
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Date: Jun 22, 2021 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% Weather: It's always cool in the lab %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Health: Overweight %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Caffeine: 12975 mg %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Hacked: Lots left %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" | lolcat

while true
do

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "main menu"

echo "+_+_+_+_+_+_+_+_+_"

echo "[1] kali information " 
echo "[2] nmap tools       "
echo "[3] check the connection"
echo "[4] cracking password"
echo "[5] what is the id hash"
echo "[6] encrypion and decryption"
echo "[0] For Exit"
echo "
"
echo "::::::::::::::::::::::::::::::::::::"
echo "Enter according to the values above"
read me

########################## 1111111111111111
if [[ "$me" = '1' ]]; then
       while true
       do
       echo "[1] vision and name only"
       echo "[2] full info kalii"
       echo "[0] to back "
       echo "_____________________________________"
       echo "Enter according to the values above"
       
       read infokali
       if [[ "$infokali" = '1' ]]; then  
              uname -a | lolcat
       elif [[ "$infokali" = '2' ]]; then
                screenfetch | lolcat
       elif [[ "$infokali" = '0' ]]; then
                break
       
       else 
                echo "please enter number" | lolcat         
       fi
       done
#################### 22222222222222222222222       
elif [[ "$me" = '2' ]]; then
         while true
         do 
         echo "******************************"
         echo "[1] full scann without vision" 
         echo "[2] full scann with vision"
         echo "[0] back to menu"
         read ipo
         if [[ "$ipo" = '1' ]]; then 
                echo "Enter the IP"
                read iip
                sudo nmap -sT $iip | lolcat
         elif [[ "$ipo" = '2' ]]; then 
                  echo "Enter the IP"
                  read iip
                  sudo nmap -sT -sV $iip | lolcat
         elif [[ "$ipo" = '0' ]]; then 
                  break
         
         else 
                  echo "please enter number" | lolcat
         fi
         done
         
################## 3333333333333333333

elif [[ "$me" = '3' ]]; then 
         while true
         do
         echo "[1] ping         "
         echo "[2] path tracing "
         echo "[0] back to menu "
         echo "_____________________________________"
         echo "Enter according to the values above"
         read ipp
         if [[ "$ipp" = '1' ]]; then
                echo "Enter the ip"
                read ipch
                prettyping -c 7 $ipch | lolcat 
         elif [[ "$ipp" = '2' ]]; then 
                  echo "Enter the target"
                  read targ
                  traceroute $targ | lolcat 
         elif [[ "$ipp" = '0' ]]; then 
                  break
         else 
                  echo "Please enter number" | lolcat
         fi 
         done          
################## 4444444444444444444
elif [[ "$me" = '4' ]]; then
         while true
         do 
         echo "[1] pdf crack         "
         echo "[2] zip crack "
         echo "[3] crack hash"
         echo "[4] cracking password OS"
         echo "[0] back to menu "
         echo "_____________________________________"
         echo "Enter according to the values above"
         read cra
         if [[ "$cra" = '1' ]]; then
                while true
                do
                echo "[1] Wrold list (rockyou)"
                echo "[2] Enter path of list  "
                echo "[0] back one step"
                echo "_____________________________________"
                echo "Enter according to the values above"
                read pdfst
                if [[ "$pdfst" = '1' ]]; then 
                       echo "Enter file with path"
                       read pp
                       pdfcrack -w /usr/share/wordlists/rockyou.txt -f $pp | lolcat
                elif [[ "$pdfst" = '2' ]]; then 
                         echo "word list path"
                         read wl
                         echo "---------------------"
                         echo "Enter file with path"
                         read pat
                         pdfcrack -w $wl -f $pat | lolcat
                elif [[ "$pdfst" = '0' ]]; then 
                          break
                else 
                         echo "Please enter number" | lolcat         
         
                fi
                done     
         
         elif [[ "$cra" = '2' ]]; then
                  echo "Enter zip name (with path)"
                  read fz
                  fcrackzip -u -b -c 1 -l 1-5 $fz  | lolcat
         
         
         elif [[ "$cra" = '3' ]]; then 
                  echo "_____________________________________"
                  echo "Enter wordlist file"
                  read word1
                  echo "_____________________________________"
                  echo "Enter hash"
                  read hashcat1
                  hashcat -a 0 -m 1000 "$hashcat1" $word1 
         elif [[ "$cra" = '4' ]]; then
                  echo "_____________________________________"
                  echo "Enter password file "
                  read pas
                  echo "Enter username file"
                  read usn
                  echo "Enter file name to save"
                  read fina
                  unshadow "$usn" "$pas" > "$fina" | lolcat
                  john "$fina" --format=crypt | lolcat 
                  john --show "$fina" | lolcat         
         
         elif [[ "$cra" = '0' ]]; then
                  break
         else 
                  echo "Please enter number" | lolcat         
         fi
         done
##################### 555555555555           
elif [[ "$me" = '5' ]]; then
         echo "Enter hash"
         read hashid1
         hashid "$hashid1" | lolcat  
       
################# 66666666666

#elif [[ "$me" = '6' ]]; then 
         while true
         do 
         echo "[1] creating you public and private key"
         echo "[2] encryption "
         echo "[3] decryption "
         echo "[0] back to menu"
         echo "_____________________________________"
         echo "Enter according to the values above"
         read ccry
         
         if [[ "$ccry" = '1' ]]; then 
                echo "Enter your private file name"
                read priv
                openssl genrsa -out "$priv".pem 1024 | lolcat
                echo "
                "
                echo "Enter your public file name "
                read pub
                openssl rsa -in $priv.pem -out $pub.pem -outform PEM -pubout | lolcat
                echo "
                "
                echo "you public : $pub.pem and | private : $priv.pem" | lolcat
                
         elif [[ "$ccry" = '2' ]]; then 
                 echo "Enter the public key file"
                 read pkey
                 echo "Enter the file"
                 read fpath
                 echo "Enter the file name to save (after encryption)"
                 read fnaa
                 openssl rsautl -encrypt -inkey "$peky" -in "$fpath" -out "$fnaa".dat | lolcat
         elif [[ "$ccry" = '3' ]]; then 
                  echo "Enter you private key (file name with .pem)"
                  read fprivate
                  echo "Enter the file"
                  read profile
                  echo "Enter the file name to save (after decryption)"
                  read Fna
                  openssl rsautl -decrypt -inkey "$fprivate" -in "$profile" -out "$Fna" | lolcat 
                                   
         
         elif [[ "$ccry" = '0' ]]; then
                  break 
         
         
         else    
                 echo "Please enter number" | lolcat
         fi
         done        
       
       
                       
################ 0000000000000 exit          
elif [[ "$me" = '0' ]]; then
         echo "
         "
         echo "##################### BY: AZIIZ #####################" | lolcat
         echo "
         "
         break
                    
else
         echo "******************************"
         echo "Please enter number" | lolcat
         
         

fi



done
#echo "Black="\e[30m" Red="\e[31m" Green="\e[32m" Mangenta="\e[35m" Black="\e[30m" Yellow="\e[33m" Blue="\e[33m" Cyan="\e[36m" Lightgray="\e[37m" Gray="\e[90m" Lightred="\e[91m" Lightgreen="\e[92m" Lightyellow="\e[93m" Lightblue="\e[94m" Lightmangenta"\e[95m" Lightcyan="\e[96m" White="\e[97m" ENDCOLOR="\e[0m"
#"

