require "./matriz.rb"

def mapmap(a)
  	a.map { |r| r.map { |e| yield e }}
end

def to_m(a)
  	a = a.split(/\n/)
  	a = a.map { |r| r.split(/\s+/) }
  	a = mapmap(a) { |x| x.to_f } 
end	

def read_File(file)
	contenido = File.open(file).read
	a, b = contenido.split(/\n\n+/)
	a = to_m(a)
	b = to_m(b)
	[a, b]
end

puts "Suma y multiplicación de matrices"

m1, m2 = read_File('datos')

m_MatrizA = Matriz.new(m1)
m_MatrizB = Matriz.new(m2)

puts "Matriz A:"
m_MatrizA.imprimir_Matriz

puts

puts "Matriz B:"
m_MatrizB.imprimir_Matriz

puts "Suma de las dos matrices"
m_MatrizA.sumar(m_MatrizB).imprimir_Matriz


puts " Multiplicacion de dos matrices"
#m_MatrizA.multiplicar(m_MatrizB).imprimir_Matriz
puts

