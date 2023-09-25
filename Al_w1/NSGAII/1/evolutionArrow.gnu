# Configurar el trazado del gráfico
set terminal "eps"
set output "evolutionArrow.eps"

# Indicar el archivo de datos
archivo_datos = "evolution3.dat"

# Configuración de la gráfica
set title "Evolución del Frente de Pareto"
set xlabel "Consumo(kWh)"
set ylabel "T. Ejecución(s)"
set grid
set key outside top center

plot archivo_datos using 1:2 with points pointtype 2 pointsize .5 title "Individuo",\
 archivo_datos every 1::10::(0x7fffffff) using 1:2:($3-$1):($4-$2) with vectors nohead title "Frente de Pareto"
