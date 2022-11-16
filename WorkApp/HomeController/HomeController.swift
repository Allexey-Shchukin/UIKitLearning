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
    
    struct Cell{
        
        static let postCell = "PostViewCell"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeView()
        configureTableView()
        posts = fethData()
        setTableViewDelegates()
        tableViewLayouts()
        tableView.register(PostViewCell.self, forCellReuseIdentifier: Cell.postCell)
        tableView.rowHeight = 150
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
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.postCell) as! PostViewCell
        let post = posts[indexPath.row]
        cell.set(post: post)
        return cell
    }
    
    
}


func fethData() -> [Post]{
    
    let post1 = Post(image: Images.shtein, title: "Steins' Gate")
    let post2 = Post(image: Images.kaguya, title: "Kaguya-sama wa Kokurasetai: Ultra Romantic")
    let post3 = Post(image: Images.hunter, title: "Hunter x Hunter")
    let post4 = Post(image: Images.bleach, title: "Bleach: Sennen Kessen-hen")
    let post5 = Post(image: Images.alchemist, title: "Fullmetal Alchemist: Brotherhood")
    let post6 = Post(image: Images.gintama, title: "Gintama'")
    
    return [post1,post2,post3,post4,post5,post6]
    
}
