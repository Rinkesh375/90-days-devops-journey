/*


| Protocol  | Full Form                   | Port    | Use                    |
| --------- | --------------------------- | ------- | ---------------------- |
| **HTTP**  | HyperText Transfer Protocol | **80**  | Website (non-secure)   |
| **HTTPS** | HTTP Secure                 | **443** | Secure website 🔒      |
| **FTP**   | File Transfer Protocol      | **21**  | File transfer          |
| **SSH**   | Secure Shell                | **22**  | Remote server login    |
| **DNS**   | Domain Name System          | **53**  | Domain → IP conversion |





*/




/*
Allow:
- 80 (website)
- 443 (secure site)
- 22 (SSH for you)

Block:
- Everything else



*/







/*
Networking Commands Notes

1. ping (check connectivity)
   - Used to check if a server or website is reachable
   - Sends ICMP echo requests and waits for replies
   - Helps identify network availability and latency
   - Example: ping google.com

2. traceroute / tracert (trace packet routes)
   - Shows the path (hops) data takes to reach a destination
   - Helps identify where delays or failures occur in the network
   - 'tracert' is used in Windows, 'traceroute' in Linux/Mac
   - Example: tracert google.com

3. netstat (network statistics)
   - Displays active network connections and open ports
   - Shows which ports are listening and which are in use
   - Useful for debugging server and port issues
   - Example: netstat -an

4. curl (make HTTP requests)
   - Sends HTTP/HTTPS requests from the terminal
   - Used to test APIs and check server responses
   - Can send GET, POST, headers, and data
   - Example: curl https://api.example.com

5. dig / nslookup (DNS lookup)
   - Used to resolve domain names to IP addresses
   - Helps debug DNS-related issues
   - 'nslookup' is common on Windows, 'dig' on Linux
   - Example: nslookup google.com
*/




/*
===============================
🌐 NETWORK INTERFACE COMMANDS
===============================

ifconfig
- Show or configure network interfaces (legacy command)
- Example:
    ifconfig
    ifconfig eth0 up
    ifconfig eth0 down
- Use Case:
    Quickly check IP / bring interface up/down (older systems)

ip addr
- Modern replacement for ifconfig (recommended)
- Example:
    ip addr show
    ip addr add 192.168.1.10/24 dev eth0
- Use Case:
    Assign IP, debug container/network issues

ip link
- Manage network interface state
- Example:
    ip link show
    ip link set eth0 up
    ip link set eth0 down
- Use Case:
    Enable/disable interfaces in servers or VMs
*/


/*
===============================
🛣️ ROUTING COMMANDS
===============================

ip route
- Show or modify routing table
- Example:
    ip route show
    ip route add default via 192.168.1.1
- Use Case:
    Fix internet issues, configure gateway

route (legacy)
- Older routing command
- Example:
    route -n
    route add default gw 192.168.1.1
    route flush
- Use Case:
    Used in older Linux systems
*/


/*
===============================
🔗 ARP COMMANDS
===============================

arp
- Manage ARP cache (IP → MAC mapping)
- Example:
    arp -a
    arp -d 192.168.1.100
    arp -s 192.168.1.100 <MAC>
- Use Case:
    Debug local network communication issues
*/


/*
===============================
📶 WIRELESS COMMANDS
===============================

iwconfig
- Manage wireless interfaces
- Example:
    iwconfig
    iwconfig wlan0
- Use Case:
    Debug WiFi issues on Linux systems
*/


/*
===============================
🌍 DOWNLOAD / HTTP COMMANDS
===============================

curl
- Make HTTP requests (API testing)
- Example:
    curl https://example.com
    curl -o file.zip <url>
- Use Case:
    Test APIs, check server response

wget
- Download files from internet
- Example:
    wget <url>
- Use Case:
    Download files in servers

aria2
- Advanced download tool (faster downloads)
- Example:
    aria2c <url>
*/


/*
===============================
📊 NETWORK MONITORING
===============================

netstat
- Show network statistics
- Example:
    netstat -tuln
    netstat -r
- Use Case:
    Check open ports, routing

ss
- Modern replacement for netstat
- Example:
    ss -tuln
    ss -i
- Use Case:
    Faster port and socket analysis

iftop
- Real-time bandwidth usage
- Example:
    iftop
    iftop -i eth0
- Use Case:
    Identify high network usage

tcpdump
- Packet analyzer (very powerful)
- Example:
    tcpdump -i eth0
    tcpdump -n port 80
- Use Case:
    Debug API/network issues at packet level

nc / netcat
- Read/write data over network
- Example:
    nc -zv localhost 80
- Use Case:
    Test port connectivity

vnstat
- Shows bandwidth usage history
- Example:
    vnstat
*/


/*
===============================
🌐 DNS & HOST COMMANDS
===============================

dig
- DNS lookup tool
- Example:
    dig google.com

nslookup
- Query DNS servers
- Example:
    nslookup google.com

host
- Simple DNS lookup
- Example:
    host google.com

hostname
- Show or change hostname
- Example:
    hostname
    hostname new-name
*/


/*
===============================
📡 CONNECTIVITY COMMANDS
===============================

ping
- Check connectivity
- Example:
    ping google.com

traceroute
- Trace packet path
- Example:
    traceroute google.com

tracepath
- Simplified traceroute
- Example:
    tracepath google.com

mtr
- Combines ping + traceroute
- Example:
    mtr google.com

whois
- Get domain/IP info
- Example:
    whois google.com

iperf
- Test network speed between systems
- Example:
    iperf -s
    iperf -c <server-ip>

ifplugstatus
- Check ethernet cable connection
- Example:
    ifplugstatus eth0

bwm-ng
- Monitor bandwidth usage
- Example:
    bwm-ng

telnet
- Connect to remote system (TCP)
- Example:
    telnet google.com 80
*/


/*
===============================
🔐 SSH & REMOTE ACCESS
===============================

ssh
- Connect to remote server securely
- Example:
    ssh user@server-ip

scp
- Copy files securely
- Example:
    scp file.txt user@server:/path

sftp
- Secure file transfer (interactive)
- Example:
    sftp user@server
*/


/*
===============================
🛡️ SECURITY COMMANDS
===============================

iptables
- Manage firewall rules
- Example:
    iptables -L
- Use Case:
    Block/allow network traffic

ufw
- Simple firewall manager
- Example:
    ufw enable
    ufw allow 80
- Use Case:
    Easy firewall configuration

snort
- Intrusion detection system
- Use Case:
    Detect suspicious network activity

wireshark
- GUI tool for packet analysis
- Use Case:
    Deep network debugging

ngrep
- Network grep (filter packets)
- Example:
    ngrep port 80
*/


/*
===============================
⚡ DEVOPS QUICK DEBUG FLOW
===============================

Website not opening:
    ping → check connectivity
    curl → check response
    dig → check DNS

Port not working:
    ss -tuln
    netstat -tuln

Slow network:
    iftop
    vnstat

Packet-level debugging:
    tcpdump

Remote access:
    ssh
*/