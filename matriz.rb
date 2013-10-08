#fichero de definición de la clase matriz

 class Matriz
	
	#inicializar matriz
	def initialize(matriz)
	
		@matriz = matriz
    		@row = matriz[0].size
    		@col = matriz[0].size
	end

	# asignación de get y set

	attr_reader :matriz, :row, :col
	#metodo para mostrar las matrices
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

	# definicion del metodo sumar

	def sumar (matrizb)
		sum = []
		x,y =0,0
		while x < row
			while y < col
				if y == 0
					sum << [matriz[i][j]] + matrizb.matriz[i][j]
				else
					sum[i] << matriz[x][y] + matrizb.matriz[x][y]
				end
				j= j+1			
			end
			i=i+1
			j=0
		end
		Matriz.new (sum)

	end
end 
