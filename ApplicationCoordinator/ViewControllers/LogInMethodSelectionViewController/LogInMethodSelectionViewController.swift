//
//  LogInViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class LogInMethodSelectionViewController: UIViewController {
    
    weak var delegate: LoginMethodSelectionViewControllerDelegate?
    
    init(title: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func buttonSocialLogInTapped(_ sender: UIButton) {
        delegate?.didTapSocialLogIn(self)
    }
    
    @IBAction func buttonEmailLogInTapped(_ sender: UIButton) {
        delegate?.didTapEmailLogIn(self)
    }
    
    @IBAction func buttonRegisterNewAccountTapped(_ sender: UIButton) {
        delegate?.didTapRegisterNewAccount(self)
    }
    
}
