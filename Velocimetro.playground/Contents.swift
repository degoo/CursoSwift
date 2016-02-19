//: Velocimetro

import UIKit

enum Velocidades: Int {
  case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

  init(velocidadInicial: Velocidades){
      self = velocidadInicial
  }
}

class Auto
{
    var velocidad: Velocidades
    
    init()
    {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado);
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String)
    {
        var mensaje: String = "";
        let velocidadActual: Velocidades = velocidad;
        
        switch (velocidad)
        {
          case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            mensaje = "Apagado"
            break
        
          case .VelocidadBaja:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad baja"
            break
        
          case .VelocidadMedia:
            velocidad = .VelocidadAlta
            mensaje = "Velocidad media"
            break
        
          case .VelocidadAlta:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad alta"
            break
        
        }
      
        return (velocidadActual.rawValue, mensaje)
    }
}

var auto = Auto();

for (var i = 0; i < 20; i++) {
    var datos = auto.cambioDeVelocidad();
    print(String(i) + ".  " + String(datos.actual) + ", \(datos.velocidadEnCadena)")
}
