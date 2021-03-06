# Internet Service Provider Project

## Executive Summary
The first objective of this project is to build a networked system of Raspberry Pis that communicate through a common Internet Service Provider. The second objective is to to enable clients to send and receive emails.

Group Network Allocations:
- Autonomous System Number (ASN) Range: 65010 - 65019 | IP Allocation: 172.27.8.0/22
- ISP ASN: 65010 | ISP Endpoint: 165.227.7.58:51824 | ISP Tunnel IP: 10.99.0.9
- Core ASN: 65000 | Core Endpoint: 167.71.148.138:51824 | Core Tunnel IP: 10.99.08

## Diagram

![INFO 314 Group 1 Network Diagram](https://github.com/i314-campbell-sp20/group-networking-project-group-1/blob/master/resources/INFO%20314%20Group%201%20Network%20Diagram.png)


## rishik10

IP Address Range: 172.27.8.0/24
- 172.27.8.0/25 (public)
- 172.27.8.128/25 (private)

LAN I Configuration
- Available address range: 172.27.8.131 - 172.27.8.254
- Subnet ID: 172.27.8.128
- Broadcast Address: 172.27.8.255
- DNS Resolver IP: 172.27.8.130
- Domain Name: rishik10.pi
- Authoritative Name Server IP: 172.27.8.120
- Authoritative Name Server Domain: dns.rishik10.pi
- Mail Server IP: 172.27.8.124
- Mail Server Name: ms.rishik10.pi

Wireguard Configuration
- Pi address: 172.27.8.0
- Peer address: 172.27.8.1
- Port: 51820

Free Range Routing Configuration
- ASN: 65010
- Neighbor ASN: 65013
- BGP Router ID: 172.27.8.2
- Neighbor ID: 172.27.8.1

## syang248

IP Address Range: 172.27.9/24
- 172.27.9.0/25 (private)
- 172.27.9.128/25 (public)

LAN II Configuration
- Available address range: 172.27.9.131 - 172.27.9.254
- Subnet ID: 172.27.9.128
- Broadcast Address: 172.27.9.255
- DNS Resolver IP: 172.27.9.132
- Domain Name: yanginfo314.pi
- Authoritative Name Server IP: 172.27.9.132
- Authroitative Name Server Domain: ns.yanginfo314.pi
- Mail Server IP: 172.27.9.151
- Mail Server Name: mail111.yanginfo314.pi

Wireguard Configuration
- Pi address 172.27.9.129
- Peer Address: 172.27.9.130
- Port: 54045

Free Range Routing Configuration
- ASN: 65012
- Neighbor ASN: 65014
- BGP Router ID: 172.27.9.131
- Neighbor ID: 172.27.9.130


## gavinpi
IP Address Range: 172.27.10.0/24
- 172.27.10.0/25 (public)
- 172.27.10.128/25 (private)

LAN III Configuration
- Available address range: 172.27.10.131 - 172.27.10.254
- Subnet ID: 172.27.10.128
- Broadcast Address: 172.27.10.255
- DNS Resolver IP: 172.27.10.129
- Domain Name: rishik10.pi
- Authoritative Name Server IP: 172.27.10.120
- Authoritative Name Server Domain: dns.sirgavos.pi
- Mail Server IP: 172.27.10.124
- Mail Server Name: ms.sirgavos.pi

Wireguard Configuration
- Pi address: 172.27.10.0
- Peer address: 172.27.10.1
- Port: 51821

Free Range Routing Configuration
- ASN: 65011
- Neighbor ASN: 65012
- BGP Router ID: 172.27.10.2
- Neighbor ID: 172.27.10.3

## Further configuration details
Pi:
- networkd + systemd -> WiFi setup and DHCP configuration
- iptables -> NAT configuration
- bind9 -> caching DNS server and authoritative name server setup 
- Wireguard -> VPN setup
- Free Range Routing -> enabling of BGP from Pi to droplet
Droplet:
- Wireguard -> VPN setup
- Free Range Routing -> enabling of BGP between Pis and class core network
