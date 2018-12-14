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
            navigationItem.rightBarButtonItem = NavigationItemProvider.getSkipBarButtonItem(target: self)
        case .cannotSkipBabyAdd:
            navigationItem.leftBarButtonItem = NavigationItemProvider.getBackBarButtonItem(target: self)
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

    
struct NavigationItemProvider {
    
    static func getSkipBarButtonItem(target: BackableSkippable) -> UIBarButtonItem {
            return UIBarButtonItem(title: "Skip", style: .plain, target: target, action: Selector.buttonSkipTapped(in: target))
    }
    static func getBackBarButtonItem(target: BackableSkippable) -> UIBarButtonItem {
            return UIBarButtonItem(title: "Back", style: .plain, target: target, action: Selector.buttonBackTapped(in: target))
    }
}

extension Selector {
    
    static func buttonBackTapped(in object: BackableSkippable) -> Selector {
        return #selector(object.buttonBackTapped)
    }
    static func buttonSkipTapped(in object: BackableSkippable) -> Selector {
        return #selector(object.buttonSkipTapped)
    }
}

@objc protocol BackableSkippable {
    func buttonBackTapped()
    func buttonSkipTapped()
}
