//
//  Contact.swift
//  SocratesApp
//
//  Created by DAMII on 6/21/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import Foundation
import UIKit


class Contact {
    
    var image: UIImage
    var name: String
    var number: String
    var email: String
    
    init(image: UIImage, name: String, number: String, email: String){
        self.image = image
        self.name = name
        self.number = number
        self.email = email
    }
    
}
