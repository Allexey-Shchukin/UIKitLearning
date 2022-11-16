//
//  HomeController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit

class HomeController : BaseController {
    
    let tableView = UITableView()
    
    var posts : [Post] = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeView()
        configureTableView()
        posts = fethData()
        setTableViewDelegates()
        tableViewLayouts()
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
        posts.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}


func fethData() -> [Post]{
    
    let post1 = Post(image: Images.shtein, title: "shtein")
    let post2 = Post(image: Images.kaguya, title: "kaguya")
    let post3 = Post(image: Images.hunter, title: "hunter")
    let post4 = Post(image: Images.bleach, title: "bleach")
    let post5 = Post(image: Images.alchemist, title: "alchemist")
    let post6 = Post(image: Images.gintama, title: "gintama")
    
    return [post1,post2,post3,post4,post5,post6]
    
}
