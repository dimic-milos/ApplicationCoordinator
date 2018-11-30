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
        let loginViewController = LogInMethodSelectionViewController(backgroundColor: .brown)
        loginViewController.delegate = self
        rootOut(with: loginViewController)
    }
}

extension AuthenticationCoordinator: LoginMethodSelectionViewControllerDelegate {
    
    func didTapSocialLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {}
    
    func didTapEmailLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {}
    
    func didTapSignUp(_ logInMethodSelectionViewController: LogInMethodSelectionViewController) {
        let emailSignUpViewController = EmailSignUpViewController(backgroundColor: .yellow)
        emailSignUpViewController.delegate = self
        show(emailSignUpViewController)
    }
}

extension AuthenticationCoordinator: EmailSignUpViewControllerDelegate {
    
    func didTapSignMeUp(_ emailSignUpViewController: EmailSignUpViewController) {}
}
