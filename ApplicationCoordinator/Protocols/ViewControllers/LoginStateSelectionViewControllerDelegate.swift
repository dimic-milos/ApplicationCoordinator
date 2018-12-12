//
//  LoginStateSelectionViewControllerDelegate.swift
//  ApplicationCoordinator
//
//  Created by Milos on 12/12/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol LoginStateSelectionViewControllerDelegate: class {
    func didFinish(_ loginStateSelectionViewController: LoginStateSelectionViewController, loggedInState: LoggedInState)
}
