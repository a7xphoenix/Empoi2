//
//  ViewController.swift
//  Emploii
//
//  Created by Juan Pablo Avila Garza on 6/5/17.
//  Copyright © 2017 Juan Pablo Avila Garza. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    //TODO: FUNCIONES DE LA VISTA
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating();
        self.navigationController?.isNavigationBarHidden = true;
        // Do any additional setup after loading the view, typically from a nib.
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
            self.beap();
            self.cargarLogin();
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: FUNCIONES PARA CAMBIAR DE VISTAS
    func cargarLogin() {
        self.navTo("SBLogin")
    }
    
    func cargarVacantes() {
        self.navTo("SBVacantes")
    }
    
    //MARK: FUNCIONES ADICIONALES O DE AYUDA
    func beap() {
        AudioServicesPlaySystemSound(1016);
    }
    
    //FIXME: FUNCIONES CON ERRORES U OPTIMIZABLES
}

