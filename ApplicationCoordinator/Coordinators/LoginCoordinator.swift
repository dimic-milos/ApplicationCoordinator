//
//  LoginCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos on 12/12/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class LoginCoordinator: NavigationCoordinator {
    
    weak var delegate: LoginCoordinatorDelegate?
    
    override func start() {
        let loginStateSelectionViewController = LoginStateSelectionViewController(title: String(describing: LoginStateSelectionViewController.self))
        loginStateSelectionViewController.delegate = self
        rootOut(with: loginStateSelectionViewController)
    }
}

// MARK: - LoginStateSelectionViewControllerDelegate

extension LoginCoordinator: LoginStateSelectionViewControllerDelegate {
    func didFinish(_ loginStateSelectionViewController: LoginStateSelectionViewController, loggedInState: LoggedInState) {
        delegate?.didFinish(self, loggedInState: loggedInState)
    }
}
