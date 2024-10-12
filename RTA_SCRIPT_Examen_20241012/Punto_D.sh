#!/bin/bash
#Este no lo pide en el raiz
mkdir -p Estructura_Asimetrica/{correo/{cartas{1..100},carteros{1..10}},clientes/cartas{1..100}}

#validación dada en el parcial
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
