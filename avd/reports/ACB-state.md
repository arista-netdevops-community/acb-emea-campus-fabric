# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed | Total Tests Skipped |
| ----------- | ------------------ | ------------------ | ------------------- |
| 186 | 182 | 4 | 0 |

### Summary Totals Device Under Test

| Device Under Test | Total Tests | Tests Passed | Tests Failed | Tests Skipped | Categories Failed | Categories Skipped |
| ------------------| ----------- | ------------ | ------------ | ------------- | ----------------- | ------------------ |
| campus-leaf1a | 15 | 15 | 0 | 0 | - | - |
| campus-leaf1b | 15 | 14 | 1 | 0 | System | - |
| campus-leaf2a | 10 | 9 | 1 | 0 | System | - |
| campus-leaf3a | 26 | 26 | 0 | 0 | - | - |
| campus-leaf3b | 26 | 26 | 0 | 0 | - | - |
| campus-leaf3c | 10 | 10 | 0 | 0 | - | - |
| campus-leaf3d | 10 | 10 | 0 | 0 | - | - |
| campus-leaf3e | 10 | 9 | 1 | 0 | System | - |
| campus-spine1 | 32 | 31 | 1 | 0 | System | - |
| campus-spine2 | 32 | 32 | 0 | 0 | - | - |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed | Tests Skipped |
| ------------- | ----------- | ------------ | ------------ | ------------- |
| Connectivity | 56 | 56 | 0 | 0 |
| Interfaces | 104 | 104 | 0 | 0 |
| MLAG | 6 | 6 | 0 | 0 |
| System | 20 | 16 | 4 | 0 |

## Failed Test Results Summary

| ID | Device Under Test | Categories | Test | Description | Inputs | Result | Messages |
| -- | ----------------- | ---------- | ---- | ----------- | ------ | -------| -------- |
| 29 | campus-leaf1b | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 39 | campus-leaf2a | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 121 | campus-leaf3e | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 153 | campus-spine1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |

## All Test Results

| ID | Device Under Test | Categories | Test | Description | Inputs | Result | Messages |
| -- | ----------------- | ---------- | ---- | ----------- | ------ | -------| -------- |
| 1 | campus-leaf1a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet51 - Remote: campus-spine1 Ethernet1 | PASS | - |
| 2 | campus-leaf1a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet53 - Remote: campus-leaf1b Ethernet53 | PASS | - |
| 3 | campus-leaf1a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet54 - Remote: campus-leaf1b Ethernet54 | PASS | - |
| 4 | campus-leaf1a | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.6) - Destination: campus-spine1 Loopback0 (IP: 172.16.1.1) | PASS | - |
| 5 | campus-leaf1a | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.6) - Destination: campus-spine2 Loopback0 (IP: 172.16.1.2) | PASS | - |
| 6 | campus-leaf1a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet51 - CAMPUS-SPINE1_Ethernet1 = 'up' | PASS | - |
| 7 | campus-leaf1a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet53 - MLAG_PEER_campus-leaf1b_Ethernet53 = 'up' | PASS | - |
| 8 | campus-leaf1a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet54 - MLAG_PEER_campus-leaf1b_Ethernet54 = 'up' | PASS | - |
| 9 | campus-leaf1a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel51 - SPINES_Po1 = 'up' | PASS | - |
| 10 | campus-leaf1a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel53 - MLAG_PEER_campus-leaf1b_Po53 = 'up' | PASS | - |
| 11 | campus-leaf1a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 12 | campus-leaf1a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG_PEER = 'up' | PASS | - |
| 13 | campus-leaf1a | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 14 | campus-leaf1a | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 15 | campus-leaf1a | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 16 | campus-leaf1b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet51 - Remote: campus-spine2 Ethernet1 | PASS | - |
| 17 | campus-leaf1b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet53 - Remote: campus-leaf1a Ethernet53 | PASS | - |
| 18 | campus-leaf1b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet54 - Remote: campus-leaf1a Ethernet54 | PASS | - |
| 19 | campus-leaf1b | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.7) - Destination: campus-spine1 Loopback0 (IP: 172.16.1.1) | PASS | - |
| 20 | campus-leaf1b | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.7) - Destination: campus-spine2 Loopback0 (IP: 172.16.1.2) | PASS | - |
| 21 | campus-leaf1b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet51 - CAMPUS-SPINE2_Ethernet1 = 'up' | PASS | - |
| 22 | campus-leaf1b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet53 - MLAG_PEER_campus-leaf1a_Ethernet53 = 'up' | PASS | - |
| 23 | campus-leaf1b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet54 - MLAG_PEER_campus-leaf1a_Ethernet54 = 'up' | PASS | - |
| 24 | campus-leaf1b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel51 - SPINES_Po1 = 'up' | PASS | - |
| 25 | campus-leaf1b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel53 - MLAG_PEER_campus-leaf1a_Po53 = 'up' | PASS | - |
| 26 | campus-leaf1b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 27 | campus-leaf1b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG_PEER = 'up' | PASS | - |
| 28 | campus-leaf1b | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 29 | campus-leaf1b | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 30 | campus-leaf1b | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 31 | campus-leaf2a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1/1 - Remote: campus-spine1 Ethernet49/1 | PASS | - |
| 32 | campus-leaf2a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2/1 - Remote: campus-spine2 Ethernet49/1 | PASS | - |
| 33 | campus-leaf2a | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.8) - Destination: campus-spine1 Loopback0 (IP: 172.16.1.1) | PASS | - |
| 34 | campus-leaf2a | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.8) - Destination: campus-spine2 Loopback0 (IP: 172.16.1.2) | PASS | - |
| 35 | campus-leaf2a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1/1 - CAMPUS-SPINE1_Ethernet49/1 = 'up' | PASS | - |
| 36 | campus-leaf2a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2/1 - CAMPUS-SPINE2_Ethernet49/1 = 'up' | PASS | - |
| 37 | campus-leaf2a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel11 - SPINES_Po491 = 'up' | PASS | - |
| 38 | campus-leaf2a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 39 | campus-leaf2a | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 40 | campus-leaf2a | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 41 | campus-leaf3a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/1 - Remote: campus-spine1 Ethernet50/1 | PASS | - |
| 42 | campus-leaf3a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/2 - Remote: campus-spine2 Ethernet50/1 | PASS | - |
| 43 | campus-leaf3a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/3 - Remote: campus-leaf3c Ethernet97/1 | PASS | - |
| 44 | campus-leaf3a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/4 - Remote: campus-leaf3d Ethernet97/1 | PASS | - |
| 45 | campus-leaf3a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet98/1 - Remote: campus-leaf3e Ethernet97/1 | PASS | - |
| 46 | campus-leaf3a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet98/3 - Remote: campus-leaf3b Ethernet98/3 | PASS | - |
| 47 | campus-leaf3a | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet98/4 - Remote: campus-leaf3b Ethernet98/4 | PASS | - |
| 48 | campus-leaf3a | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.9) - Destination: campus-spine1 Loopback0 (IP: 172.16.1.1) | PASS | - |
| 49 | campus-leaf3a | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.9) - Destination: campus-spine2 Loopback0 (IP: 172.16.1.2) | PASS | - |
| 50 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/1 - CAMPUS-SPINE1_Ethernet50/1 = 'up' | PASS | - |
| 51 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/2 - CAMPUS-SPINE2_Ethernet50/1 = 'up' | PASS | - |
| 52 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/3 - CAMPUS-LEAF3C_Ethernet97/1 = 'up' | PASS | - |
| 53 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/4 - CAMPUS-LEAF3D_Ethernet97/1 = 'up' | PASS | - |
| 54 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet98/1 - CAMPUS-LEAF3E_Ethernet97/1 = 'up' | PASS | - |
| 55 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet98/3 - MLAG_PEER_campus-leaf3b_Ethernet98/3 = 'up' | PASS | - |
| 56 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet98/4 - MLAG_PEER_campus-leaf3b_Ethernet98/4 = 'up' | PASS | - |
| 57 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel971 - SPINES_Po501 = 'up' | PASS | - |
| 58 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel973 - CAMPUS-LEAF3C_Po971 = 'up' | PASS | - |
| 59 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel974 - CAMPUS-LEAF3D_Po971 = 'up' | PASS | - |
| 60 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel981 - CAMPUS-LEAF3E_Po971 = 'up' | PASS | - |
| 61 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel983 - MLAG_PEER_campus-leaf3b_Po983 = 'up' | PASS | - |
| 62 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 63 | campus-leaf3a | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG_PEER = 'up' | PASS | - |
| 64 | campus-leaf3a | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 65 | campus-leaf3a | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 66 | campus-leaf3a | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 67 | campus-leaf3b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/1 - Remote: campus-spine1 Ethernet51/1 | PASS | - |
| 68 | campus-leaf3b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/2 - Remote: campus-spine2 Ethernet51/1 | PASS | - |
| 69 | campus-leaf3b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/3 - Remote: campus-leaf3c Ethernet97/2 | PASS | - |
| 70 | campus-leaf3b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/4 - Remote: campus-leaf3d Ethernet97/2 | PASS | - |
| 71 | campus-leaf3b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet98/1 - Remote: campus-leaf3e Ethernet97/2 | PASS | - |
| 72 | campus-leaf3b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet98/3 - Remote: campus-leaf3a Ethernet98/3 | PASS | - |
| 73 | campus-leaf3b | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet98/4 - Remote: campus-leaf3a Ethernet98/4 | PASS | - |
| 74 | campus-leaf3b | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.10) - Destination: campus-spine1 Loopback0 (IP: 172.16.1.1) | PASS | - |
| 75 | campus-leaf3b | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.10) - Destination: campus-spine2 Loopback0 (IP: 172.16.1.2) | PASS | - |
| 76 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/1 - CAMPUS-SPINE1_Ethernet51/1 = 'up' | PASS | - |
| 77 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/2 - CAMPUS-SPINE2_Ethernet51/1 = 'up' | PASS | - |
| 78 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/3 - CAMPUS-LEAF3C_Ethernet97/2 = 'up' | PASS | - |
| 79 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/4 - CAMPUS-LEAF3D_Ethernet97/2 = 'up' | PASS | - |
| 80 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet98/1 - CAMPUS-LEAF3E_Ethernet97/2 = 'up' | PASS | - |
| 81 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet98/3 - MLAG_PEER_campus-leaf3a_Ethernet98/3 = 'up' | PASS | - |
| 82 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet98/4 - MLAG_PEER_campus-leaf3a_Ethernet98/4 = 'up' | PASS | - |
| 83 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel971 - SPINES_Po501 = 'up' | PASS | - |
| 84 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel973 - CAMPUS-LEAF3C_Po971 = 'up' | PASS | - |
| 85 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel974 - CAMPUS-LEAF3D_Po971 = 'up' | PASS | - |
| 86 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel981 - CAMPUS-LEAF3E_Po971 = 'up' | PASS | - |
| 87 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel983 - MLAG_PEER_campus-leaf3a_Po983 = 'up' | PASS | - |
| 88 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 89 | campus-leaf3b | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG_PEER = 'up' | PASS | - |
| 90 | campus-leaf3b | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 91 | campus-leaf3b | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 92 | campus-leaf3b | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 93 | campus-leaf3c | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/1 - Remote: campus-leaf3a Ethernet97/3 | PASS | - |
| 94 | campus-leaf3c | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/2 - Remote: campus-leaf3b Ethernet97/3 | PASS | - |
| 95 | campus-leaf3c | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.11) - Destination: campus-spine1 Loopback0 (IP: 172.16.1.1) | PASS | - |
| 96 | campus-leaf3c | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.11) - Destination: campus-spine2 Loopback0 (IP: 172.16.1.2) | PASS | - |
| 97 | campus-leaf3c | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/1 - CAMPUS-LEAF3A_Ethernet97/3 = 'up' | PASS | - |
| 98 | campus-leaf3c | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/2 - CAMPUS-LEAF3B_Ethernet97/3 = 'up' | PASS | - |
| 99 | campus-leaf3c | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel971 - IDF3_AGG_Po973 = 'up' | PASS | - |
| 100 | campus-leaf3c | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 101 | campus-leaf3c | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 102 | campus-leaf3c | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 103 | campus-leaf3d | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/1 - Remote: campus-leaf3a Ethernet97/4 | PASS | - |
| 104 | campus-leaf3d | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/2 - Remote: campus-leaf3b Ethernet97/4 | PASS | - |
| 105 | campus-leaf3d | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.12) - Destination: campus-spine1 Loopback0 (IP: 172.16.1.1) | PASS | - |
| 106 | campus-leaf3d | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.12) - Destination: campus-spine2 Loopback0 (IP: 172.16.1.2) | PASS | - |
| 107 | campus-leaf3d | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/1 - CAMPUS-LEAF3A_Ethernet97/4 = 'up' | PASS | - |
| 108 | campus-leaf3d | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/2 - CAMPUS-LEAF3B_Ethernet97/4 = 'up' | PASS | - |
| 109 | campus-leaf3d | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel971 - IDF3_AGG_Po974 = 'up' | PASS | - |
| 110 | campus-leaf3d | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 111 | campus-leaf3d | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 112 | campus-leaf3d | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 113 | campus-leaf3e | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/1 - Remote: campus-leaf3a Ethernet98/1 | PASS | - |
| 114 | campus-leaf3e | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet97/2 - Remote: campus-leaf3b Ethernet98/1 | PASS | - |
| 115 | campus-leaf3e | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.13) - Destination: campus-spine1 Loopback0 (IP: 172.16.1.1) | PASS | - |
| 116 | campus-leaf3e | Connectivity | VerifyReachability | Test the network reachability to one or many destination IP(s). | Source: Inband MGMT SVI Vlan10 (IP: 10.10.10.13) - Destination: campus-spine2 Loopback0 (IP: 172.16.1.2) | PASS | - |
| 117 | campus-leaf3e | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/1 - CAMPUS-LEAF3A_Ethernet98/1 = 'up' | PASS | - |
| 118 | campus-leaf3e | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet97/2 - CAMPUS-LEAF3B_Ethernet98/1 = 'up' | PASS | - |
| 119 | campus-leaf3e | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel971 - IDF3_AGG_Po981 = 'up' | PASS | - |
| 120 | campus-leaf3e | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 121 | campus-leaf3e | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 122 | campus-leaf3e | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 123 | campus-spine1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1 - Remote: campus-leaf1a Ethernet51 | PASS | - |
| 124 | campus-spine1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet49/1 - Remote: campus-leaf2a Ethernet1/1 | PASS | - |
| 125 | campus-spine1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet50/1 - Remote: campus-leaf3a Ethernet97/1 | PASS | - |
| 126 | campus-spine1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet51/1 - Remote: campus-leaf3b Ethernet97/1 | PASS | - |
| 127 | campus-spine1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet55/1 - Remote: campus-spine2 Ethernet55/1 | PASS | - |
| 128 | campus-spine1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet56/1 - Remote: campus-spine2 Ethernet56/1 | PASS | - |
| 129 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - CAMPUS-LEAF1A_Ethernet51 = 'up' | PASS | - |
| 130 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet49/1 - CAMPUS-LEAF2A_Ethernet1/1 = 'up' | PASS | - |
| 131 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet50/1 - CAMPUS-LEAF3A_Ethernet97/1 = 'up' | PASS | - |
| 132 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet51/1 - CAMPUS-LEAF3B_Ethernet97/1 = 'up' | PASS | - |
| 133 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet55/1 - MLAG_PEER_campus-spine2_Ethernet55/1 = 'up' | PASS | - |
| 134 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet56/1 - MLAG_PEER_campus-spine2_Ethernet56/1 = 'up' | PASS | - |
| 135 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - Router_ID = 'up' | PASS | - |
| 136 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - IDF1_Po51 = 'up' | PASS | - |
| 137 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel491 - CAMPUS-LEAF2A_Po11 = 'up' | PASS | - |
| 138 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel501 - IDF3_AGG_Po971 = 'up' | PASS | - |
| 139 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel551 - MLAG_PEER_campus-spine2_Po551 = 'up' | PASS | - |
| 140 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 141 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan110 - IDF1-Data = 'up' | PASS | - |
| 142 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan120 - IDF1-Voice = 'up' | PASS | - |
| 143 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan130 - IDF1-Guest = 'up' | PASS | - |
| 144 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan210 - IDF2-Data = 'up' | PASS | - |
| 145 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan220 - IDF2-Voice = 'up' | PASS | - |
| 146 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan230 - IDF2-Guest = 'up' | PASS | - |
| 147 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan310 - IDF3-Data = 'up' | PASS | - |
| 148 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan320 - IDF3-Voice = 'up' | PASS | - |
| 149 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan330 - IDF3-Guest = 'up' | PASS | - |
| 150 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4093 - MLAG_PEER_L3_PEERING = 'up' | PASS | - |
| 151 | campus-spine1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG_PEER = 'up' | PASS | - |
| 152 | campus-spine1 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 153 | campus-spine1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 154 | campus-spine1 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 155 | campus-spine2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1 - Remote: campus-leaf1b Ethernet51 | PASS | - |
| 156 | campus-spine2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet49/1 - Remote: campus-leaf2a Ethernet2/1 | PASS | - |
| 157 | campus-spine2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet50/1 - Remote: campus-leaf3a Ethernet97/2 | PASS | - |
| 158 | campus-spine2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet51/1 - Remote: campus-leaf3b Ethernet97/2 | PASS | - |
| 159 | campus-spine2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet55/1 - Remote: campus-spine1 Ethernet55/1 | PASS | - |
| 160 | campus-spine2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet56/1 - Remote: campus-spine1 Ethernet56/1 | PASS | - |
| 161 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - CAMPUS-LEAF1B_Ethernet51 = 'up' | PASS | - |
| 162 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet49/1 - CAMPUS-LEAF2A_Ethernet2/1 = 'up' | PASS | - |
| 163 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet50/1 - CAMPUS-LEAF3A_Ethernet97/2 = 'up' | PASS | - |
| 164 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet51/1 - CAMPUS-LEAF3B_Ethernet97/2 = 'up' | PASS | - |
| 165 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet55/1 - MLAG_PEER_campus-spine1_Ethernet55/1 = 'up' | PASS | - |
| 166 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet56/1 - MLAG_PEER_campus-spine1_Ethernet56/1 = 'up' | PASS | - |
| 167 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - Router_ID = 'up' | PASS | - |
| 168 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - IDF1_Po51 = 'up' | PASS | - |
| 169 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel491 - CAMPUS-LEAF2A_Po11 = 'up' | PASS | - |
| 170 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel501 - IDF3_AGG_Po971 = 'up' | PASS | - |
| 171 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel551 - MLAG_PEER_campus-spine1_Po551 = 'up' | PASS | - |
| 172 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Inband Management = 'up' | PASS | - |
| 173 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan110 - IDF1-Data = 'up' | PASS | - |
| 174 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan120 - IDF1-Voice = 'up' | PASS | - |
| 175 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan130 - IDF1-Guest = 'up' | PASS | - |
| 176 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan210 - IDF2-Data = 'up' | PASS | - |
| 177 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan220 - IDF2-Voice = 'up' | PASS | - |
| 178 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan230 - IDF2-Guest = 'up' | PASS | - |
| 179 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan310 - IDF3-Data = 'up' | PASS | - |
| 180 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan320 - IDF3-Voice = 'up' | PASS | - |
| 181 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan330 - IDF3-Guest = 'up' | PASS | - |
| 182 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4093 - MLAG_PEER_L3_PEERING = 'up' | PASS | - |
| 183 | campus-spine2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG_PEER = 'up' | PASS | - |
| 184 | campus-spine2 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 185 | campus-spine2 | System | VerifyNTP | Verifies if NTP is synchronised. | - | PASS | - |
| 186 | campus-spine2 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
