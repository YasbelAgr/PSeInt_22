Algoritmo QuickSort
	Definir arreglo, n, i Como Entero
	
	Escribir "Ingrese la cantidad de elementos a ordenar: "
	Leer n
	
	Dimension arreglo(n)
	
	// Leer los elementos del arreglo
	Para i <- 1 Hasta n Hacer
		Escribir "Ingrese el elemento ", i, ": "
		Leer arreglo(i)
	FinPara
	
	// Llamar a la función de ordenamiento rápido
	QuicksortRecursivo(arreglo, 1, n)
	
	// Mostrar el arreglo ordenado
	Escribir "Arreglo ordenado: "
	Para i <- 1 Hasta n Hacer
		Escribir arreglo(i), " "
	FinPara
FinAlgoritmo

Funcion QuicksortRecursivo(arreglo, izq, der)
	Definir i, j, pivot, aux Como Entero
	
	i <- izq
	j <- der
	pivot <- arreglo((izq + der) DIV 2)
	
	Mientras i <= j Hacer
		Mientras arreglo(i) < pivot Hacer
			i <- i + 1
		FinMientras
		Mientras arreglo(j) > pivot Hacer
			j <- j - 1
		FinMientras
		Si i <= j Entonces
			aux <- arreglo(i)
			arreglo(i) <- arreglo(j)
			arreglo(j) <- aux
			i <- i + 1
			j <- j - 1
		FinSi
	FinMientras
	
	Si izq < j Entonces
		QuicksortRecursivo(arreglo, izq, j)
	FinSi
	Si i < der Entonces
		QuicksortRecursivo(arreglo, i, der)
	FinSi
FinFuncion
