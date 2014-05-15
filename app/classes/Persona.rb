class Persona
	attr_accessor :edad
	attr_accessor :nombre
	attr_accessor :status

	def initialize(nombre, edad)
		self.edad = edad
		self.nombre = nombre
		if edad >= 21
			self.status = "Es mayor de edad"
		else
			self.status = "Es menor de edad"
		end
	end
end