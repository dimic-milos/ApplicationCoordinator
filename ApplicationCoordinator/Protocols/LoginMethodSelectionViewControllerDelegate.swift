//
//  LoginMethodSelectionViewControllerDelegate.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 12/4/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol LoginMethodSelectionViewControllerDelegate: class {
    func didTapSocialLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController)
    func didTapEmailLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController)
    func didTapRegisterNewAccount(_ logInMethodSelectionViewController: LogInMethodSelectionViewController)
}
