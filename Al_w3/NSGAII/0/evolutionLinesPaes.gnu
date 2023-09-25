# Configurar el trazado del gráfico
set terminal "eps"
set output "evolutionLinesPaes.eps"

# Indicar el archivo de datos
archivo_datos = "evolution3.dat"

# Configuración de la gráfica
set y2tics nomirror
set ytics nomirror
set key outside top center
set grid
set xlabel "Iteración"
set ylabel "Consumo(kWh)"
set y2label "T. Ejecución(s)"

plot 'evolution3.dat' every 10 using 1 with lines axes x1y1 title "Cons. mejor elem",\
'evolution3.dat' every 10 using 2 with lines axes x1y2 title "T. Ejecución mejor elem"
