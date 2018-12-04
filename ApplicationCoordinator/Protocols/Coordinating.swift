//
//  Coordinating.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol Coordinating: class {
    
    var parent: Coordinating? { get set }
    var identifier: String { get }
    
    func start()
    func add(childCoordinator coordinator: Coordinating)

}
