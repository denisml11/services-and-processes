#!/usr/bin/env ruby 
# fish_market.rb


class Client
	@@ticket = 0

	def initialize
		@@ticket += 1
	         @ticket  = @@ticket
		puts"Hi, i'm cliente number #{ticket}."
	end

  def ticket_numer?
    @ticket
  end

end

fm_queue = [] #cola es un array, cola de personas
mutex = Mutex.new

Thread.new do
 loop do
	sleep(rand(3));
	mutex.synchronize {
	fm_queue.push Cliente.new
 }
 end
end

loop do
  unless fm_queue.empty?

mutex.synchronize {
	puts"number #{fm_queue.shift.ticket_number?}?" #saca primer elemento de la cola ty desplaza los demas elementos a la izquierda
	}
        sleep (rand(7))
  end
end
