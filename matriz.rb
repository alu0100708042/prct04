#fichero de definición de la clase matriz

 class Matriz
	
	#inicializar matriz
	def initialize(matriz)
	
		@matriz = matriz
    		@row = matriz[0].size
    		@col = matriz[0].size
	end

	# asignación de get y set

	attr_reader :matriz, :filas, :columnas

	def imprimir_Matriz
		x,y = 0,0
		
		while x < row
			while y < col
				print("#{matriz[i][j]} \t")
				print("") 
				j += 1			
			end
			puts
    			i = i + 1
    			j = 0
		end
		puts 
	end
