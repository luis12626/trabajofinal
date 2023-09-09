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
		egun opcion Hacer
	Caso 1:
		Si numUsuarios < 50 Entonces
			numUsuarios <- numUsuarios + 1
			
			Escribir "Ingrese el nombre del Usuario:"
			Leer Usuario[numUsuarios]
			
			Escribir "Ingrese la contraseña:"
			Leer Contraseña[numUsuarios]
			
			Escribir "Usuario agregado exitosamente."
		Sino
			Escribir "La lista de usuarios está llena. No se pueden agregar más usuarios."
		Fin Si
	Caso 2:
		Si numProductos < 50 Entonces
			numProductos <- numProductos + 1
			
			Escribir "Ingrese el nombre del producto:"
			Leer Producto[numProductos]
			
			Escribir "Ingrese el precio del producto:"
			Leer Precio[numProductos]
			
			Escribir "Producto agregado exitosamente."
		Sino
			Escribir "La lista de productos está llena. No se pueden agregar más productos."
		Fin Si
	Caso 3:
		Si numUsuarios > 0 Y numProductos > 0 Entonces
			Escribir "Usuarios disponibles:"
			Para i <- 1 Hasta numUsuarios
				Escribir "Usuario N°", i, ":", Usuario[i]
			Fin Para
			Escribir "Ingrese el número de usuario que desea realizar la compra:"
			Leer numUsuarioCompra
			Si numUsuarioCompra >= 1 Y numUsuarioCompra <= numUsuarios Entonces
				Escribir "Productos disponibles:"
				Para i <- 1 Hasta numProductos
					Escribir "Producto N°", i, ":", Producto[i]
				Fin Para
				Escribir "Ingrese el número de producto que desea comprar:"
				Leer numProductoCompra
				Si numProductoCompra >= 1 Y numProductoCompra <= numProductos Entonces
					TotalCompra[numCompras + 1] <- 0  // Inicializar el total de la compra en cero
					Para i <- 1 Hasta numProductoCompra
						Escribir "Ingrese cuántos de ", Producto[i], " desea comprar:"
						Leer cantidadProductos
						Si cantidadProductos >= 1 Entonces
							numCompras <- numCompras + 1
							Compras[numCompras] <- "Usuario: " + Usuario[numUsuarioCompra] + ", Producto: " + Producto[i] + ", Precio: " + Precio[i]
							TotalCompra[numCompras] <- TotalCompra[numCompras] + (ConvertirANumero(Precio[i]) * cantidadProductos) // Acumular el total de la compra
							Escribir "Compra de ", Producto[i], " realizada exitosamente."
						Sino
							Escribir "Cantidad de producto inválida."
						Fin Si
					Fin Para
				Sino
					Escribir "Número de producto inválido."
				Fin Si
			Sino
				Escribir "Número de usuario inválido."
			Fin Si
		Sino
			Escribir "No hay usuarios o productos registrados. No se puede realizar la compra."
		Fin Si		

FinAlgoritmo