Algoritmo CarritoCompras
    // Definici�n de variables
    Dimension Usuario[50]
    Dimension Contrase�a[50]
    Dimension Producto[50]
    Dimension Precio[50]
    Dimension Compras[50]
    Dimension TotalCompra[50]
    Definir opcion, numUsuarios, numProductos, numCompras, i, numUsuarioCompra, cantidadProductos, numProductoCompra, contrase�aAdmin como Entero
    Definir modoAdministrador Como Logico
	
    numUsuarios <- 0 // Inicializamos el contador de usuarios
    numProductos <- 0 // Inicializamos el contador de productos
    numCompras <- 0 // Inicializamos el contador de compras
    modoAdministrador <- Falso
	
    Repetir
        Escribir "1. Agregar usuario"
        Escribir "2. Agregar producto"
        Escribir "3. Comprar producto"
        Escribir "4. Mostrar compras"
        Escribir "5. Modo administrador"
        Escribir "6. Salir"
        Leer opcion
		egun opcion Hacer
	Caso 1:
		Si numUsuarios < 50 Entonces
			numUsuarios <- numUsuarios + 1
			
			Escribir "Ingrese el nombre del Usuario:"
			Leer Usuario[numUsuarios]
			
			Escribir "Ingrese la contrase�a:"
			Leer Contrase�a[numUsuarios]
			
			Escribir "Usuario agregado exitosamente."
		Sino
			Escribir "La lista de usuarios est� llena. No se pueden agregar m�s usuarios."
		Fin Si

FinAlgoritmo