#!/usr/bin/env ruby -w
# primer demon  

require 'tempfile'
require 'daemonize'
include Daemonize            

puts 'About to daemonize.'
daemonize                    

log = Tempfile.new('daemon.log')
	loop do
		log.puts "I'm a daemon, doin' daemon things."
		log.flush
		sleep 5
	end
