//
//  ContactTableViewCell.swift
//  SocratesApp
//
//  Created by DAMII on 6/21/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    func setContact(contact: Contact){
        imageLogo.image = contact.image
        labelName.text = contact.name
        labelNumber.text = contact.number
        labelEmail.text = contact.email
    }

}
