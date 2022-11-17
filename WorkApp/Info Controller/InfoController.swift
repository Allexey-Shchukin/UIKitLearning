//
//  InfoController.swift
//  WorkApp
//
//  Created by Алексей Щукин on 26.10.2022.
//

import UIKit

class InfoController : UIPageViewController{
    
    let initialPage = 0
    
    var pageControll = UIPageControl()
    
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
        view.addSubview(pageControll)
        stylePageControl()
    }
    
    func configure(){
        
    }
    
    func stylePageControl(){
        
        pageControll.translatesAutoresizingMaskIntoConstraints = false
        pageControll.currentPage = initialPage
        pageControll.currentPageIndicatorTintColor = .black
        pageControll.pageIndicatorTintColor = .systemGray2
        pageControll.numberOfPages = pages.count
        pageControll.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        pageControll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        pageControll.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        pageControll.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        
    }
    
    func setViewControllers(){
        
        let view1 = InfoViewController1()
        let view2 = InfoViewController2()
        let view3 = InfoViewController3()
        
        pages.append(view1)
        pages.append(view2)
        pages.append(view3)
        
        setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
        
    }
    
    func setDelegates(){
        dataSource = self
        delegate = self
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

extension InfoController : UIPageViewControllerDelegate{
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard let viewControllers = pageViewController.viewControllers else { return }
        guard let currentIndex = pages.firstIndex(of: viewControllers[0]) else { return }
        
        pageControll.currentPage = currentIndex
        
    }
}
