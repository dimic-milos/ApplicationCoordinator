//
//  Coordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class Coordinator<T: UIViewController>: UIResponder, Coordinating {
    
    // MARK: Properties
    
    let rootViewController: T
    var childCoordinators: [String : Coordinating] = [:]

    // MARK: Init
    
    init(rootViewController: T) {
        self.rootViewController = rootViewController
        super.init()
    }
    
    // MARK: - Coordinating protocol
    
    weak var parent: Coordinating?
    
    var identifier: String {
        return String(describing: type(of: self))
    }
    
    func start() {}
    
    func add(childCoordinator coordinator: Coordinating) {
        childCoordinators[coordinator.identifier] = coordinator
        coordinator.parent = self
    }
    
}
