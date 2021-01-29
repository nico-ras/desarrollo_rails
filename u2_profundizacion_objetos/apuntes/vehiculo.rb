class Vehiculo
    attr_reader :ruedas
    def initialize
       @ruedas = 4
    end
    def arrancar
       puts 'rRRRRRrRRRRRrrR'
    end
    def detenerse
       puts 'El motor se ha detenido...'
    end
end

class Moto < Vehiculo
   def initialize
       @ruedas = 2
   end   

end    

auto = Vehiculo.new
moto = Moto.new
puts auto.ruedas
puts moto.ruedas
puts moto.detenerse
