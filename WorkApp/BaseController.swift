//
//  BaseController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit


class BaseController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavigationButton()
        configureBaseController()
    }
}

@objc extension BaseController {
    
    
    func layoutViews(){}
    func addSubViews(){}
    
    private func configureBaseController(){
        view.backgroundColor = .white
    }
    
    func addNavigationButton(){
        
        let button = UIButton()
        button.setImage(Resources.NavImages.info?.withTintColor(Resources.Colors.nonactive), for: .normal)
        button.setBackgroundImage(UIImage(), for: .normal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton(){
        let secondvc = InfoController()
        present(secondvc,animated: true)
    }
}
