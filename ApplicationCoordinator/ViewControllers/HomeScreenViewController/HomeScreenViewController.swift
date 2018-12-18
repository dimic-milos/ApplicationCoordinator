//
//  HomeScreenViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    weak var delegate: HomeScreenViewControllerDelegate?
    
    init(title: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func buttonAddBabyTapped(_ sender: UIButton) {
        delegate?.didTapAddBaby(self)
    }
    
    @IBAction func buttonLogoutTapped(_ sender: UIButton) {
        delegate?.didTapLogout(self)
    }
}
