//
//  ApplicationCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import Foundation

import UIKit

class ApplicationCoordinator: NavigationCoordinator {
    
    private let window: UIWindow
    private let sessionManager = SessionManager()
    
    init(window: UIWindow) {
        self.window = window
        super.init(rootViewController: MainNavigationController())
    }
    
    override func start() {
        switch sessionManager.loggedInState {
        case .loggedIn(let user):
            openAuthenticatedFlow(withUser: user)
        case .notLoggedIn:
            openAuthentificationFlow()
        }
    }
    
    private func openAuthenticatedFlow(withUser user: User) {
        window.set(rootViewController: rootViewController)
        let mainAppCoordinator = MainAppCoordinator(rootViewController: rootViewController, loggedInUser: user)
        add(childCoordinator: mainAppCoordinator)
        mainAppCoordinator.start()
    }
    
    private func openAuthentificationFlow() {
        window.set(rootViewController: rootViewController)
        let authentificationCoordinator = AuthenticationCoordinator(rootViewController: rootViewController)
        add(childCoordinator: authentificationCoordinator)
        authentificationCoordinator.start()
    }
    
}
