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
        window.set(rootViewController: rootViewController)
        
        switch sessionManager.loggedInState {
        case .loggedIn(let user):
            openAuthenticatedFlow(withUser: user)
        case .notLoggedIn:
            openAuthentificationFlow()
        }
    }
    
    private func openAuthenticatedFlow(withUser user: User) {
        let homeCoordinator = HomeCoordinator(rootViewController: rootViewController, loggedInUser: user)
        homeCoordinator.delegate = self
        add(childCoordinator: homeCoordinator)
        homeCoordinator.start()
    }
    
    private func openAuthentificationFlow() {
        let authentificationCoordinator = AuthenticationCoordinator(rootViewController: rootViewController)
        add(childCoordinator: authentificationCoordinator)
        authentificationCoordinator.delegate = self
        authentificationCoordinator.start()
    }
    
    private func openBabyAddFlow() {
        let babyAddCoordinator = BabyAddCoorindator(rootViewController: rootViewController, flow: .startNew)
        add(childCoordinator: babyAddCoordinator)
        babyAddCoordinator.start()
    }
    
}

// MARK: - AuthenticationCoordinatorDelegate

extension ApplicationCoordinator: AuthenticationCoordinatorDelegate {
    
    func didFinish(_ authenticationCoordinator: AuthenticationCoordinator, withUser user: User) {
        remove(childCoordinator: authenticationCoordinator)
        openBabyAddFlow()
    }
}

extension ApplicationCoordinator: HomeCoordinatorDelegate {
    func didFinish(_ homeCoordinator: HomeCoordinator) {}
}
