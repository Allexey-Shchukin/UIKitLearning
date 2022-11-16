//
//  PostViewCell.swift
//  WorkApp
//
//  Created by Алексей Щукин on 16.11.2022.
//

import UIKit

class PostViewCell: UITableViewCell {
    
    var image = UIImageView()
    
    var tittle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(image)
        addSubview(tittle)
        configureImage()
        configureTittle()
        setImageLayouts()
        setTittleLayouts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImage(){
        
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        
    }
    
    func configureTittle(){
        
        tittle.numberOfLines = 0
        tittle.adjustsFontSizeToFitWidth = true
        
    }
    
    func setImageLayouts(){
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        image.heightAnchor.constraint(equalTo: heightAnchor, constant: -20).isActive = true
        image.widthAnchor.constraint(equalTo: image.heightAnchor, multiplier: 45/64).isActive = true
        
    }
    
    func setTittleLayouts(){
        
        tittle.translatesAutoresizingMaskIntoConstraints = false
        tittle.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        tittle.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 12).isActive = true
        tittle.heightAnchor.constraint(equalTo: heightAnchor, constant: 0).isActive = true
        tittle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
    }
    
    func set(post : Post){
        
        image.image = post.image
        tittle.text = post.title
        
    }
    
    

}
