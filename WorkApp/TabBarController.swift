//
//  TabBarController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 25.10.2022.
//

import UIKit

enum Tabs : Int{
    case home
    case search
    case favourite
    case settings
}

final class TabBarController : UITabBarController{
    
    /*override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configure()
    }
    
    private func configure() {
        
        tabBar.tintColor = Resources.Colors.activ
        tabBar.barTintColor = Resources.Colors.nonactive
        
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2 - 20
        let height = tabBar.bounds.height + positionOnY * 2
        let roundLayer = CAShapeLayer()
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x : positionOnX + 10,
                y : tabBar.bounds.minY - positionOnY,
                width: width,
                height: height
            ), cornerRadius: height / 4
        )
        roundLayer.path = bezierPath.cgPath
        roundLayer.fillColor = Resources.Colors.tabBackground.cgColor
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = width / 7
        tabBar.itemPositioning = .centered
        
        
        let homeViewController = UIViewController()
        let searchViewController = UIViewController()
        let favouriteViewController = UIViewController()
        let settingsViewController = UIViewController()
        
        let homeNavigation = UINavigationController(rootViewController: homeViewController)
        let searchNavigation = UINavigationController(rootViewController: searchViewController)
        let favouriteNavigation = UINavigationController(rootViewController: favouriteViewController)
        let settingsNavigation = UINavigationController(rootViewController: settingsViewController)
        
        settingsNavigation.view.backgroundColor = .white
        
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.TabNames.settings,
                                                         image: Resources.TabImages.settings,
                                                         tag: Tabs.home.rawValue)
        
        homeNavigation.tabBarItem = UITabBarItem(title: Resources.TabNames.home,
                                                         image: Resources.TabImages.home,
                                                     tag: Tabs.home.rawValue)
        
        favouriteNavigation.tabBarItem = UITabBarItem(title: Resources.TabNames.favourite,
                                                         image: Resources.TabImages.favourite,
                                                          tag: Tabs.favourite.rawValue)
        searchNavigation.tabBarItem = UITabBarItem(title: Resources.TabNames.search,
                                                         image: Resources.TabImages.search,
                                                       tag: Tabs.search.rawValue)
        
        setViewControllers([
            settingsNavigation,
            homeNavigation,
            favouriteNavigation,
            searchNavigation,
        ], animated: false)
    }
    
    
    
}
