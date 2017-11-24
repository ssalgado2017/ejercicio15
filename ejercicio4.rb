continuar = true
while condition  
	puts "-------------- MENU ------------------"
	puts "Opcion 1 Mostrar productos existentes"
	puts "Opcion 2 consultar productos"
	puts "Opcion 3 consultar productos no registrados"
	puts "Opcion 4 "
	puts "Opcion 5 registrar nuevo producto"
	puts "Opcion 6 salir"
	puts "--------------------------------------"
	puts "Ingresa una opcion:"
	opcion = gets

	if opcion.to_i == 1
		puts "---------------------------------------------------"
		puts "a) Mostrar la existencia por productos"
		puts "b) Mostrar la existencia total por tienda"
		puts "c) Mostrar la existencia total en todas las tiendas"
		puts "d) Volver al menu principal"
		puts "---------------------------------------------------"
		puts "Ingresa opcion submenu"
		opcion_submenu = gets

		if opcion_submenu == 'a'
			file = File.open('productos.txt', 'r')
			data = file.readlines
			file.close

			arreglo_totales = []

			data.each do |line|
				total = 0
				arreglo = data.split(', ')
				total += arreglo[1].to_i + arreglo[2].to_i + arreglo[3].to_i
				arreglo_totales << [arreglo[0], total]
			end
			
		end

	end


	if opcion == 6
		continuar = false
	end
end






