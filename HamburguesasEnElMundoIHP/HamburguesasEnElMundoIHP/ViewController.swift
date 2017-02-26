//
//  ViewController.swift
//  HamburguesasEnElMundoIHP
//
//  Created by Iris Hernandez Perez on 26/02/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPais: UILabel!
    let colores = Colores()
    let paises = Paises()
    let tipoHamburguesa = TiposHamburguesas()
    
    @IBOutlet weak var txtTipoHamburguesa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnQuieroHamburguesa() {
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
        txtPais.text = paises.regresaPaisAleatorio()
        txtTipoHamburguesa.text = tipoHamburguesa.regresaTiposHAleatorio()
    }
}

