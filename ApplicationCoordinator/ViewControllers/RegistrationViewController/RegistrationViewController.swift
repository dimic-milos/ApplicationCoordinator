//
//  RegisterViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/30/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    weak var delegate: RegistrationViewControllerDelegate?

    init(title: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func buttonSignMeUpTapped(_ sender: UIButton) {
        delegate?.didTapSignMeUp(self)
    }
}
