# Configuration eth1
# RAPPEL: eth0 est à vagrant, ne pas y toucher

eth1:
  network.managed:
      - enabled: True           
      - type: eth                                                        
      - proto: none                                                   
      - ipaddr: 192.168.2.1     # nécessaire mais bidon                        
      - netmask: 255.255.255.0               
      - enable_ipv6: True                          
      - ipv6proto: static                       
      - ipv6ipaddr: fc00:1234:1::2      
      - ipv6netmask: 64
      - ipv6gateway: 
eth2:
  network.managed:
      - enabled: True
      - type: eth
      - proto: none
      - ipaddr: 192.168.2.2     # nécessaire mais bidon
      - netmask: 255.255.255.0
      - enable_ipv6: True
      - ipv6proto: static
      - ipv6ipaddr: fc00:1234:2::2
      - ipv6netmask: 64
      - ipv6gateway: 

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


