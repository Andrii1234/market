//
//  PayViewController.swift
//  market
//
//  Created by Andrii Kolosov on 6/10/19.
//  Copyright © 2019 Andrii Kolosov. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "pay"
        
        let tabBarItem = UITabBarItem()
        tabBarItem.image = #imageLiteral(resourceName: "shopping-cart-6")
        tabBarItem.title = "pay"
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = UIColor.white
    }
    
}
