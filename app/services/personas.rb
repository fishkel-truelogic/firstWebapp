require 'sinatra'
require 'mustache'

Dir["../classes/*.rb"].each {|file| require file }

get '/personas' do
	
	personas = []
	personas.push Persona.new("Leonel Dan Fishkel", 21)
	personas.push Persona.new("Barbara sol cesar ferrino", 19)
	personas.push Persona.new("Alicia Beatriz Sackler", 58)
	personas.push Persona.new("Alberto Rodolfo fishkel", 66)
	personas.push Persona.new("Cinthia Yael Fishkel", 24)

	template = Template.new("personas.html")
	data = {:personas => personas}
	
	Mustache.render(template.tmp, data)

end
