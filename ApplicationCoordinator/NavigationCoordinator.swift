//
//  NavigationCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class NavigationCoordinator: Coordinator<UINavigationController> {
    
    var viewControllers = [UIViewController]()
    
    func rootOut(with vc: UIViewController) {
        viewControllers = [vc]
        rootViewController.viewControllers = [vc]
    }
}
