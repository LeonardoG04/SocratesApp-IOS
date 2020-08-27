//
//  ViewController.swift
//  SocratesApp
//
//  Created by DAMII on 6/7/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var textCodigo: UITextField!
    @IBOutlet weak var textPass: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginAction(_ sender: Any) {
    
        let code = textCodigo.text
        let password = textPass.text
        
        if code!.isEmpty && password!.isEmpty{
            print("Este campo es obligatorio")
        } else {
            
            UserDefaults.standard.set(true, forKey: "userLogin")
            UserDefaults.standard.set(code, forKey: "userCode")
            
            goMenu()
            
        }
    
    }
    
    func goHome(){
        //Referencia al contenedor de pantallas
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        //Referenciar la pantalla exacta
        let pantallaHome = storyBoard.instantiateViewController(identifier: "Home") as! HomeViewController
        
        pantallaHome.modalPresentationStyle = .fullScreen
        pantallaHome.modalTransitionStyle = .crossDissolve
        
        //Muestro la pantalla
        self.present(pantallaHome, animated: true, completion: nil)
    }
    
    func goMenu(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let pantallaMenu = storyBoard.instantiateViewController(identifier: "MenuView") as! MenuViewController
        
        pantallaMenu.modalPresentationStyle = .fullScreen
        pantallaMenu.modalTransitionStyle = .crossDissolve
        
        self.present(pantallaMenu, animated: true, completion: nil)
        
    }
    
}

