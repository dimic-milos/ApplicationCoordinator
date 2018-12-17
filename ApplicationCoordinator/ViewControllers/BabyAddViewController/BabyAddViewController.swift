//
//  BabyAddViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 12/4/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class BabyAddViewController: UIViewController, BackableSkippable {

    // MARK: Properties
    
    private let state: State
    private let navigationItemHelper: NavigationItemHelper
    weak var delegate: BabyAddViewControllerDelegate?
    
    // MARK: - Init methods
    
    init(title: String, state: State, navigationItemHelper: NavigationItemHelper = NavigationItemHelper.shared) {
        self.state = state
        self.navigationItemHelper = navigationItemHelper
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: - Private methods
    
    private func setupView() {
        switch state {
            
        case .canSkipBabyAdd:
            navigationItem.rightBarButtonItem = navigationItemHelper.getSkipBarButtonItem(target: self)
        case .cannotSkipBabyAdd:
            navigationItem.leftBarButtonItem = navigationItemHelper.getBackBarButtonItem(target: self)
        }
    }
    
    // MARK: - Interface Actions
    
    @IBAction func buttonBabyBornTapped(_ sender: Any) {
        delegate?.didTapAddBaby(self, baby: Baby())
    }
    
    @IBAction func buttonExpectingTapped(_ sender: Any) {
        delegate?.didTapAddBaby(self, baby: Baby())
    }
    
    @objc func buttonBackTapped() {
        delegate?.didTapBack(self)
    }
    
    @objc func buttonSkipTapped() {
        delegate?.didTapSkip(self)
    }
}
