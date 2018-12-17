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
    func finish() {}
    
    func add(childCoordinator coordinator: Coordinating) {
        childCoordinators[coordinator.identifier] = coordinator
        coordinator.parent = self
    }
    
    func remove(childCoordinator coordinator: Coordinating) {
        coordinator.parent = nil
        childCoordinators.removeValue(forKey: coordinator.identifier)
    }
    
}
