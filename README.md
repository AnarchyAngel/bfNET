# bfNET
As anyone who is familiar with exploiting a MS .NET Remoting service, they know finding the correct service name can be a pain without the source code. If you don't know what it is Google is a good place to start. The tool ExploitRemotingService makes the job a snap, but it still has the limitation of needing the right service name, and brute forcing by hand is just crazy. 
I wanted to hack up something to make it less painful, so I searched the web for common object names, then searched github for MS .NET Remoting apps and added the names they were using as well. Then coded up a little bash script that uses the ExploitRemotingService tool and loops through the list I compiled. Testing so far shows it works like a charm with a few bugs. I hope someone gets use of it. 

Usage: ./bfNET ip.addr port
