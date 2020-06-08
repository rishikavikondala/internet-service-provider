# Internet Service Provider Project

## Project Overview
Team Members: Rishi Kavikondala, Sean Yang, Gavin Sreesangkom

Objectives:
- To build a networked system of Raspberry Pis that communicate through a common Internet Service Provider 
- To enable clients to send and receive emails.

Group Network Allocations:
- Autonomous System Number (ASN) Range: 65010 - 65019
- IP Allocation: 172.27.8.0/22
- ISP ASN: 65010
- ISP Endpoint: 165.227.7.58:51824
- ISP Tunnel IP: 10.99.0.9
- Core ASN: 65000
- Core Endpoint: 167.71.148.138:51824
- Core Tunnel IP: 10.99.08

## Diagram
![Network Diagram](/resources/INFO 314 Group 1 Network Diagram.png)

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


## gavinpi
