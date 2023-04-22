#Dockerfile that installs and configures OpenVPN in a container
FROM ubuntu:latest

#Install necessary packages
RUN apt-get update && apt-get install -y openvpn

#Copy configuration files
COPY openvpn.conf /etc/openvpn/
COPY client.ovpn /etc/openvpn/

#Configure OpenVPN
RUN sed -i 's/;user nobody/user nobody/' /etc/openvpn/openvpn.conf
RUN sed -i 's/;group nogroup/group nogroup/' /etc/openvpn/openvpn.conf

#Run OpenVPN
CMD ["/usr/sbin/openvpn", "--config", "/etc/openvpn/openvpn.conf"]
