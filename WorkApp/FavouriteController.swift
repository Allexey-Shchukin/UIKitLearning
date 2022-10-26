//
//  FavouriteController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit

class FavouriteController : BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        configureFavouriteView()
    }
    
}


@objc extension FavouriteController{
    
    func configureFavouriteView(){
        title = "Favourite"
    }
}
