//
//  VistaTipoQuesoViewController.swift
//  CreacionDeUnaPizzaIHP
//
//  Created by Iris Hernandez Perez on 02/04/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import UIKit

class VistaTipoQuesoViewController: UIViewController {

    @IBOutlet weak var BoxOne: UIButton!
    @IBOutlet weak var BoxTwo: UIButton!
    @IBOutlet weak var BoxThree: UIButton!
    @IBOutlet weak var BoxFour: UIButton!
    
    var BoxOn = UIImage(named: "checked")
    var BoxOff = UIImage(named: "unchecked")
    
    var isBoxClicked31 : Bool!
    var isBoxClicked32 : Bool!
    var isBoxClicked33: Bool!
    var isBoxClicked34: Bool!

    override func viewDidLoad() {
        super.viewDidLoad()
        isBoxClicked31 = false
        isBoxClicked32 = false
        isBoxClicked33 = false
        isBoxClicked34 = false

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (tipoQueso == "mozarela")
        {
            isBoxClicked31 = true
            BoxOne.setImage(BoxOn, for: UIControlState.normal)
        }
        else if (tipoQueso == "cheddar")
        {
            isBoxClicked32 = true
            BoxTwo.setImage(BoxOn, for: UIControlState.normal)
        }
        else if (tipoQueso == "parmesano")
        {
            isBoxClicked33 = true
            BoxThree.setImage(BoxOn, for: UIControlState.normal)
        }
        else if (tipoQueso == "sin queso")
        {
            isBoxClicked34 = true
            BoxFour.setImage(BoxOn, for: UIControlState.normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnOne(_ sender: UIButton) {
        if (isBoxClicked31 == true)
        {
            isBoxClicked31 = false
        }
        else{
            isBoxClicked31 = true
        }
        
        if (isBoxClicked31 == true)
        {
            BoxOne.setImage(BoxOn, for: UIControlState.normal)
            BoxTwo.setImage(BoxOff, for: UIControlState.normal)
            BoxThree.setImage(BoxOff, for: UIControlState.normal)
            BoxFour.setImage(BoxOff, for: UIControlState.normal)
            isBoxClicked32 = false
            isBoxClicked33 = false
            isBoxClicked34 = false
            tipoQueso = "mozarela"

            
        }
        else{
            BoxOne.setImage(BoxOff, for: UIControlState.normal)
        }

    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
        if (isBoxClicked32 == true)
        {
            isBoxClicked32 = false
        }
        else{
            isBoxClicked32 = true
        }
        
        if (isBoxClicked32 == true)
        {
            BoxTwo.setImage(BoxOn, for: UIControlState.normal)
            BoxOne.setImage(BoxOff, for: UIControlState.normal)
            BoxThree.setImage(BoxOff, for: UIControlState.normal)
            BoxFour.setImage(BoxOff, for: UIControlState.normal)
            isBoxClicked31 = false
            isBoxClicked33 = false
            isBoxClicked34 = false
            tipoQueso = "cheddar"
            
            
        }
        else{
            BoxTwo.setImage(BoxOff, for: UIControlState.normal)
        }

    }
    
    @IBAction func btnThree(_ sender: UIButton) {
        if (isBoxClicked33 == true)
        {
            isBoxClicked33 = false
        }
        else{
            isBoxClicked33 = true
        }
        
        if (isBoxClicked33 == true)
        {
            BoxThree.setImage(BoxOn, for: UIControlState.normal)
            BoxTwo.setImage(BoxOff, for: UIControlState.normal)
            BoxFour.setImage(BoxOff, for: UIControlState.normal)
            BoxOne.setImage(BoxOff, for: UIControlState.normal)
            isBoxClicked32 = false
            isBoxClicked31 = false
            isBoxClicked34 = false
            tipoQueso = "parmesano"
            
        }
        else{
            BoxThree.setImage(BoxOff, for: UIControlState.normal)
        }

    }
    
    @IBAction func btnFour(_ sender: UIButton) {
        if (isBoxClicked34 == true)
        {
            isBoxClicked34 = false
        }
        else{
            isBoxClicked34 = true
        }
        
        if (isBoxClicked34 == true)
        {
            BoxFour.setImage(BoxOn, for: UIControlState.normal)
            BoxTwo.setImage(BoxOff, for: UIControlState.normal)
            BoxThree.setImage(BoxOff, for: UIControlState.normal)
            BoxOne.setImage(BoxOff, for: UIControlState.normal)
            isBoxClicked32 = false
            isBoxClicked33 = false
            isBoxClicked31 = false
            tipoQueso = "sin queso"
            
        }
        else{
            BoxFour.setImage(BoxOff, for: UIControlState.normal)
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
