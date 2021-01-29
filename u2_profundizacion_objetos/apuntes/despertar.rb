class Madre
    attr_accessor :nombre
    def initialize(nombre)
      @nombre = nombre
    end
    def despertar
       puts 'Es hora de despertar'
    end
end
class Hija < Madre
    def despertar
       puts super +'  para ir al colegio!' 
       #'Es hora de despertar para ir al colegio!'
    end
end