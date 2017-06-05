//
//  TextFieldExtension.swift
//  Emploii
//
//  Created by Juan Pablo Avila Garza on 6/5/17.
//  Copyright © 2017 Juan Pablo Avila Garza. All rights reserved.
//

import Foundation
import UIKit

extension UITextField{
    func val() -> String{
        return self.text!
    }
    
    func equals(_ txt2: UITextField) -> Bool{
        if(self.val() == txt2.val()){
            return true
        }
        else{
            return false
        }
    }
}
