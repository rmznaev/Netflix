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
        
        
        
        setViewControllers([vcOne, vcTwo, vcThree, vcFour], animated: true)
    }
}
