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
    
    // MARK: Properties
    
    private let window: UIWindow
    
    // MARK: Init
    
    init(window: UIWindow) {
        self.window = window
        super.init(rootViewController: MainNavigationController())
    }
    
    // MARK: - Override methods
    
    override func start() {
        window.set(rootViewController: rootViewController)
        openLoginStateSelectionFlow()
    }
    
    override func onLogout() {
        logout()
    }
    
    // MARK: - Private methods
    
    private func openLoginStateSelectionFlow() {
        let loginCoordinator = LoginCoordinator(rootViewController: rootViewController)
        loginCoordinator.delegate = self
        add(childCoordinator: loginCoordinator)
        loginCoordinator.start()
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
        let babyAddCoordinator = BabyAddCoordinator(rootViewController: rootViewController, flow: .startNew)
        babyAddCoordinator.delegate = self
        add(childCoordinator: babyAddCoordinator)
        babyAddCoordinator.start()
    }
    
    private func logout() {
        removeAllChildCoordinators()
        openLoginStateSelectionFlow()
    }
    
}

// MARK: - AuthenticationCoordinatorDelegate

extension ApplicationCoordinator: AuthenticationCoordinatorDelegate {
    
    func didFinish(_ authenticationCoordinator: AuthenticationCoordinator, user: User) {
        remove(childCoordinator: authenticationCoordinator)
        openBabyAddFlow()
    }
}

// MARK: - HomeCoordinatorDelegate

extension ApplicationCoordinator: HomeCoordinatorDelegate {
    func didFinish(_ homeCoordinator: HomeCoordinator) {}
}

// MARK: - LoginCoordinatorDelegate

extension ApplicationCoordinator: LoginCoordinatorDelegate {
    func didFinish(_ loginCoordinator: LoginCoordinator, loggedInState: LoggedInState) {
        remove(childCoordinator: loginCoordinator)
        switch loggedInState {
        
        case .loggedIn(let user):
            openAuthenticatedFlow(withUser: user)
        case .notLoggedIn:
            openAuthentificationFlow()
        }
    }
}

// MARK: BabyAddCoordinatorDelegate

extension ApplicationCoordinator: BabyAddCoordinatorDelegate {
    func didFinish(_ babyAddCoordinator: BabyAddCoordinator) {
        remove(childCoordinator: babyAddCoordinator)
        openAuthenticatedFlow(withUser: User())
    }
}
