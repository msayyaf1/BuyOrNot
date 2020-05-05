//
//  ViewController.swift
//  WindowShopper
//
//  Created by Mohamed Sayyaf on 04/05/20.
//  Copyright © 2020 Mohamed Sayyaf. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // creating a UIButton in code
        // then attaching to textfield accessory
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5086376071, blue: 0.1931696534, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) //setting the title of the button
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal) //setting text color
        //adding target of the button
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        // selectors are function that is called later on, uses an objective c feature
    
        //setting the button as the accessoryview
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    @objc func calculate(){
        // validation to ensure they're not nil
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
           //validation to ensure they're doubles
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true) //to dismiss the keyboard
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        //When clear button is pressed we need ot clear the text fields
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
      }

}

