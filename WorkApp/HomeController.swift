//
//  HomeController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit

class HomeController : BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        configureHomeView()
    }
    
}


@objc extension HomeController{
    
    func configureHomeView(){
        title = "Home"
    }
}
