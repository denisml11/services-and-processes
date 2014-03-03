#!/usr/bin/ruby -w
# Supermercado

require 'thread'

class Cliente
        def initialize(codigoCliente, cantidadProductos, arrayProductos)
                @codigoCliente = codigoCliente
                @cantidadProductos = cantidadProductos
                @arrayProductos = arrayProductos
        end

        def CogerProducto
                @arrayProductos.shift(random(6))
        end

        def GetCliente
                @codigoCliente
        end
end

class Producto
end

class Empleado
        def initialize(arrayClientes, arrayProductos)
                @arrayClientes = arrayClientes
                @arrayProductos = arrayProductos
                @estado = 'parado'
        end

        def Atender
                
                        @estado = 'atendiendo'
                        @arrayClientes.shift
            
        end

        def Reponer
                @estado = 'reponiendo'
                producto = Producto.new
                @arrayProductos.push(producto)
        end

        def GetEstado
                @estado
        end
end

arrayProductos = Array.new
arrayClientes = Array.new
arrayEmpleado = Array.new



#Llenar array productos
while arrayProductos.length<100
        producto = Producto.new
        arrayProductos.push(producto)
end

# Generar clientes
h1 = Thread.new do
        while 1
                clienteNuevo = Cliente.new 'c', rand(6), arrayProductos
                arrayClientes.push(clienteNuevo)

                sleep(rand(2))
        end
end

#Empleado1
h2 = Thread.new do
        empleado = Empleado.new(arrayClientes, arrayProductos)
        arrayEmpleado.push(empleado)

        while 1
                opcion = rand(2)
                if opcion == 1
                        empleado.Reponer
                        puts "Empleado1: "+ empleado.GetEstado + "\n"
                        sleep(1)
                else
                        empleado.Atender
                        puts "Empleado1: "+ empleado.GetEstado + "\n"
                        sleep(1)
                end
        end
end

#Empleado2
h3 = Thread.new do
        empleado = Empleado.new(arrayClientes, arrayProductos)
        arrayEmpleado.push(empleado)

        while 1
                opcion = rand(2)
                if opcion == 1
                        empleado.Reponer
                        puts "Empleado2: "+ empleado.GetEstado + "\n"
                        sleep(1)
                else
                        empleado.Atender
                        puts "Empleado2: "+ empleado.GetEstado + "\n"
                        sleep(1)
                end
        end
end

#Empleado3
h4 = Thread.new do
        empleado = Empleado.new(arrayClientes, arrayProductos)
        arrayEmpleado.push(empleado)

        while 1
                opcion = rand(2)
                if opcion == 1
                        empleado.Reponer
                        puts "Empleado3: "+ empleado.GetEstado + "\n"
                        sleep(1)
                else
                        empleado.Atender
                        puts "Empleado3: "+ empleado.GetEstado + "\n"
                        sleep(1)
                end
        end
end

h5 = Thread.new do
        while 1
                puts "-->Productos: " + arrayProductos.length.to_s + " -- Clientes: " + arrayClientes.length.to_s + "<--"
                sleep(1)
                Thread.list
        end
end

h1.join
h2.join
h3.join
h4.join
h5.join
