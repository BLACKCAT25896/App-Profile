//
//  ViewController.swift
//  App-Profile
//
//  Created by kamrujjaman Joy on 5/23/20.
//  Copyright © 2020 kamrujjaman Joy. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame:   CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.addTarget(self, action: #selector(WelcomeVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        resultLbl . isHidden = true
        hoursLbl.isHidden=true
        
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden=false
               // resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice : price"))
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
              
            }
        }
        
    }


}

