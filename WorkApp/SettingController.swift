//
//  SettingController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit


class SettingController : BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        configureSettingView()
    }
    
}


@objc extension SettingController{
    
    func configureSettingView(){
        title = "Settings"
    }
}
