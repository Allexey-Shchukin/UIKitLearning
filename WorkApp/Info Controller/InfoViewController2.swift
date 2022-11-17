//
//  InfoViewController2.swift
//  WorkApp
//
//  Created by Алексей Щукин on 16.11.2022.
//

import UIKit

class InfoViewController2: UIViewController {

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
        
        picture.image = Resources.InfoImages.infoImage2
        picture.translatesAutoresizingMaskIntoConstraints = false
        picture.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        picture.centerXAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        picture.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        picture.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3).isActive = true
        picture.widthAnchor.constraint(equalTo: picture.heightAnchor, multiplier: 700/987).isActive = true
        
    }
    
    
    
    func configureText(){
        
        text.text = "Это мое приложение"
        text.translatesAutoresizingMaskIntoConstraints = false
        text.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        text.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 300).isActive = true
        text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        text.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        text.font = UIFont.boldSystemFont(ofSize: 40)
        text.textColor = .white
        text.numberOfLines = 0
        
    }

}
