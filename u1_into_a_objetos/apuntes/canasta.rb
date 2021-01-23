class Canasta
    attr_accessor :frutas, :velas, :tarjetas
    def initialize(frutas, velas, tarjetas)
        @frutas = frutas
        @velas = velas
        @tarjetas = tarjetas
    end

    def +(otra_canasta)
        Canasta.new(@frutas + otra_canasta.frutas, @velas + otra_canasta.velas + @tarjetas + otra_canasta.tarjetas)
    end
    
    def cantidad_de_elementos
        @frutas+@velas+@tarjetas
end      

c1 = Canasta.new(2,1,3)
c2 = Canasta.new(5,2,3)

fusion_canastas = c1+c2
puts fusion_canastas.cantidad_de_elementos