//
//  Datos.swift
//  HamburguesasEnElMundoIHP
//
//  Created by Iris Hernandez Perez on 26/02/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import Foundation
import UIKit
struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int (arc4random()) % colores.count
        return colores[posicion]
    }
}

class ColeccionDePaises{
    let paises = ["Argentina", "Australia", "Austria", "Azerbaiyán", "Bélgica", "Bolivia", "Brasil", "Bulgaria", "Camerún", "Canadá", "Chile", "China", "Colombia", "Corea del Norte", "Costa Rica" ,"Croacia", "Cuba", "Dinamarca", "Dominica" ,"Ecuador","Egipto","El Salvador","Eslovenia","España", "México"]
    
    func obtenPais() -> String {
        let posicion = Int (arc4random()) % paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesa {
    let tiposHamburguesas = ["Angus","Clásica","Big Carl","BIG KING","Big Mac","Chicken Big King","Crispy Chicken con Queso","Cuarto de Libra","Doble Western Bacon","​Famous Star con Queso","Hamburguesa con Tocino","King de Pollo","MEGA XT Clásica","McNífica","Portobello Mushroom","Rodeo BurgerSuper Star","TENDERGRILL","ThickBurger Original","ThickBurger Guacamole","Western Bacon con Queso",
"WHOPPER BBQ","WHOPPER con Queso","WHOPPER Angry","X-TREME"]
    
    func obtenHamburguesa() -> String {
        let posicion = Int (arc4random()) % tiposHamburguesas.count
        return tiposHamburguesas[posicion]
    }
}

