//
//  LoginController.swift
//  Emploii
//
//  Created by Juan Pablo Avila Garza on 6/5/17.
//  Copyright © 2017 Juan Pablo Avila Garza. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true;
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false;
    }
    
    //MARK: FUNCION DE LOGIN
    @IBAction func btnAcceder_Touch(_ sender: UIButton) {
        
        /*FIRAuth.auth()?.signIn(withEmail: txtEmail.val(), password: txtPassword.val())
        {
            (user, error) in
            if let error = error{
                print(error.localizedDescription)
            }
            else if let user = user{
                print(user.email!)
                self.navTo("SBLogin")
            }
        }*/
    }
    
    //TODO: FUNCIONES AUXILIARES
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
