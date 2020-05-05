//
//  CurrencyTxtField.swift
//  WindowShopper
//
//  Created by Mohamed Sayyaf on 05/05/20.
//  Copyright © 2020 Mohamed Sayyaf. All rights reserved.
//

import UIKit

@IBDesignable // Class attrubute for making interface builder sync with changes
class CurrencyTxtField: UITextField {
    // custom class for UI Elements Here we created a custom class called currencytextfield subclass of textfield
    
    //To add a subview
    override func draw(_ rect: CGRect) {
        //create a ui label
        let size: CGFloat = 20
        
        //loading a sub view(label) programmatically
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        // y -> halfway between the height of the text field
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7737867236, green: 0.7739177346, blue: 0.7737694383, alpha: 0.7999009683)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        //currency location
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency //setting the currency style for formatter
        formatter.locale = .current //setting the current locale
        currencyLbl.text = formatter.currencySymbol //adding the symbol
        addSubview(currencyLbl)
    }

    
    // custom function for interface builder syncing
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    //When app is loaded this code will run
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
           
           backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.2496698944)  //25percent opacity of white
           layer.cornerRadius = 5.0 //setting the corner radius of the field
           textAlignment = .center
           clipsToBounds = true

           //setting placeholder text

           if let p = placeholder { //check if placeholder is nil, if it is nil, this codeblock doesnt run
               let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
                // now place is a attributedstring with a propery of white foreground color (for manipulating strings)
                
               attributedPlaceholder = place //overrides the regular placeholder, and uses place
               textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
