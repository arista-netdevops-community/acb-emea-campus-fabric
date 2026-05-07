# campus-leaf2a

## Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [IP Name Servers](#ip-name-servers)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [AAA Authentication](#aaa-authentication)
  - [AAA Authorization](#aaa-authorization)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
  - [Event Handler](#event-handler)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Device Configuration](#internal-vlan-allocation-policy-device-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [Interfaces](#interfaces)
  - [Switchport Default](#switchport-default)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [IPv6 Static Routes](#ipv6-static-routes)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)

## Management

### Management Interfaces

#### Management Interfaces Summary

##### IPv4

| Management Interface | Description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1/1 | oob_management | oob | MGMT | 172.20.2.5/16 | 172.20.0.1 |

##### IPv6

| Management Interface | Description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1/1 | oob_management | oob | MGMT | fd00:6265:b424:a8b8::2:5/64 | fd00:6265:b424:a8b8::1 |

#### Management Interfaces Device Configuration

```eos
!
interface Management1/1
   description oob_management
   no shutdown
   vrf MGMT
   ip address 172.20.2.5/16
   ipv6 enable
   ipv6 address fd00:6265:b424:a8b8::2:5/64
   no lldp transmit
   no lldp receive
```

### IP Name Servers

#### IP Name Servers Summary

| Name Server | VRF | Priority |
| ----------- | --- | -------- |
| 8.8.8.8 | MGMT | - |

#### IP Name Servers Device Configuration

```eos
ip name-server vrf MGMT 8.8.8.8
```

### NTP

#### NTP Summary

##### NTP Local Interface

| Interface | VRF |
| --------- | --- |
| Management1/1 | MGMT |

##### NTP Servers

| Server | VRF | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Key |
| ------ | --- | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | --- |
| 0.pool.ntp.org | MGMT | - | - | - | - | - | - | - | - |

#### NTP Device Configuration

```eos
!
ntp local-interface vrf MGMT Management1/1
ntp server vrf MGMT 0.pool.ntp.org
```

### Management API HTTP

#### Management API HTTP Summary

| HTTP | HTTPS | Default Services |
| ---- | ----- | ---------------- |
| False | True | - |

#### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT | - | - |

#### Management API HTTP Device Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf MGMT
      no shutdown
```

## Authentication

### Local Users

#### Local Users Summary

| User | Privilege | Role | Disabled | Shell |
| ---- | --------- | ---- | -------- | ----- |
| admin | 15 | network-admin | False | - |
| mtache | 15 | network-admin | False | - |

#### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin nopassword
username mtache privilege 15 role network-admin nopassword
```

### AAA Authentication

#### AAA Authentication Summary

| Type | Sub-type | User Stores |
| ---- | -------- | ---------- |

Policy local allow-nopassword-remote-login has been enabled.

#### AAA Authentication Device Configuration

```eos
aaa authentication policy local allow-nopassword-remote-login
!
```

### AAA Authorization

#### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | local |

Authorization for configuration commands is disabled.

#### AAA Authorization Device Configuration

```eos
aaa authorization exec default local
!
```

## Monitoring

### TerminAttr Daemon

#### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | apiserver.cv-staging.corp.arista.io:443 | MGMT | token-secure,/mnt/flash/cv-onboarding-token | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

#### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=apiserver.cv-staging.corp.arista.io:443 -cvauth=token-secure,/mnt/flash/cv-onboarding-token -cvvrf=MGMT -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
```

### Event Handler

#### Event Handler Summary

| Handler | Actions | Trigger | Trigger Config |
| ------- | ------- | ------- | -------------- |
| ConfigureHardwareModel | bash <code>python -m Acons Sysdb << EOF\ncd /ar/Sysdb/hardware/entmib\nif (model := os.getenv('MODEL_NAME')):\n   _.fixedSystem.modelName = model\nelif (model := os.getenv('CHASSIS_MODEL_NAME')):\n   _.chassis = (1,0,'Chassis')\n   _.chassis.modelName = model\n   for var, value in os.environ.items():\n      if var.startswith('CHASSIS'):\n         keys = var.split('_')\n         if keys[1] == "SUPERVISOR":\n            i = int(keys[2])\n            _.chassis.cardSlot.newMember(100002000+i, i, 'Supervisor')\n            _.chassis.cardSlot[i].card = (100002100+i, i, 'Supervisor')\n            _.chassis.cardSlot[i].card.modelName = value\n         elif keys[1] == "LINECARD":\n            i = int(keys[2]) + 2\n            _.chassis.cardSlot.newMember(100002000+i, i, 'Linecard')\n            _.chassis.cardSlot[i].card = (100002100+i, i, 'Linecard')\n            _.chassis.cardSlot[i].card.modelName = value\n\nprint(f"Hardare model has been set to {model}")\nEOF\n</code> | on-boot | - |

#### Event Handler Device Configuration

```eos
!
event-handler ConfigureHardwareModel
   trigger on-boot
   action bash
      python -m Acons Sysdb << EOF
      cd /ar/Sysdb/hardware/entmib
      if (model := os.getenv('MODEL_NAME')):
         _.fixedSystem.modelName = model
      elif (model := os.getenv('CHASSIS_MODEL_NAME')):
         _.chassis = (1,0,'Chassis')
         _.chassis.modelName = model
         for var, value in os.environ.items():
            if var.startswith('CHASSIS'):
               keys = var.split('_')
               if keys[1] == "SUPERVISOR":
                  i = int(keys[2])
                  _.chassis.cardSlot.newMember(100002000+i, i, 'Supervisor')
                  _.chassis.cardSlot[i].card = (100002100+i, i, 'Supervisor')
                  _.chassis.cardSlot[i].card.modelName = value
               elif keys[1] == "LINECARD":
                  i = int(keys[2]) + 2
                  _.chassis.cardSlot.newMember(100002000+i, i, 'Linecard')
                  _.chassis.cardSlot[i].card = (100002100+i, i, 'Linecard')
                  _.chassis.cardSlot[i].card.modelName = value

      print(f"Hardare model has been set to {model}")
      EOF

```

## Spanning Tree

### Spanning Tree Summary

STP mode: **mstp**

#### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 16384 |

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
spanning-tree mst 0 priority 16384
```

## Internal VLAN Allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Device Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

## VLANs

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 10 | INBAND_MGMT | - |
| 210 | IDF2-Data | - |
| 220 | IDF2-Voice | - |
| 230 | IDF2-Guest | - |

### VLANs Device Configuration

```eos
!
vlan 10
   name INBAND_MGMT
!
vlan 210
   name IDF2-Data
!
vlan 220
   name IDF2-Voice
!
vlan 230
   name IDF2-Guest
```

## Interfaces

### Switchport Default

#### Switchport Defaults Summary

- Default Switchport Mode: routed

#### Switchport Default Device Configuration

```eos
!
switchport default mode routed
```

### Ethernet Interfaces

#### Ethernet Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet1/1 | CAMPUS-SPINE1_Ethernet49/1 | *trunk | *10,210,220,230 | *- | *- | 11 |
| Ethernet2/1 | CAMPUS-SPINE2_Ethernet49/1 | *trunk | *10,210,220,230 | *- | *- | 11 |

*Inherited from Port-Channel Interface

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1/1
   description CAMPUS-SPINE1_Ethernet49/1
   no shutdown
   channel-group 11 mode active
!
interface Ethernet2/1
   description CAMPUS-SPINE2_Ethernet49/1
   no shutdown
   channel-group 11 mode active
```

### Port-Channel Interfaces

#### Port-Channel Interfaces Summary

##### L2

| Interface | Description | Type | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel11 | SPINES_Po491 | switched | trunk | 10,210,220,230 | - | - | - | - | - | - |

#### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel11
   description SPINES_Po491
   no shutdown
   switchport
   switchport trunk allowed vlan 10,210,220,230
   switchport mode trunk
```

### VLAN Interfaces

#### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan10 | Inband Management | default | 1500 | False |

##### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan10 |  default  |  10.10.10.8/24  |  -  |  -  |  -  |  -  |  -  |

#### VLAN Interfaces Device Configuration

```eos
!
interface Vlan10
   description Inband Management
   no shutdown
   mtu 1500
   ip address 10.10.10.8/24
```

## Routing

### Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

### IP Routing

#### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| MGMT | False |

#### IP Routing Device Configuration

```eos
no ip routing vrf MGMT
```

### IPv6 Routing

#### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| MGMT | false |

### Static Routes

#### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP | Exit interface | Administrative Distance | Tag | Route Name | Metric |
| --- | ------------------ | ----------- | -------------- | ----------------------- | --- | ---------- | ------ |
| MGMT | 0.0.0.0/0 | 172.20.0.1 | - | 1 | - | - | - |
| default | 0.0.0.0/0 | 10.10.10.1 | - | 1 | - | - | - |

#### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 172.20.0.1
ip route 0.0.0.0/0 10.10.10.1
```

### IPv6 Static Routes

#### IPv6 Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT | ::/0 | fd00:6265:b424:a8b8::1 | - | 1 | - | - | - |

#### Static Routes Device Configuration

```eos
!
ipv6 route vrf MGMT ::/0 fd00:6265:b424:a8b8::1
```

## Multicast

### IP IGMP Snooping

#### IP IGMP Snooping Summary

| IGMP Snooping | Fast Leave | Interface Restart Query | Proxy | Restart Query Interval | Robustness Variable |
| ------------- | ---------- | ----------------------- | ----- | ---------------------- | ------------------- |
| Enabled | - | - | - | - | - |

#### IP IGMP Snooping Device Configuration

```eos
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT | disabled |

### VRF Instances Device Configuration

```eos
!
vrf instance MGMT
```
