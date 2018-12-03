//
//  BabyAddCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 12/3/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit


class BabyAddCoorindator:  NavigationCoordinator {
    
    enum Flow {
        case babyAddRequired
        case babyAddOptional
    }
    
    private let flow: Flow
    
    init(rootViewController: UINavigationController, flow: Flow) {
        self.flow = flow
        super.init(rootViewController: rootViewController)
    }
    
    override func start() {
        switch flow {
            
        case .babyAddRequired:
            rootOut(with: UIViewController())
        case .babyAddOptional:
            show(UIViewController())
        }
    }
    
}
