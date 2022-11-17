//
//  InfoViewController1.swift
//  WorkApp
//
//  Created by Алексей Щукин on 16.11.2022.
//

import UIKit

class InfoViewController1: UIViewController {

    var picture = UIImageView()
    var text = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        view.addSubview(picture)
        view.addSubview(text)
        configureImage()
        configureText()
    }
    
    
    func configure(){
        view.backgroundColor = Resources.Colors.nonactive
    }
    
    func configureImage(){
        
        picture.image = Resources.InfoImages.infoImage1
        picture.translatesAutoresizingMaskIntoConstraints = false
        picture.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        picture.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -20).isActive = true
        picture.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        picture.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        picture.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3).isActive = true
        picture.widthAnchor.constraint(equalTo: picture.heightAnchor, multiplier: 590/725).isActive = true
        
    }
    
    func configureText(){
        
        text.text = "Привет"
        text.translatesAutoresizingMaskIntoConstraints = false
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        text.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 300).isActive = true
        text.font = UIFont.boldSystemFont(ofSize: 40)
        text.textColor = .white
        
    }
    
    

}
