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
        
        // MARK: - Diverge here to check if authenticated user is authorized to proceed (current t&c agreed, new app version required, etc...) 
        
        let homeScreenViewController = HomeScreenViewController(backgroundColor: .green)
        rootOut(with: homeScreenViewController)
    }
    
}
