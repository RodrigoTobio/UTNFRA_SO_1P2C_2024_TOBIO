#!/bin/bash

echo "Mi Ip Publica es: $(curl -s ifconfig.me)" >> ../RTA_ARCHIVOS_Examen_20241012/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> ../RTA_ARCHIVOS_Examen_20241012/Filtro_Avanzado.txt
echo "El hash de mi usuario es: $(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print$2}')" >> ../RTA_ARCHIVOS_Examen_20241012/Filtro_Avanzado.txt
echo "La url de mi repositorio es: $(git remote get-url origin)" >> ../RTA_ARCHIVOS_Examen_20241012/Filtro_Avanzado.txt
