//
//  ViewController.swift
//  market
//
//  Created by Andrii Kolosov on 6/10/19.
//  Copyright © 2019 Andrii Kolosov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "catalog"
        
        
        
        let tabBarItem = UITabBarItem()
        tabBarItem.image = #imageLiteral(resourceName: "open-book-3")
        tabBarItem.title = "catalog"
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = UIColor.white

    }


}

