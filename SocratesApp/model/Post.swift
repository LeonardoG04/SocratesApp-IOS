//
//  Post.swift
//  SocratesApp
//
//  Created by DAMII on 7/12/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import Foundation

class Post{
    var userId : Int
    var id : Int
    var title: String
    var body: String
    
    init(userPar: Int, idPar: Int, titlePar: String, bodyPar: String) {
        self.userId = userPar
        self.id = idPar
        self.title = titlePar
        self.body = bodyPar
    }
    
}
