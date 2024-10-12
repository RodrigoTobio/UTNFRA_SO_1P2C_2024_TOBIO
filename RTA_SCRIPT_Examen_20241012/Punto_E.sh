#!/bin/bash

#agrego los awk por que en el archivo del parcial aparece en blanco en resultado
cat /proc/meminfo | grep 'MemTotal' | awk '{print}' >> ../RTA_ARCHIVOS_Examen_20241012/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -E 'Chassis Information|Manufacturer' | awk '{print}' >> ../RTA_ARCHIVOS_Examen_20241012/Filtro_Basico.txt
