JMP inicioSuma
inicioSuma:
SET R0, 0x05 ; sumo los primeros  5 naturales. Preferiria leer R0 y guardar en otro registro para no tener que modificar el codigo para cambiar la suma y que el valor de R0 sea externo al programa.
SET R1, 0x00 ; clean R1
SET R2, 0x01 ; la unidad en R2 para poder restar
SET R3, 0x00 ; R3 := 0 para poder comparar
bucle:
ADD R1, R0 ; sumo el numero mayor
SUB R0, R2 ; resto uno
CMP R0, R3 ; busco encender Z si R0 es cero
JZ fin
JMP bucle
fin:
SET R3, 0xFF ; cambio el valor de R3 solo como indicador. No es un paso necesario para el programa
JMP fin ; solo para evitar que PC siga avanzando. ¿como terminamos un programa?
