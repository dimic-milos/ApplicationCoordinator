//
//  AuthenticationCoordinatorDelegate.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 12/4/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol AuthenticationCoordinatorDelegate: class {
    func didFinish(_ authenticationCoordinator: AuthenticationCoordinator, user: User)
}
