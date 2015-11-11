# Configuration eth1
# RAPPEL: eth0 est à vagrant, ne pas y toucher

NetworkManager:
  service:
    - dead
    - enable: False

eth1:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: 172.16.2.132
    - netmask: 255.255.255.240

eth2:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: 172.16.2.162
    - netmask: 255.255.255.240

## Suppression de la passerelle par défaut
ip route del default:
  cmd:
    - run


# enable ipv4 forwarding
net.ipv4.ip_forward:
  sysctl:
    - present
    - value: 1





