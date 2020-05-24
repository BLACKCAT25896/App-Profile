//
//  CurrencyTxtField.swift
//  App-Profile
//
//  Created by kamrujjaman Joy on 5/23/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    
  
    
    
    
    
    override func prepareForInterfaceBuilder() {
       customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
        
    }
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2514982877)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder{
            let placeholder = NSAttributedString(string: p, attributes: [.foregroundColor : UIColor.white])
            
            attributedPlaceholder = placeholder
            textColor = UIColor.white
        }
    }

}
