//
//  LogInViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/27/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol LoginMethodSelectionViewControllerDelegate: class {
    func didTapSocialLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController)
    func didTapEmailLogIn(_ logInMethodSelectionViewController: LogInMethodSelectionViewController)
    func didTapSignUp(_ logInMethodSelectionViewController: LogInMethodSelectionViewController)
}

class LogInMethodSelectionViewController: UIViewController {
    
    weak var delegate: LoginMethodSelectionViewControllerDelegate?
    
    init(backgroundColor: UIColor) {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = backgroundColor
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
    
    @IBAction func buttonSignUpTapped(_ sender: UIButton) {
        delegate?.didTapSignUp(self)
    }
    
}
