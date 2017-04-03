//
//  VistaTipoMasaViewController.swift
//  CreacionDeUnaPizzaIHP
//
//  Created by Iris Hernandez Perez on 02/04/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import UIKit

class VistaTipoMasaViewController: UIViewController {

    
    @IBOutlet weak var BoxOne: UIButton!
    @IBOutlet weak var BoxTwo: UIButton!
    @IBOutlet weak var BoxThree: UIButton!
    
    var BoxOn = UIImage(named: "checked")
    var BoxOff = UIImage(named: "unchecked")
    
    var isBoxClicked1 : Bool!
    var isBoxClicked2 : Bool!
    var isBoxClicked3: Bool!
    
    var tamanioPizza: String = ""
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        isBoxClicked1 = false
        isBoxClicked2 = false
        isBoxClicked3 = false
        

        // Do any additional setup after loading the view.
    }
    
        override func viewWillAppear(_ animated: Bool) {
        
        if (tipoMasa == "delgada")
        {
            isBoxClicked1 = true
            BoxOne.setImage(BoxOn, for: UIControlState.normal)
        }
        else if (tipoMasa == "crujiente")
        {
            isBoxClicked2 = true
            BoxTwo.setImage(BoxOn, for: UIControlState.normal)
        }
        else if (tipoMasa == "gruesa")
        {
            isBoxClicked3 = true
            BoxThree.setImage(BoxOn, for: UIControlState.normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnOne(_ sender: UIButton) {
        if (isBoxClicked1 == true)
        {
            isBoxClicked1 = false
        }
        else{
            isBoxClicked1 = true
        }
        
        if (isBoxClicked1 == true)
        {
            BoxOne.setImage(BoxOn, for: UIControlState.normal)
            BoxTwo.setImage(BoxOff, for: UIControlState.normal)
            BoxThree.setImage(BoxOff, for: UIControlState.normal)
            isBoxClicked2 = false
            isBoxClicked3 = false
            tipoMasa = "delgada"
            
            
        }
        else{
            BoxOne.setImage(BoxOff, for: UIControlState.normal)
        }
    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
        if (isBoxClicked2 == true)
        {
            isBoxClicked2 = false
        }
        else{
            isBoxClicked2 = true
        }
        
        if (isBoxClicked2 == true)
        {
            BoxTwo.setImage(BoxOn, for: UIControlState.normal)
            BoxOne.setImage(BoxOff, for: UIControlState.normal)
            BoxThree.setImage(BoxOff, for: UIControlState.normal)
            isBoxClicked1 = false
            isBoxClicked3 = false
            tipoMasa = "crujiente"
            
            
        }
        else{
            BoxTwo.setImage(BoxOff, for: UIControlState.normal)
        }

    }
    
    
    @IBAction func btnThree(_ sender: UIButton) {
        if (isBoxClicked3 == true)
        {
            isBoxClicked3 = false
        }
        else{
            isBoxClicked3 = true
        }
        
        if (isBoxClicked3 == true)
        {
            BoxThree.setImage(BoxOn, for: UIControlState.normal)
            BoxOne.setImage(BoxOff, for: UIControlState.normal)
            BoxTwo.setImage(BoxOff, for: UIControlState.normal)
            isBoxClicked1 = false
            isBoxClicked2 = false
            tipoMasa = "gruesa"
            
            
        }
        else{
            BoxThree.setImage(BoxOff, for: UIControlState.normal)
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
