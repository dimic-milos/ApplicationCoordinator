//
//  LoggedInState.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

enum LoggedInState {
    case loggedIn(user: User)
    case notLoggedIn
}
