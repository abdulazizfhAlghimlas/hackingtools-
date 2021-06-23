#! /bin/bash
clear

figlet "TOOL FOR HACKING
       BY:ABDULAZIIZ FAHAD
       IN : TECHCAMPUS.COM
            
"| lolcat

echo "
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Date: Jun 22, 2021 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% Weather: It's always cool in the lab %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Health: not important %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Caffeine: 0 mg %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Hacked: Lots left %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" | lolcat

while true
do

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "main menu" | lolcat

echo "
"
echo "[1] kali information " 
echo "[2] nmap tools       "
echo "[3] check the connection"
echo "[4] cracking password"
echo "[9] For Exit"
echo "
"
echo "::::::::::::::::::::::::::::::::::::"
echo "Enter according to the values above"
read me

########################## 1111111111111111
if [[ "$me" = '1' ]]; then
       while true
       do
       echo "info" | lolcat
       echo "[1] version and name only"
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
         echo "
         "
         echo "nmap tools" | lolcat
         echo "******************************"
         echo "[1] full scann without vision" 
         echo "[2] full scann with vision"
         echo "[0] back to menu"
         read ipo
         if [[ "$ipo" = '1' ]]; then 
                echo "full scann without vision" | lolcat
                echo "Enter the IP"
                read iip
                sudo nmap -sT $iip | lolcat
         elif [[ "$ipo" = '2' ]]; then 
                  echo "full scann with vision" | lolcat
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
         echo "
         "
         echo "check the connection" | lolcat
         echo "[1] ping         "
         echo "[2] path tracing "
         echo "[0] back to menu "
         echo "_____________________________________"
         echo "Enter according to the values above"
         read ipp
         if [[ "$ipp" = '1' ]]; then
                echo "ping" | lolcat
                echo "Enter the ip"
                read ipch
                prettyping -c 7 $ipch | lolcat 
         elif [[ "$ipp" = '2' ]]; then 
                  echo "path tracing" | lolcat
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
elif [[ "$me" = 4 ]]; then
         while true
         do
         echo "
         "
         echo "cracking password" | lolcat 
         echo "[1] pdf crack         "
         echo "[2] zip crack "
         echo "[0] back to menu "
         echo "_____________________________________"
         echo "Enter according to the values above"
         read cra
         if [[ "$cra" = '1' ]]; then
                while true
                do
                echo "pdf crack" | lolcat
                echo "[1] Wrold list (rockyou)"
                echo "[2] Enter path of list  "
                echo "[0] back one step"
                echo "_____________________________________"
                echo "Enter according to the values above"
                read pdfst
                if [[ "$pdfst" = '1' ]]; then 
                       echo "pdf crackig" | lolcat
                       echo "Enter file with path"
                       read pp
                       pdfcrack -w /usr/share/wordlists/rockyou.txt -f $pp | lolcat
                elif [[ "$pdfst" = '2' ]]; then 
                         echo "pdf crackig" | lolcat
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
                  echo "zip cracking" | lolcat
                  echo "Enter zip name (with path)"
                  read fz
                  fcrackzip -u -b -c 1 -l 1-5 $fz  | lolcat
         
         elif [[ "$cra" = '0' ]]; then
                  break
         else 
                  echo "Please enter number" | lolcat         
         fi
         done
           
                
################ 999999999999999999999         
elif [[ "$me" = '9' ]]; then
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


