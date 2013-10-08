#fichero de definición de la clase matriz

 class Matriz
	
	#inicializar matriz
	def initialize(matriz)
	
		@matriz = matriz
    		@filas = matriz[0].size
    		@columnas = matriz[0].size
	end

	# asignación de get y set

	attr_reader :matriz, :filas, :columnas
