class Punto 
    attr_reader :x, :y
    def initialize(x,y)
        @x = x
        @y = y
    end
    def avanzar()    
        @x += 1
    end    
end

