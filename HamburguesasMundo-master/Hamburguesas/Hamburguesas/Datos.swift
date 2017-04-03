//
//  Datos.swift
//  Hamburguesas
//
//  Created by Ulises  on 22/2/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import Foundation


class ColeccionDePaises
{
    let paises:[String]=[
        "Costa Rica",
        "Nicaragua","Panamá","Honduras",
        "El Salvador","Guatemala","Belice","México","Canadá","Estados Unidos","Cuba","República Dominicana","Haití","Guinea Ecuatorial","Timor Oriental","Suazilandia","Islandia","Sri Lanka","Irak","Afghanistán"]
    
    func obtenPais( )->String{
        let pais=Int(arc4random()%UInt32(paises.count))
        return paises[pais]
    }
}

class ColeccionDeHamburguesa
{
    let hamburguesas : [String] = ["Jamón y queso","Angus premium","Angus BBQ","Cacahamburguesa","Chocomondongo","Tocino","Chile Explosivo","North Furious","Porteña","Vegetariana","New York Steak","Mariscos","Tilapia","Atún","Pollo acelerado","Egg Muffin","Signature","Tomate y huevo","Italiana"]
    
    func obtenHamburguesas()->String{
        let posicionHamburguesas = Int(arc4random()%UInt32(hamburguesas.count))
        return hamburguesas[posicionHamburguesas]
    }
}

