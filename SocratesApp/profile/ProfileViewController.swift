//
//  ProfileViewController.swift
//  SocratesApp
//
//  Created by DAMII on 7/9/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelCode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
    }
    
    func loadData(){
        let userCode = UserDefaults.standard.string(forKey: "userCode")
        labelCode.text = userCode
    }

    @IBAction func actionCloseSession(_ sender: Any) {
        
        let alert = UIAlertController(title: "¿Desea cerrar sesión?", message: "Sus datos serán eliminados de la aplicación", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler:{ action in
            //elimine los valores del UserDefaults
            //Cambiar a la pantalla de login
            self.removeSession()
            self.gotToLogin()
        } ))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
        
    }
    
    
    func removeSession(){
        UserDefaults.standard.set("", forKey: "userCode")
        UserDefaults.standard.set(false, forKey: "userLogin")
    }
    
    func gotToLogin(){
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = storyboard.instantiateViewController(withIdentifier: "login") as! ViewController
        loginViewController.modalPresentationStyle = .fullScreen
        self.present(loginViewController, animated: true, completion: nil)
        
    }
    
}













