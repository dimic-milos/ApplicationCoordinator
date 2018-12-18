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
    
    func show(_ vc: UIViewController, sender: Any = self) {
        viewControllers.append(vc)
        rootViewController.show(vc, sender: sender)
    }
    
    func pop() {
        viewControllers.removeLast()
        rootViewController.popViewController(animated: true)
    }
    
    func removeAllChildCoordinators() {
        for k in childCoordinators.keys {
            if let coordinator = childCoordinators[k] {
                coordinator.parent = nil
                childCoordinators.removeValue(forKey: coordinator.identifier)
            }
        }
    }
}
