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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configure()
    }
    
    private func configure() {
        
        tabBar.tintColor = Resources.Colors.activ
        tabBar.unselectedItemTintColor = Resources.Colors.nonactive
        
        let positionOnX: CGFloat = 10
        let width = tabBar.bounds.width - positionOnX * 2 - 20
        tabBar.itemWidth = width / 7
        tabBar.itemPositioning = .centered
        
        
        let homeViewController = HomeController()
        let searchViewController = SearchController()
        let favouriteViewController = FavouriteController()
        let settingsViewController = SettingController()
        
        let homeNavigation = NavigationController(rootViewController: homeViewController)
        let searchNavigation = NavigationController(rootViewController: searchViewController)
        let favouriteNavigation = NavigationController(rootViewController: favouriteViewController)
        let settingsNavigation = NavigationController(rootViewController: settingsViewController)
        
        
        
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
