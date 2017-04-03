//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Ulises  on 22/2/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiquetaHamburguesa: UILabel!
    @IBOutlet weak var etiquetaPais: UILabel!
    let colores=Colores()
    let pais=ColeccionDePaises()
    let hamburguesa=ColeccionDeHamburguesa()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func CambioPaisHamburguesa() {
        let colorAleatorio=colores.RegresaColorAleatorio()
        etiquetaPais.text=pais.obtenPais()
        etiquetaHamburguesa.text=hamburguesa.obtenHamburguesas()
        view.backgroundColor=colorAleatorio
    }
    
    /*
        */
    

    
}

