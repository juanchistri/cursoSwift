//
//  ViewController.swift
//  CreacionDeUnaPizzaIHP
//
//  Created by Iris Hernandez Perez on 02/04/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BoxOne: UIButton!
    @IBOutlet weak var BoxTwo: UIButton!
    @IBOutlet weak var BoxThree: UIButton!
    
    var BoxOn = UIImage(named: "checked")
    var BoxOff = UIImage(named: "unchecked")
    
    var isBoxClicked1 : Bool!
    var isBoxClicked2 : Bool!
    var isBoxClicked3: Bool!
    
    override func viewWillAppear(_ animated: Bool) {
        if (tamPizza == "chica")
        {
            isBoxClicked1 = true
            BoxOne.setImage(BoxOn, for: UIControlState.normal)
        }
        else if (tamPizza == "mediana")
        {
            isBoxClicked2 = true
            BoxTwo.setImage(BoxOn, for: UIControlState.normal)
        }
        else if (tamPizza == "grande")
        {
            isBoxClicked3 = true
            BoxThree.setImage(BoxOn, for: UIControlState.normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isBoxClicked1 = false
        isBoxClicked2 = false
        isBoxClicked3 = false
        banConfirmar = false
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
            tamPizza  = "chica"

        
        }
        else{
             BoxOne.setImage(BoxOff, for: UIControlState.normal)
        }
    }
    
    
    @IBAction func btnTwo(_ sender: Any) {
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
            tamPizza = "mediana"

            
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
            tamPizza = "grande"

            
        }
        else{
            BoxThree.setImage(BoxOff, for: UIControlState.normal)
        }
    }
}

