# Configuration eth1
# RAPPEL: eth0 est à vagrant, ne pas y toucher

eth1:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: 172.16.2.132
    - netmask: 255.255.255.240
#    - gateway: 172.16.2.132
eth2:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: 172.16.2.162
    - netmask: 255.255.255.240
#    - gateway: 172.16.2.132

## Suppression de la passerelle par défaut
ip route del default:
  cmd:
    - run

## Configuration des routes manuellement
routes:
  network.routes:
    - name: eth1
    - routes:
      - name: lan2
        ipaddr: 172.16.0.160
        netmask: 255.255.255.240
        gateway: 172.16.0.132


