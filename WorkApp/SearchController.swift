//
//  SearchController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//


import UIKit

class SearchController : BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSearchView()
    }
    
}


@objc extension SearchController{
    
    func configureSearchView(){
        title = "Search"
    }
}

