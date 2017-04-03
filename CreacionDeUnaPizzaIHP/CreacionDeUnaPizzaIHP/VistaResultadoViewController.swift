//
//  VistaResultadoViewController.swift
//  CreacionDeUnaPizzaIHP
//
//  Created by Iris Hernandez Perez on 02/04/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import UIKit

class VistaResultadoViewController: UIViewController {

    @IBOutlet weak var btnRegresar: UIButton!
    @IBOutlet weak var mensaje: UILabel!
    var txtMensaje = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (banConfirmar == false)
        {
            if (tamPizza == "")
            {
                txtMensaje += "- Debes seleccionar el tamaño de la pizza. \n"
            }
            if (tipoMasa == "")
            {
                txtMensaje += "- Debes seleccionar el tipo de masa. \n"
            }

            if (tipoQueso == "" )
            {
                txtMensaje += "- Debes seleccionar el tipo de queso.\n"
            }
            if ( ingredientes != "" )
            {
                if (contadorIngredientes >= 5)
                {
                    txtMensaje += "- Debes seleccionar menos de 5 ingredientes. \n"
                }
                
            
            }
            else
            {
                txtMensaje += "- Debes seleccionar al menos un ingrediente. \n"
            }
            btnRegresar.isHidden = false
        }
        else
        {
            txtMensaje += "Tu pedido ha sido ENVIADO a la cocina. \n"
            txtMensaje += "  Gracias por elegirnos."
            btnRegresar.isHidden = true
        }
        
        mensaje.text = txtMensaje
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
