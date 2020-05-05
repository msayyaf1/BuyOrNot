//
//  CurrencyTxtField.swift
//  WindowShopper
//
//  Created by Mohamed Sayyaf on 05/05/20.
//  Copyright © 2020 Mohamed Sayyaf. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {

    // custom class for UI Elements
    // Here we created a custom class called currencytextfield subclass of textfield
    
    
    //When app is loaded this code will run
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.2496698944)  //25percent opacity of white
        layer.cornerRadius = 5.0 //setting the corner radius of the field
        textAlignment = .center
        
        //setting placeholder text

        if let p = placeholder { //check if placeholder is nil, if it is nil, this codeblock doesnt run
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
             // now place is a attributedstring with a propery of white foreground color (for manipulating strings)
             
            attributedPlaceholder = place //overrides the regular placeholder, and uses place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        // BEFORE :- REFACTORING
        
//        if placeholder == nil {
//            placeholder = " "
//        }
//
//        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor:       UIColor.white])

        
// now place is a attributedstring with a propery of white foreground color (for manipulating strings)
//
//         attributedPlaceholder = place //overrides the regular placeholder, and uses place
//         textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//
        
        
    }
    
}
