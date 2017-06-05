//
//  RegistroController.swift
//  Emploi
//
//  Created by MAC 11 on 03/06/17.
//  Copyright © 2017 capa8. All rights reserved.
//

import UIKit

class RegistroController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword1: UITextField!
    @IBOutlet weak var txtPassword2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: FUNCIONES DE LA VISTA
    
    @IBAction func btnRegistrar_Touch(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Confirmar", message: "¿Confirmas que los datos introducidos son correctos?", preferredStyle: .alert);
        
        let defaultAction = UIAlertAction(title: "Cancelar", style: .cancel);
        
        let btnAceptar = UIAlertAction(title: "Aceptar", style: .default)
        {
            (action: UIAlertAction) in
            self.Registrar()
        }
        
        alertController.addAction(defaultAction)
        alertController.addAction(btnAceptar)
        present(alertController, animated: true, completion: nil);
        
    }
    
    func Registrar() {
        if(txtPassword1.equals(txtPassword2)){
            /*FIRAuth.auth()?.createUser(withEmail: txtEmail.val(), password: txtPassword1.val()){
                (user, error) in
                if let error = error{
                    print(error.localizedDescription)
                    self.Alert(error.localizedDescription)
                }
                else if let user = user{
                    print(user.email!)
                    self.navTo("SBVacantes")
                }
            }*/
        }
    }
    
    func Alert(_ text: String){
        let alertController = UIAlertController(title: "", message: text, preferredStyle: .alert);
        let defaultAction = UIAlertAction(title: "OK", style: .cancel);
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil);
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
