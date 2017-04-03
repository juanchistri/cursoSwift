//
//  IngredientesViewController.swift
//  CreacionDeUnaPizzaIHP
//
//  Created by Iris Hernandez Perez on 02/04/17.
//  Copyright © 2017 Iris Hernandez Perez. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {

    
    @IBOutlet weak var Box1: UIButton!
    
    @IBOutlet weak var Box2: UIButton!
    
    @IBOutlet weak var Box3: UIButton!
    
    
    @IBOutlet weak var Box4: UIButton!
    
    
    @IBOutlet weak var Box5: UIButton!
    
    @IBOutlet weak var Box6: UIButton!
    
    @IBOutlet weak var Box7: UIButton!
    
    @IBOutlet weak var Box8: UIButton!
    
    @IBOutlet weak var Box9: UIButton!
    
    var isBoxClicked1:Bool!
    var isBoxClicked2:Bool!
    var isBoxClicked3:Bool!
    var isBoxClicked4:Bool!
    var isBoxClicked5:Bool!
    var isBoxClicked6:Bool!
    var isBoxClicked7:Bool!
    var isBoxClicked8:Bool!
    var isBoxClicked9:Bool!
    
    var BoxOn = UIImage(named: "CB_checked")
    var BoxOff = UIImage(named: "CB_unchecked")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isBoxClicked1 = false
        isBoxClicked2 = false
        isBoxClicked3 = false
        isBoxClicked4 = false
        isBoxClicked5 = false
        isBoxClicked6 = false
        isBoxClicked7 = false
        isBoxClicked8 = false
        isBoxClicked9 = false
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (arrCheckBox[0] == 1)
        {
            isBoxClicked1 = true
            Box1.setImage(BoxOn, for: UIControlState.normal)
        }
        
         if (arrCheckBox[1] == 1)
        {
            isBoxClicked2 = true
            Box2.setImage(BoxOn, for: UIControlState.normal)
        }
         if (arrCheckBox[2] == 1)
        {
            isBoxClicked3 = true
            Box3.setImage(BoxOn, for: UIControlState.normal)
        }
         if (arrCheckBox[3] == 1)
        {
            isBoxClicked4 = true
            Box4.setImage(BoxOn, for: UIControlState.normal)
        }
         if (arrCheckBox[4] == 1)
        {
            isBoxClicked5 = true
            Box5.setImage(BoxOn, for: UIControlState.normal)
        }
         if (arrCheckBox[5] == 1)
        {
            isBoxClicked6 = true
            Box6.setImage(BoxOn, for: UIControlState.normal)
        }
         if (arrCheckBox[6] == 1)
        {
            isBoxClicked7 = true
            Box7.setImage(BoxOn, for: UIControlState.normal)
        }
         if (arrCheckBox[7] == 1)
        {
            isBoxClicked8 = true
            Box8.setImage(BoxOn, for: UIControlState.normal)
        }
         if (arrCheckBox[8] == 1)
        {
            isBoxClicked9 = true
            Box9.setImage(BoxOn, for: UIControlState.normal)
        }




    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn1(_ sender: UIButton) {
        
        if (isBoxClicked1 == true)
        {
            isBoxClicked1 = false
        }
        else{
            isBoxClicked1 = true
        }
        
        if (isBoxClicked1 == true)
        {
            Box1.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[0] = 1
    
        }
        else{
            Box1.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[0] = 0
        }

    }

    @IBAction func btn2(_ sender: UIButton) {
        if (isBoxClicked2 == true)
        {
            isBoxClicked2 = false
        }
        else{
            isBoxClicked2 = true
        }
        
        if (isBoxClicked2 == true)
        {
            Box2.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[1] = 1
            
        }
        else{
            Box2.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[1] = 0
        }
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        if (isBoxClicked3 == true)
        {
            isBoxClicked3 = false
        }
        else{
            isBoxClicked3 = true
        }
        
        if (isBoxClicked3 == true)
        {
            Box3.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[2] = 1
            
        }
        else{
            Box3.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[2] = 0
        }
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        if (isBoxClicked4 == true)
        {
            isBoxClicked4 = false
        }
        else{
            isBoxClicked4 = true
        }
        
        if (isBoxClicked4 == true)
        {
            Box4.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[3] = 1
            
        }
        else{
            Box4.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[3] = 0
        }
    }
    
    @IBAction func btn5(_ sender: UIButton) {
        if (isBoxClicked5 == true)
        {
            isBoxClicked5 = false
        }
        else{
            isBoxClicked5 = true
        }
        
        if (isBoxClicked5 == true)
        {
            Box5.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[4] = 1
            
        }
        else{
            Box5.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[4] = 0
        }
    }
    
    @IBAction func btn6(_ sender: UIButton) {
        if (isBoxClicked6 == true)
        {
            isBoxClicked6 = false
        }
        else{
            isBoxClicked6 = true
        }
        
        if (isBoxClicked6 == true)
        {
            Box6.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[5] = 1
            
        }
        else{
            Box6.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[5] = 0
        }
    }
    
    @IBAction func btn7(_ sender: UIButton) {
        if (isBoxClicked7 == true)
        {
            isBoxClicked7 = false
        }
        else{
            isBoxClicked7 = true
        }
        
        if (isBoxClicked7 == true)
        {
            Box7.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[6] = 1
            
        }
        else{
            Box7.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[6] = 0
        }
    }
    
    @IBAction func btn8(_ sender: UIButton) {
        if (isBoxClicked8 == true)
        {
            isBoxClicked8 = false
        }
        else{
            isBoxClicked8 = true
        }
        
        if (isBoxClicked8 == true)
        {
            Box8.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[7] = 1
            
        }
        else{
            Box8.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[7] = 0
        }
    }
    
    @IBAction func btn9(_ sender: UIButton) {
        if (isBoxClicked9 == true)
        {
            isBoxClicked9 = false
        }
        else{
            isBoxClicked9 = true
        }
        
        if (isBoxClicked9 == true)
        {
            Box9.setImage(BoxOn, for: UIControlState.normal)
            arrCheckBox[8] = 1
            
        }
        else{
            Box9.setImage(BoxOff, for: UIControlState.normal)
            arrCheckBox[8] = 0
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
