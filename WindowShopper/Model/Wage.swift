//
//  Wage.swift
//  WindowShopper
//
//  Created by Mohamed Sayyaf on 05/05/20.
//  Copyright © 2020 Mohamed Sayyaf. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //forWage is parameter name , wage is the variable name
        return Int(ceil(price/wage))
    }
    
}
