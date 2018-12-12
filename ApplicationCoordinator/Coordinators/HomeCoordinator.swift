//
//  HomeCoordinator.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class HomeCoordinator: NavigationCoordinator {
    
    private let loggedInUser: User
    weak var delegate: HomeCoordinatorDelegate?
    
    init(rootViewController: UINavigationController, loggedInUser: User) {
        self.loggedInUser = loggedInUser
        super.init(rootViewController: rootViewController)
    }
    
    override func start() {
        let homeScreenViewController = HomeScreenViewController(title: String(describing: HomeScreenViewController.self))
        homeScreenViewController.delegate = self
        rootOut(with: homeScreenViewController)
    }
    
    override func finish() {
        delegate?.didFinish(self)
    }
    
    // MARK: - Private methods
    
    func startAddBabyFlow() {
        let babyAddCoordinator = BabyAddCoorindator(rootViewController: rootViewController, flow: .keepExisting)
        add(childCoordinator: babyAddCoordinator)
        babyAddCoordinator.start()
    }
}

extension HomeCoordinator: HomeScreenViewControllerDelegate {
    func didTapAddBaby(_ homeScreenViewController: HomeScreenViewController) {
        startAddBabyFlow()
    }
    
    
}
