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
            openMainFlow(withUser: user)
        case .notLoggedIn:
            openLoginFlow()
        }
    }
    
    private func openMainFlow(withUser user: User) {
        window.set(rootViewController: rootViewController)
        let mainAppcoordinator = MainAppCoordinator(rootViewController: rootViewController, loggedInUser: user)
        add(childCoordinator: mainAppcoordinator)
        mainAppcoordinator.start()
    }
    
    private func openLoginFlow() {}
    
}
