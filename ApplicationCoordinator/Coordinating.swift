//
//  Coordinating.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol Coordinating: class {
    
    func start()
    
    func add(childCoordinator coordinator: Coordinating)
    var identifier: String { get }
    var parent: Coordinating? { get set }
    
}
