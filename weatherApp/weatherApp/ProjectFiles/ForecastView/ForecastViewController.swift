//
//  ForecastViewController.swift
//  weatherApp
//
//  Created by Marat on 19.03.2022.
//

import UIKit

class ForecastViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = ForecastViewController.tint
    }
    


}

extension ForecastViewController {
    
    public static var tint: UIColor = {
        if #available(iOS 13, *) {
            return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                if UITraitCollection.userInterfaceStyle == .dark {
                    /// Return the color for Dark Mode
                    return UIColor.black
                } else {
                    /// Return the color for Light Mode
                    return UIColor.white
                }
            }
        } else {
            /// Return a fallback color for iOS 12 and lower.
            return UIColor.white
        }
    }()
    
}
