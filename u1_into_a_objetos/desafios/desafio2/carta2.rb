class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        
        raise ArgumentError, "ArgumentError el numero debe ser entre 1 y 13" if !(1..13).include?(numero)
        
        raise ArgumentError, "ArgumentError la pinta deber ser 'C', 'D', 'E', 'T'" if !['C', 'D', 'E', 'T'].include?(pinta)

        @numero=numero
        @pinta=pinta

    end    
end 