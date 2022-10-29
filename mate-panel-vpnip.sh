# script that shows your IP when connected to a VPN
# to get this to run on Parrot OS, will need to turn into a binary

!/bin/sh

ip="$(ip a s tun0 2>/dev/null | grep -o -P '(?<=inet )[0-9]{1,3}(\.[0-9]{1,3}){3}')"
 
if [ "$ip" != "" ]; then
  printf "🔒    ${ip}"
  
else
  printf ""
fi
