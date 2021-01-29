# class Padre
#     attr_accessor
#     def initialize(nombre)
#         @nombre=nombre
#     end
# end

# class Hija < Padre
# end

# fernanda = Hija.new("Fernanda")
# puts fernanda.nombre



class Madre
    attr_accessor
    def initialize(nombre)
        @nombre=nombre
    end
end

class Hija < Madre
    def initialize(nombre)
        @nombre=nombre + " jr"
    end
end

madre = Madre.new("Fernanda")
hija = Hija.new(madre.nombre)
puts madre.nombre
puts hija.nombre