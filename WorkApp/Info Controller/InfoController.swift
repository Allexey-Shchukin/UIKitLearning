//
//  InfoController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit

class InfoController : UIPageViewController{
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        
        super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation, options: options)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    var pages = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
        setDelegates()
    }
    
    func configure(){
        
    }
    
    func setViewControllers(){
        
        let view1 = InfoViewController1()
        let view2 = InfoViewController2()
        let view3 = InfoViewController3()
        
        pages.append(view1)
        pages.append(view2)
        pages.append(view3)
        
        setViewControllers([pages[0]], direction: .forward, animated: true, completion: nil)
        
    }
    
    func setDelegates(){
        dataSource = self
    }
    
    
}

extension InfoController : UIPageViewControllerDataSource{
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = pages.firstIndex(of: viewController) else { return nil }
        
        if index == 0{
            return pages.last
        }
        else{
            return pages[index - 1]
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = pages.firstIndex(of: viewController) else { return nil }
        
        if index < pages.count - 1{
            return pages[index + 1]
        }
        else{
            return pages.first
        }
    }
    
    
    
    
}
