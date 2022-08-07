#!/bin/bash
redes=$(sudo iwlist wlo1 s | grep ESSID | grep -oP '"\K[^"\047]+(?=["\047])' | nl )
echo "$redes"
# se podría ordenar de menor a mayor potencia, Después
read red 
red=$(echo "$redes"| awk -v r=$red 'FNR==r {for (i=2; i<=NF; i++) print $i}' | xargs | sed -e 's/\s\+/\\ /g')
echo "introduce la contraseña de $red: "
read password
nmcli d wifi connect $red password $password

