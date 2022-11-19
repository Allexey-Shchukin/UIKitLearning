//
//  SettingController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit


class SettingController : BaseController {
    
    var progress = UIProgressView()
    var progressButton = UIButton()
    var allertButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSettingView()
        view.addSubview(progress)
        view.addSubview(progressButton)
        view.addSubview(allertButton)
        configureProressView()
        configureProgressButton()
        configureAllertButton()
        
    }
    
    func configureProressView(){
        
        progress.translatesAutoresizingMaskIntoConstraints = false
        progress.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        progress.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        progress.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        progress.heightAnchor.constraint(equalToConstant: 5).isActive = true
        progress.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        
        progress.progressViewStyle = .bar
        progress.progressTintColor  = Resources.Colors.nonactive
        progress.trackTintColor = .gray
        progress.setProgress(0.0, animated: true)
        progress.layer.cornerRadius = 20
        
        progressButton.addTarget(self, action: #selector(progressButtonTap) , for: .touchUpInside)
        
    }
    
    func configureProgressButton(){
        
        progressButton.translatesAutoresizingMaskIntoConstraints = false
        progressButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        progressButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        progressButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        progressButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        progressButton.topAnchor.constraint(equalTo: progress.bottomAnchor, constant: 20).isActive = true
        
        progressButton.layer.cornerRadius = 15
        progressButton.backgroundColor = Resources.Colors.nonactive
        progressButton.setTitleColor(.white, for: .normal)
        progressButton.setTitle("Progress button", for: .normal)
        progressButton.layer.borderWidth = 2
        progressButton.layer.borderColor = Resources.Colors.activ.cgColor
        
        
    }
    
    func configureAllertButton(){
        
        allertButton.translatesAutoresizingMaskIntoConstraints = false
        allertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        allertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        allertButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        allertButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        allertButton.topAnchor.constraint(equalTo: progressButton.bottomAnchor, constant: 20).isActive = true
        
        allertButton.layer.cornerRadius = 15
        allertButton.backgroundColor = Resources.Colors.nonactive
        allertButton.setTitleColor(.white, for: .normal)
        allertButton.setTitle("Allert button", for: .normal)
        allertButton.layer.borderWidth = 2
        allertButton.layer.borderColor = Resources.Colors.activ.cgColor
        
        allertButton.addTarget(self, action: #selector(showAllertController) , for: .touchUpInside)
        
    }
    
    @objc func showAllertController(){
        
        let alert = UIAlertController(title: "Hey", message: "Dont't touch this button", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            alert.dismiss(animated: true)
        }))
        
        self.present(alert, animated: true)
        
    }
    
    
    @objc func progressButtonTap(){
        
        
        if progress.progress == 1 {
            progress.progress = 0
        }
        else{
            progress.progress += 0.1
        }
        
    }
    
}


@objc extension SettingController{
    
    func configureSettingView(){
        title = "Settings"
    }
}


