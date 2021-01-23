require_relative 'punto'
class Recta
    def initialize(p1, p2)
        @p1 = p1
        @p2 = p2
    end
end

puts Recta.new(Punto.new(2, 3), Punto.new(3, 4))