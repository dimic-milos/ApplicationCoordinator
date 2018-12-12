//
//  LoginStateSelectionViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos on 12/12/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class LoginStateSelectionViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var segmentedControlLoggedInState: UISegmentedControl!
    
    // MARK: - Properties
    
    weak var delegate: LoginStateSelectionViewControllerDelegate?
    
    // MARK: Init methods
    
    init(title: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //: Action methods
    
    @IBAction func buttonGoTapped(_ sender: UIButton) {
        switch segmentedControlLoggedInState.selectedSegmentIndex {
        case 0:
            delegate?.didFinish(self, loggedInState: .notLoggedIn)
        case 1:
            delegate?.didFinish(self, loggedInState: .loggedIn(user: User(id: 0)))
        default:
            break
        }
    }
}
