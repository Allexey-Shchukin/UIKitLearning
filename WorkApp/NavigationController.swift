//
//  NavigationController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit


final class NavigationController : UINavigationController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        
        view.backgroundColor = Resources.Colors.navBarBackground
        navigationBar.isTranslucent = false
        navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font: UIFont(name: "MarkerFelt-Thin", size: 20)!
        ]
    }
}




