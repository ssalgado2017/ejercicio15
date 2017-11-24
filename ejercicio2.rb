def contador_de_lineas(archivo)
	file = File.open(archivo, 'r')
	data = file.readlines
	file.close
	data.count
end

puts contador_de_lineas('peliculas.txt')