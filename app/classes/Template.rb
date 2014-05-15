class Template
	attr_accessor :tmp

	def initialize(name)
		self.tmp = ""
		file = File.new("../templates/" + name, "r")
		while (line = file.gets) do
			self.tmp += line
		end
	
	end
end