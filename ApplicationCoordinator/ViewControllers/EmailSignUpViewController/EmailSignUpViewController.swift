//
//  EmailSignUpViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/30/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol EmailSignUpViewControllerDelegate: class {
    func didTapSignMeUp(_ emailSignUpViewController: EmailSignUpViewController)
}

class EmailSignUpViewController: UIViewController {
    
    weak var delegate: EmailSignUpViewControllerDelegate?

    init(backgroundColor: UIColor) {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = backgroundColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func buttonSignMeUpTapped(_ sender: UIButton) {
        delegate?.didTapSignMeUp(self)
    }
}
