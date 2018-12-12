//
//  BabyAddCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 12/3/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class BabyAddCoordinator: NavigationCoordinator {
    
    private let flow: Flow
    weak var delegate: BabyAddCoordinatorDelegate?
    
    init(rootViewController: UINavigationController, flow: Flow) {
        self.flow = flow
        super.init(rootViewController: rootViewController)
    }
    
    override func start() {
        switch flow {
            
        case .keepExisting:
            let babyAddViewController = BabyAddViewController(title: String(describing: BabyAddViewController.self), state: .cannotSkipBabyAdd)
            babyAddViewController.delegate = self
            show(babyAddViewController)
        case .startNew:
            let babyAddViewController = BabyAddViewController(title: String(describing: BabyAddViewController.self), state: .canSkipBabyAdd)
            babyAddViewController.delegate = self
            rootOut(with: babyAddViewController)
        }
    }
    
    override func finish() {
        delegate?.didFinish(self)
    }
}

extension BabyAddCoordinator: BabyAddViewControllerDelegate {
    func didTapSkip(_ babyAddViewController: BabyAddViewController) {
        finish()
    }
    
    func didTapBack(_ babyAddViewController: BabyAddViewController) {
        pop()
        finish()
    }
    
    func didTapAddBaby(_ babyAddViewController: BabyAddViewController, baby: Baby) {}
    
    
}
