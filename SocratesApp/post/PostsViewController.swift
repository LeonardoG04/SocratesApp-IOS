//
//  PostsViewController.swift
//  SocratesApp
//
//  Created by DAMII on 7/12/20.
//  Copyright © 2020 DAMII. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController {

    @IBOutlet weak var idTextFied: UITextField!
    @IBOutlet weak var tituloText: UILabel!
    @IBOutlet weak var contenidoText: UILabel!
    
    let baseURL = URL(string: "https://jsonplaceholder.typicode.com/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buscarPublicacion(_ sender: Any) {
        
        print("CLICK EN EL BOTON")
        
        guard let postURL = URL(string: "posts/\(idTextFied.text!)", relativeTo: baseURL) else {
            return
        }
        
        let session = URLSession(configuration: .default)
        let request = URLRequest(url: postURL)
        
        
        let tarea = session.dataTask(with: request){ (data, response, error) in
            
            let jsonPost = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
            
            var postModel = Post(userPar: jsonPost["userId"] as! Int, idPar: jsonPost["id"] as! Int,
                                 titlePar: jsonPost["title"] as! String, bodyPar: jsonPost["body"] as! String)
            
            print(postModel)
            DispatchQueue.main.async {
                self.loadData(post: postModel)
            }
            
        }
        
        tarea.resume()
        
        
    }
    
    
    func loadData(post: Post){
        tituloText.text = post.title as String
        contenidoText.text = post.body as String
    }
    
}
