#!/usr/bin/env ruby -w

#usando hilos

x = 0 #damos un valor inicial a x

Thread.new do #creamos un nuevo hilo

	while x < 5 #mientras el valor de x sea menor que 5000
	  x-= 1
	  puts 'decreciendo. He decrementado x a #{x}\n'
	end
	puts 'decreciendo. x es alto; Igive up\n'
end

	while x < 5
	  x += 3
	  puts 'incrementando. He incrementdo x a #{x}\n'
	end
