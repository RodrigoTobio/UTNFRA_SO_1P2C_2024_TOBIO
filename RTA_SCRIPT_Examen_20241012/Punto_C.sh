# Crear los grupos
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# Crear los usuarios y asignarlos a los grupos
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores p1c2_2024_P1

# Asignar contraseñas usando el hash de "mi_usuario"
sudo grep vagrant /etc/shadow | awk -F ':' '{print "p1c2_2024_A1:" $2}' | sudo chpasswd -e
sudo grep vagrant /etc/shadow | awk -F ':' '{print "p1c2_2024_A2:" $2}' | sudo chpasswd -e
sudo grep vagrant /etc/shadow | awk -F ':' '{print "p1c2_2024_A3:" $2}' | sudo chpasswd -e
sudo grep vagrant /etc/shadow | awk -F ':' '{print "p1c2_2024_P1:" $2}' | sudo chpasswd -e

# Ajustar permisos de las carpetas 
sudo chown p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno_2
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 750 /Examenes-UTN/profesores

# Creo archivo validar.txt con la salida de whoami
sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1
