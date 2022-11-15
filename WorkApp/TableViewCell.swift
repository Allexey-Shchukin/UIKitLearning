//
//  TableViewCell.swift
//  WorkApp
//
//  Created by Алексей Щукин on 15.11.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var image = UIImageView()
    var label = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(image)
        addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImageView(){
        label.layer.cornerRadius = 10
        image.clipsToBounds = true
    }
    
    func configureLabelView(){
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints(){
        image.translatesAutoresizingMaskIntoConstraints                                 = false
        image.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive    = true
        image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive   = true
        image.heightAnchor.constraint(equalToConstant: 80).isActive                     = true
        
    }
    
    func setLabelConstraints(){
         
        
        
    }

}
