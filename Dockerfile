#Dockerfile, который устанавливает и настраивает OpenVPN в контейнере
FROM ubuntu:latest

# Установка необходимых пакетов
RUN apt-get update && apt-get install -y openvpn

# Копирование файлов конфигурации
COPY openvpn.conf /etc/openvpn/
COPY client.ovpn /etc/openvpn/

# Настройка OpenVPN
RUN sed -i 's/;user nobody/user nobody/' /etc/openvpn/openvpn.conf
RUN sed -i 's/;group nogroup/group nogroup/' /etc/openvpn/openvpn.conf

# Запуск OpenVPN
CMD ["/usr/sbin/openvpn", "--config", "/etc/openvpn/openvpn.conf"]
