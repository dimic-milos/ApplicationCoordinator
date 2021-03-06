//
//  AuthenticationCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/29/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class AuthenticationCoordinator: NavigationCoordinator {
    
    weak var delegate: AuthenticationCoordinatorDelegate?
    
    override func start() {
        let logInMethodSelectionViewController = LogInMethodSelectionViewController(title: String(describing: LogInMethodSelectionViewController.self))
        logInMethodSelectionViewController.delegate = self
        rootOut(with: logInMethodSelectionViewController)
    }
    
    override func finish() {
        delegate?.didFinish(self, user: User())
    }
}

extension AuthenticationCoordinator: LoginMethodSelectionViewControllerDelegate {
    
    func didTapSocialLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {}
    
    func didTapEmailLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {}
    
    func didTapRegisterNewAccount(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {
        let registrationViewController = RegistrationViewController(title: String(describing: RegistrationViewController.self))
        registrationViewController.delegate = self
        show(registrationViewController)
    }
}

extension AuthenticationCoordinator: RegistrationViewControllerDelegate {
    
    func didTapSignMeUp(_ registrationViewController: RegistrationViewController) {
        finish()
    }
}


