//
//  ViewController.swift
//  CreacionDePizza
//
//  Created by Iris Hernandez Perez on 02/04/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var radioCheck = UIImage (named: "checked")
    var radioUnCheck = UIImage (named: "uncheked")
    var isClicked1:Bool!
    
    @IBOutlet weak var chkChica: UIButton!
    @IBOutlet weak var chkMediana: UIButton!
    @IBOutlet weak var chkGrande: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isClicked1 = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnChica() {
        if (isClicked1 == true)
        {
            isClicked1 = false
        }
        else
        {
            isClicked1 = true
        }
        if (isClicked1 == true)
        {
            chkChica.setImage(radioCheck, for: UIControlState.normal)
        }
        else
        {
             chkChica.setImage(radioUnCheck, for: UIControlState.normal)
        }
    }
   
}

