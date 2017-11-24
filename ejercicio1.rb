def crear_html(palabra1,palabra2)
	index = "<html><body>"
	index << "<p>#{palabra1}</p>"
	index << "<p>#{palabra2}</p>"
	index << "</body></html>"
	file = File.open('index.html', 'w')
	file.puts index
	file.close
end

#crear_html('texto1', 'texto2')


def crear_html_arreglo(palabra1,palabra2,arreglo)
	index = "<html><body>"
	index << "<p>#{palabra1}</p>"
	index << "<p>#{palabra2}</p>"
	index << "#{arreglo.sort}" unless arreglo.nil? 
	index << "</body></html>"

	file = File.open('index.html', 'w')
	file.puts index
	file.close
end

#crear_html_arreglo('texto1','texto2',[1,2,3,4])

def crear_html_arreglo_color(palabra1,palabra2,arreglo,color)
	index = "<html><body>"
	index << "<p style='background-color:#{color}';>#{palabra1}</p>"
	index << "<p style='background-color:#{color}';>#{palabra2}</p>"
	index << "#{arreglo.sort}" unless arreglo.nil? 
	index << "</body></html>"

	file = File.open('index.html', 'w')
	file.puts index
	file.close
end

crear_html_arreglo_color('texto1','texto2',[1,2,3,4],'blue')

#falta el retorno de los métodos debe devolver nil.

