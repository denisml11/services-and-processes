#!/usr/bin/env ruby 
require 'thread'

mutex = Mutex.new
list = []

h1 =  Thread.new do
  mutex.synchronize do
    3.times do
      list << "hilo1"
      sleep(1)
    end
  end
end

h2 = Thread.new do
  mutex.synchronize do
    3.times do
      list << "hilo2"
    end
  end
end
h1.join
h2.join
puts list
