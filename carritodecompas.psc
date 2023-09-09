Algoritmo CarritoCompras
    // Definición de variables
    Dimension Usuario[50]
    Dimension Contraseña[50]
    Dimension Producto[50]
    Dimension Precio[50]
    Dimension Compras[50]
    Dimension TotalCompra[50]
    Definir opcion, numUsuarios, numProductos, numCompras, i, numUsuarioCompra, cantidadProductos, numProductoCompra, contraseñaAdmin como Entero
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
		

FinAlgoritmo