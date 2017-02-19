//: Playground - Velocímetro de un automóvil
import UIKit

enum Velocidades : Int
{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (VelocidadInicial : Velocidades)
        
    {
        self = VelocidadInicial
    }
}

class Auto {
    
    var velocidad = Velocidades(VelocidadInicial : Velocidades(rawValue: 0)!)
    init ()
    {
        
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String)
    {
        var velocidadEnCadena : String = ""
        var actual : Int = self.velocidad.rawValue
       
        if (self.velocidad == Velocidades.VelocidadAlta)
         {
            velocidadEnCadena = "Velocidad Alta"
            self.velocidad = Velocidades.VelocidadMedia
         }
         else if (self.velocidad == Velocidades.Apagado)
         {
             velocidadEnCadena = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
         }
         else if (self.velocidad == Velocidades.VelocidadBaja)
         {
            velocidadEnCadena = "Velocidad Baja"
            self.velocidad = Velocidades.VelocidadMedia
         }
         else if (self.velocidad == Velocidades.VelocidadMedia)
         {
            velocidadEnCadena = "Velocidad Media"
            self.velocidad = Velocidades.VelocidadAlta
         }
        
        return ( actual,velocidadEnCadena )
        
    }
}

var auto = Auto()
for index in 1...20 {
    print (auto.cambioDeVelocidad())
}