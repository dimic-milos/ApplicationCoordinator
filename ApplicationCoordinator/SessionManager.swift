//
//  SessionManager.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class SessionManager {
    
    var loggedInState: LoggedInState {
        return LoggedInState.loggedIn(user: User(id: -1))
    }
    
}
