//
//  Wage.swift
//  App-Profile
//
//  Created by kamrujjaman Joy on 5/24/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double)->Int{
        return Int(ceil(price / wage))
    }
}
