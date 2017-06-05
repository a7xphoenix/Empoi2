//
//  ViewControllerExtension.swift
//  Emploii
//
//  Created by Juan Pablo Avila Garza on 6/5/17.
//  Copyright © 2017 Juan Pablo Avila Garza. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    func navTo(_ identifier: String){
        let td = storyboard?.instantiateViewController(withIdentifier: identifier);
        switch(identifier){
        case "SBLogin":
            let tablaDetClase = td as! LoginController;
            self.navigationController?.pushViewController(tablaDetClase, animated: true);
            break;
        case "SBVacantes":
            let tablaDetClase = td as! VacantesController;
            self.navigationController?.pushViewController(tablaDetClase, animated: true);
            break;
        default:
            break;
        }
    }
}
