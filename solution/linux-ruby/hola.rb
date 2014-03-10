#!/usr/bin/env ruby 

require 'thread'

	class Persona
def initialize (name)
	@name = name
	end

	def saluda
	puts "Hola, soy #{@name}"
	end

	end

	mutex = Mutex.new

	nombres=[]

	arraynombres=[]
	nombres = 'pepe' 



	arraynombres << Thread.new do
	mutex.synchronize do 
	4.times do
	pers = Persona.new 'pepe'
	pers.saluda
sleep(2)
	end
	end
	end

	arraynombres << Thread.new do
	mutex.synchronize do
	pers = Persona.new 'jose'
	pers.saluda
sleep(2)
	end
	end

	arraynombres.each do |h|
	h.join
	end


