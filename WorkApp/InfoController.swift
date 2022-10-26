//
//  InfoController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit

class InfoController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

extension InfoController{
    
    func configure(){
        
        view.backgroundColor = Resources.Colors.tabBackground
    }
}
