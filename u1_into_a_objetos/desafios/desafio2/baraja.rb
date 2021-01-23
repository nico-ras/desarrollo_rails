require_relative 'carta2.rb'

class Baraja
    attr_accessor :cartas
    def initialize(cartas=[])

        @cartas=cartas
        
        ['C', 'D', 'E', 'T'].each {|i| (1..13).each {|j| cartas.push carta=Carta.new(j,i) } }
        
    end    
    
    def barajar

        @cartas=cartas.shuffle

    end
    
    def primera_carta
        
        cartas.pop
    
    end

    def cinco_cartas

        cartas.pop(5)
    
    end

end    

 b=Baraja.new

 b.barajar

 # b.primera_carta

 # b.cinco_cartas