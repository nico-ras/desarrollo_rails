   
class CuentaBancaria

    attr_accessor :saldo

   def initialize(nombre_banco, numero_cuenta, saldo=0)

    @nombre_banco=nombre_banco
    @numero_cuenta=numero_cuenta
    @saldo=saldo
   end

   
   
   def transferir(monto, otra_cuenta)
    self.saldo -= monto
    otra_cuenta.saldo += monto
   end

    
end 

class Usuario
    attr_reader :Usuario
    attr_accessor :saldo_total
    attr_reader :cuentas
    def initialize(nombre, cuentas=[])

        raise ArgumentError, 'El usuario debe tener al menos 1 cuenta' unless cuentas.count >= 1

        @nombre=nombre
        @cuentas=cuentas
    end 
    def saldo_total
        suma_total=0
        self.cuentas.each do |i|
            suma_total += i.saldo
        end
        pp suma_total
    end    

        
        
       

end 
      
 
 puts cuenta1=CuentaBancaria.new('bankbank', 12345678, 5000)
 puts cuenta2=CuentaBancaria.new('credibank', 87654321, 5000)
 puts usuario1=Usuario.new('nico', [cuenta1, cuenta2])



 usuario1.saldo_total