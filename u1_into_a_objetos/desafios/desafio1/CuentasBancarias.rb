class CuentaBancaria
    attr_accessor :nombre_usuario
    def initialize(nombre_usuario, numero_cuenta, tipo=0)

        
        
        raise RangeError, 'El numero de digitos no es el correcto, deben ser 8 digitos' if   numero_cuenta.digits.count != 8
     

        raise ArgumentError, "En caso de ser cuenta vip, se debe especificar con el argumento 'vip'" if !(0..1).include?(tipo)

     

        @nombre_usuario=nombre_usuario
        @numero_cuenta=numero_cuenta 
        @tipo=tipo

    
    end

    def cuenta
        "#{@tipo}-#{@numero_cuenta}"
    end        
    
end    

c1=CuentaBancaria.new('nico', 28593742, 1)

pp c1.nombre_usuario
pp c1.cuenta