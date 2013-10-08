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
				print("#{matriz[x][y]} \t")
				print("") 
				y= y + 1			
			end
			puts
    			x  =  x + 1
    			y = 0
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
					sum << [matriz[x][y] + matrizb.matriz[x][y]]
				else
					sum[x] << matriz[x][y] + matrizb.matriz[x][y]
				end
				y= y+1			
			end
			x=x+1
			y=0
		end
		Matriz.new (sum)

	end
	#definicion del metodo multiplicar
	def multiplicar(matrizc)

    		matRes = Array.new(matriz.size - 1,0)

		for fil in 0...matriz[0].size

			matRes[fil] = Array.new(matrizc.matriz.size,0)

			for col in 0...matrizc.matriz.size

				for pos in 0...matriz.size

					prod = matriz[fil][pos] * matrizc.matriz[pos][col]
					matRes[fil][col] = matRes[fil][col] + prod

				end

			end

    		end

    		Matriz.new(matRes)

  	end



end
end 
