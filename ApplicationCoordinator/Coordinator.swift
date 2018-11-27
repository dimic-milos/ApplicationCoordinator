//
//  Coordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class Coordinator<T: UIViewController>: UIResponder, Coordinating {
    
    let rootViewController: T
    var childCoordinators: [String : Coordinating] = [:]
    weak var parent: Coordinating?
    
    var identifier: String {
        return String(describing: type(of: self))
    }
    
    init(rootViewController: T) {
        self.rootViewController = rootViewController
        super.init()
    }
    
    func start() {}
    
    func add(childCoordinator coordinator: Coordinating) {
        childCoordinators[coordinator.identifier] = coordinator
        coordinator.parent = self
    }
    
}
