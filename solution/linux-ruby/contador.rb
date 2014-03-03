#!usr/bin/env ruby
x = 0
Thread.new do
	  while x < 10000
	    x -= 1
	    puts "DEC: I decremented x to #{x}\n"
	  end
	  puts "DEC: x is too high; I give up!\n"
	end
	while x < 100000
	  x += 3
	  puts "INC: I incremented x to #{x}\n"
	end
