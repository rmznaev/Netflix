//
//  MainTabBarViewController.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 02.04.22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
        let vcOne = UINavigationController(rootViewController: HomeViewController())
        let vcTwo = UINavigationController(rootViewController: UpcomingViewController())
        let vcThree = UINavigationController(rootViewController: SearchViewController())
        let vcFour = UINavigationController(rootViewController: DownloadsViewController())
        
        vcOne.tabBarItem.image = UIImage(systemName: "house")
        vcTwo.tabBarItem.image = UIImage(systemName: "play.circle")
        vcThree.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vcFour.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vcOne.title = "Home"
        vcTwo.title = "Coming Soon"
        vcThree.title = "Top Search"
        vcFour.title = "Downloads"
        
        setViewControllers([vcOne, vcTwo, vcThree, vcFour], animated: true)
    }
}
