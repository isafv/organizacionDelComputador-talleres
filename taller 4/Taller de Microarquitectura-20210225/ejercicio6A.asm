JMP demoSIG
demoSIG:
SET R0, 0x0A
SIG R0
JMP demoSIG ; genera el valor en R0 aumento de uno en uno
