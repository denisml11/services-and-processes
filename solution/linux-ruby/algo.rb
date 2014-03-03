#!/usr/bin/ruby


		# mi pregunta es, porque aquí #{} si que lo coje e imprime el tiepo, pero en cambio
		# cuando le paso una variable, no me imprime su valor, ¿Por qué?
		# Resulta que en el puts, si ponemos "" en vez de '', si que lo coje y se imprime. Debuti !!


def func1
i=0
   while i<=2
      puts "func1 at: #{Time.now}\n"
      sleep(2)
      i=i+1
   end
end

def func2
   j=0
  # while j<=2
  #    puts "func2 at: #{Time.now}\n"
  #    sleep(1)
  #    j=j+1
  # end

  loop do #la funcion 1 llega un momento que acaba, cuando i > 3, okok
     puts "j siempre va a ser menor que 0. Probemos #{j}\n"
     sleep(5)
  end

end

puts "Started At #{Time.now}\n"
t1=Thread.new{func1()}
t2=Thread.new{func2()}
t1.join
t2.join
puts "End at #{Time.now}\n"
