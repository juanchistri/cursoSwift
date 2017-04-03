//
//  VistaConfirmacionViewController.swift
//  CreacionDeUnaPizzaIHP
//
//  Created by Iris Hernandez Perez on 02/04/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import UIKit

class VistaConfirmacionViewController: UIViewController {
    
    
    @IBOutlet weak var labelTamanio: UILabel!

    @IBOutlet weak var laberlTM: UILabel!
    
    @IBOutlet weak var labelTQ: UILabel!
    
    @IBOutlet weak var laberIngredientes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelTamanio.text = tamPizza
        laberlTM.text = tipoMasa
        labelTQ.text = tipoQueso
        contadorIngredientes = 0
        ingredientes = ""
        for index in 0...8 {
           if  (arrCheckBox[index] == 1)
          
           {
              contadorIngredientes = contadorIngredientes + 1
            ingredientes += arrCheckBoxText[index] + ", "
            }

        }
               laberIngredientes.text = ingredientes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnConfirmar(_ sender: UIButton) {
        
        if ((tamPizza != "") && (tipoQueso != "" ) && (tipoMasa != "") && ( ingredientes != "" && contadorIngredientes <= 5))
        {
            banConfirmar = true
            
        }
        else
        
        {
            banConfirmar = false
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
