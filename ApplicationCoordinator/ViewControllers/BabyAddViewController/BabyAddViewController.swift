//
//  BabyAddViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 12/4/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class BabyAddViewController: UIViewController {

    // MARK: Properties
    
    private let state: State
    weak var delegate: BabyAddViewControllerDelegate?
    
    // MARK: - Init methods
    
    init(title: String, state: State) {
        self.state = state
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
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(buttonSkipTapped))
        case .cannotSkipBabyAdd:
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(buttonBackTapped))
        }
    }
    
    // MARK: - Interface Actions
    
    @IBAction func buttonBabyBornTapped(_ sender: Any) {
        delegate?.didAddBaby(self, baby: Baby())
    }
    
    @IBAction func buttonExpectingTapped(_ sender: Any) {
        delegate?.didAddBaby(self, baby: Baby())
    }
    
    @objc private func buttonBackTapped() {
        delegate?.didTapBack(self)
    }
    
    @objc func buttonSkipTapped() {
        delegate?.didTapSkip(self)
    }
}
