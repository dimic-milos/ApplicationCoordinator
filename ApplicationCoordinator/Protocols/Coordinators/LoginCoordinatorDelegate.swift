//
//  LoginCoordinatorDelegate.swift
//  ApplicationCoordinator
//
//  Created by Milos on 12/12/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol LoginCoordinatorDelegate: class {
    func didFinish(_ loginCoordinator: LoginCoordinator, loggedInState: LoggedInState)
}
