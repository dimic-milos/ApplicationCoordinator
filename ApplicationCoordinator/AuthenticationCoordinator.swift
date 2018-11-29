//
//  AuthenticationCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/29/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class AuthenticationCoordinator: NavigationCoordinator {
        
    override func start() {
        let loginViewController = LogInViewController(backgroundColor: .brown)
        rootOut(with: loginViewController)
    }
    
}
