#! /bin/bash
clear
#hostname
sysinfo_host=`echo $HOSTNAME`
printf "Hostname: %s\n" $sysinfo_host
printf "\n\n"
#IP
sysinfo_ip=`hostname -I | cut -d' ' -f1`
printf "IP: %s\n" $sysinfo_ip
printf "\n\n"
#who are these guys? 0_0
printf "Logged in users:\n"
who | cut -d' ' -f1 | sort | uniq
printf "\n\n"
#uptime
printf "Server uptime:\n"
uptime -p
printf "\n\n"
#load average
printf "Average load:\n"
cat /proc/loadavg 
printf "\n\n"
#статистику по оперативной памяти и подкачке
printf "Memory:\n"
free -h
printf "\n\n"
#дисках
printf "Disks:\n"
df -h
