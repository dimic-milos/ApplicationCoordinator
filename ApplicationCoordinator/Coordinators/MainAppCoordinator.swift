//
//  MainAppCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class MainAppCoordinator: NavigationCoordinator {
    
    private let loggedInUser: User
    
    init(rootViewController: UINavigationController, loggedInUser: User) {
        self.loggedInUser = loggedInUser
        super.init(rootViewController: rootViewController)
    }
    
    override func start() {
        let homeScreenViewController = HomeScreenViewController(title: String(describing: HomeScreenViewController.self))
        rootOut(with: homeScreenViewController)
    }
    
}
