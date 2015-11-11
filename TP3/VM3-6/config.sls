# Configuration eth1
# RAPPEL: eth0 est à vagrant, ne pas y toucher

eth1:
  network.managed:
#    - enabled: True
#    - type: eth
#    - proto: none
#    - ipaddr: 172.16.0.131
#    - netmask: 255.255.255.240
#    - gateway: 172.16.0.132
      - enabled: True           
      - type: eth                                                        
      - proto: none                                                   
      - ipaddr: 192.168.2.3     # nécessaire mais bidon                        
      - netmask: 255.255.255.0               
      - enable_ipv6: True                          
      - ipv6proto: static                       
      - ipv6ipaddr: fc00:1234:2::3      
      - ipv6netmask: 64
      - ipv6gateway: fc00:1234:2::2 

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


