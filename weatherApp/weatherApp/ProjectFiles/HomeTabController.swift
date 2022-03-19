//
//  ViewController.swift
//  weatherApp
//
//  Created by Marat on 19.03.2022.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp(){
        let todayString = NSLocalizedString("today", comment: "")
        let forecastString = NSLocalizedString("forecast", comment: "")
        
        let home = TodayViewController()
        home.title = NSLocalizedString("today", comment: "")
        let profile = ForecastViewController()
        profile.title = NSLocalizedString("city", comment: "")
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: profile)

        
        nav1.tabBarItem = UITabBarItem(title: todayString, image: UIImage(systemName: "house"), tag: 0)
        nav2.tabBarItem = UITabBarItem(title: forecastString, image: UIImage(systemName: "person.circle"), tag: 1)

        setViewControllers([nav1,nav2], animated: true)
    }


}
