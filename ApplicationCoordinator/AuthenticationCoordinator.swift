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
        let logInMethodSelectionViewController = LogInMethodSelectionViewController(backgroundColor: .brown)
        logInMethodSelectionViewController.delegate = self
        rootOut(with: logInMethodSelectionViewController)
    }
}

extension AuthenticationCoordinator: LoginMethodSelectionViewControllerDelegate {
    
    func didTapSocialLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {}
    
    func didTapEmailLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {}
    
    func didTapRegisterNewAccount(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {
        let registrationViewController = RegistrationViewController(backgroundColor: .yellow)
        registrationViewController.delegate = self
        show(registrationViewController)
    }
}

extension AuthenticationCoordinator: RegisterViewControllerDelegate {
    
    func didTapSignMeUp(_ registerViewController: RegistrationViewController) {
        
    }
}
