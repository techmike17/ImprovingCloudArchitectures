# Configurar el trazado del gráfico
set terminal "eps"
set output "evolution.eps"

# Indicar el archivo de datos
archivo_datos = "evolution3.dat"

# Configuración de la gráfica
set xlabel "Consumo(kWh)"
set ylabel "T. Ejecución(s)"
set grid
set key outside top center

plot 'evolution3.dat' using 1:2 with points title "Individuo"
