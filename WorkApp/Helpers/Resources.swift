//
//  Resources.swift
//  WorkApp
//
//  Created by Алексей Щукин on 25.10.2022.
//

import UIKit

enum Resources {
    enum Colors{
        static var activ = UIColor(hexString: "#232256")
        static var nonactive = UIColor(hexString: "#655CA0")
        static var tabBackground = UIColor(hexString: "#9E9CD3")
        static var TabBarBorder = UIColor(hexString: "#D4DDE0")
        static var navBarBackground = UIColor(hexString: "#9E9CD3")
    }
    
    enum TabNames {
        static var home = "Home"
        static var search = "Search"
        static var video = "Video"
        static var favourite = "Favourite"
        static var settings = "Settings"
    }
    
    enum TabImages {
        static var home = UIImage(named: "home")
        static var search = UIImage(named: "search")
        static var video = UIImage(named: "video")
        static var favourite = UIImage(named: "favourite")
        static var settings = UIImage(named: "settings")
    }
    
    enum NavImages{
        static var info = UIImage(named: "info")
    }
    
    enum InfoImages{
        
        static var infoImage1 = UIImage(named : "animeGirl1")!
    }
    
}
