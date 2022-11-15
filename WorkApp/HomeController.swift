//
//  HomeController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit

class HomeController : BaseController {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeView()
        configureTableView()
    }
    
    
    func tableViewLayouts(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.automaticallyAdjustsScrollIndicatorInsets = false
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableViewLayouts()
    }
    
    
    
}





@objc extension HomeController{
    
    func configureHomeView(){
        title = "Home"
        view.backgroundColor = .white
    }
}

extension HomeController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
