# ACB

## Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision | Serial Number |
| --- | ---- | ---- | ------------- | -------- | -------------------------- | ------------- |
| ACB | leaf | campus-leaf1a | 172.20.2.3/16 | 720XP | Provisioned | MTACHECAMPUS003 |
| ACB | leaf | campus-leaf1b | 172.20.2.4/16 | 720XP | Provisioned | MTACHECAMPUS004 |
| ACB | leaf | campus-leaf2a | 172.20.2.5/16 | 755 | Provisioned | MTACHECAMPUS005 |
| ACB | leaf | campus-leaf3a | 172.20.2.6/16 | 720XP | Provisioned | MTACHECAMPUS006 |
| ACB | leaf | campus-leaf3b | 172.20.2.7/16 | 720XP | Provisioned | MTACHECAMPUS007 |
| ACB | leaf | campus-leaf3c | 172.20.2.8/16 | 720XP | Provisioned | MTACHECAMPUS008 |
| ACB | leaf | campus-leaf3d | 172.20.2.9/16 | 720XP | Provisioned | MTACHECAMPUS009 |
| ACB | leaf | campus-leaf3e | 172.20.2.10/16 | 720XP | Provisioned | MTACHECAMPUS010 |
| ACB | l3spine | campus-spine1 | 172.20.2.1/16 | 7050X3 | Provisioned | MTACHECAMPUS001 |
| ACB | l3spine | campus-spine2 | 172.20.2.2/16 | 7050X3 | Provisioned | MTACHECAMPUS002 |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

### Fabric Switches with inband Management IP

| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |
| ACB | leaf | campus-leaf1a | 10.10.10.6/24 | Vlan10 |
| ACB | leaf | campus-leaf1b | 10.10.10.7/24 | Vlan10 |
| ACB | leaf | campus-leaf2a | 10.10.10.8/24 | Vlan10 |
| ACB | leaf | campus-leaf3a | 10.10.10.9/24 | Vlan10 |
| ACB | leaf | campus-leaf3b | 10.10.10.10/24 | Vlan10 |
| ACB | leaf | campus-leaf3c | 10.10.10.11/24 | Vlan10 |
| ACB | leaf | campus-leaf3d | 10.10.10.12/24 | Vlan10 |
| ACB | leaf | campus-leaf3e | 10.10.10.13/24 | Vlan10 |

## Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| leaf | campus-leaf1a | Ethernet51 | l3spine | campus-spine1 | Ethernet1 |
| leaf | campus-leaf1a | Ethernet53 | mlag_peer | campus-leaf1b | Ethernet53 |
| leaf | campus-leaf1a | Ethernet54 | mlag_peer | campus-leaf1b | Ethernet54 |
| leaf | campus-leaf1b | Ethernet51 | l3spine | campus-spine2 | Ethernet1 |
| leaf | campus-leaf2a | Ethernet1/1 | l3spine | campus-spine1 | Ethernet49/1 |
| leaf | campus-leaf2a | Ethernet2/1 | l3spine | campus-spine2 | Ethernet49/1 |
| leaf | campus-leaf3a | Ethernet97/1 | l3spine | campus-spine1 | Ethernet50/1 |
| leaf | campus-leaf3a | Ethernet97/2 | l3spine | campus-spine2 | Ethernet50/1 |
| leaf | campus-leaf3a | Ethernet97/3 | leaf | campus-leaf3c | Ethernet97/1 |
| leaf | campus-leaf3a | Ethernet97/4 | leaf | campus-leaf3d | Ethernet97/1 |
| leaf | campus-leaf3a | Ethernet98/1 | leaf | campus-leaf3e | Ethernet97/1 |
| leaf | campus-leaf3a | Ethernet98/3 | mlag_peer | campus-leaf3b | Ethernet98/3 |
| leaf | campus-leaf3a | Ethernet98/4 | mlag_peer | campus-leaf3b | Ethernet98/4 |
| leaf | campus-leaf3b | Ethernet97/1 | l3spine | campus-spine1 | Ethernet51/1 |
| leaf | campus-leaf3b | Ethernet97/2 | l3spine | campus-spine2 | Ethernet51/1 |
| leaf | campus-leaf3b | Ethernet97/3 | leaf | campus-leaf3c | Ethernet97/2 |
| leaf | campus-leaf3b | Ethernet97/4 | leaf | campus-leaf3d | Ethernet97/2 |
| leaf | campus-leaf3b | Ethernet98/1 | leaf | campus-leaf3e | Ethernet97/2 |
| l3spine | campus-spine1 | Ethernet55/1 | mlag_peer | campus-spine2 | Ethernet55/1 |
| l3spine | campus-spine1 | Ethernet56/1 | mlag_peer | campus-spine2 | Ethernet56/1 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |

### Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |

### Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 172.16.1.0/24 | 256 | 2 | 0.79 % |

### Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| ACB | campus-spine1 | 172.16.1.1/32 |
| ACB | campus-spine2 | 172.16.1.2/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |

### VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
