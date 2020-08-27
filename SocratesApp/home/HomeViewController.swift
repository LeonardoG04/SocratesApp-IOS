//
//  HomeViewController.swift
//  SocratesApp
//
//  Created by DAMII on 6/7/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var contact: [Contact] = []

    @IBOutlet weak var contactTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contact = createArray()
        
        contactTableView.delegate = self
        contactTableView.dataSource = self
        
    }
    
    
    // ! -> obligatorio
    // ? -> opcional
    
    
    func createArray()  -> [Contact]{
        
        var temporal: [Contact] = []
        
        let fileImage = UIImage(named: "ic_logo")
        
        let contact01 = Contact(image: fileImage!, name: "Enrique Ventura", number: "78945612", email: "pjventur@cibertec.edu.pe")
        let contact02 = Contact(image: fileImage!, name: "Luis Ventura", number: "78945612", email: "pjventur@cibertec.edu.pe")
        let contact03 = Contact(image: fileImage!, name: "Enrique Ventura", number: "78945612", email: "pjventur@cibertec.edu.pe")
        let contact04 = Contact(image: fileImage!, name: "Luis Ventura", number: "78945612", email: "pjventur@cibertec.edu.pe")
        
        temporal.append(contact01)
        temporal.append(contact02)
        temporal.append(contact03)
        temporal.append(contact04)

        return temporal
    
    }
    
}


extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let contactRow = contact[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") as! ContactTableViewCell
     
        cell.setContact(contact: contactRow)
        
        return cell
        
    }
    
    
}
