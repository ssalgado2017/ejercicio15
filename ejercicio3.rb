def contador_de_palabras(archivo)
	file = File.open(archivo, 'r')
	data = file.readlines
	file.close
	total = 0
	data.each do |line|
		total += line.split(' ').count
	end
	total
end

#puts contador_de_palabras('peliculas.txt')

def contador_de_palabras_string(archivo,palabra)
	file = File.open(archivo, 'r')
	data = file.readlines
	file.close
	total_palabras = 0
	data.each do |line|
		line.split(' ').each do |word|
			total_palabras += 1 if word == palabra
		end
	end
	total_palabras
end

puts contador_de_palabras_string('peliculas.txt','Episodio')



