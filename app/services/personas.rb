require 'sinatra'
require 'mustache'

load '../classes/Persona.rb'

get '/personas' do
	
	template = ""
	file = File.new("../templates/personas.html", "r")
	while (line = file.gets) do
		template += line
	end
	
	personas = []
	personas.push Persona.new("Leonel Dan Fishkel", 21)
	personas.push Persona.new("Barbara sol cesar ferrino", 19)
	personas.push Persona.new("Alicia Beatriz Sackler", 58)
	personas.push Persona.new("Alberto Rodolfo fishkel", 66)
	personas.push Persona.new("Cinthia Yael Fishkel", 24)

	data = {:personas => personas}
	Mustache.render(template, data)

	

end
