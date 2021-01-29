class Usuario
    def initialize(nombre, email)
    @nombre = nombre
    @email = email
    end
    def puede_editar?
    false
    end
    end
    class Admin < Usuario
    def puede_editar?
    true
    end
    end
    class Autor < Usuario
    def puede_editar?
    true
    end
    end
    # Usa el constructor de la superclase
    a1 = Autor.new('Erick', 'erick@desafiolatam.com')
    a1.puede_editar? # => true