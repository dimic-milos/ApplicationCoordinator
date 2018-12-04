//
//  SocialNetworkLoginViewController.swift
//  ApplicationCoordinator
//
//  Created by Milos Dimic on 11/30/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class SocialNetworkLoginViewController: UIViewController {
   
    init(title: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
