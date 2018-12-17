//
//  NavigationItemHelper.swift
//  ApplicationCoordinator
//
//  Created by Milos on 12/17/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

class NavigationItemHelper {
    
    static let shared = NavigationItemHelper()
    
    func getSkipBarButtonItem(target: BackableSkippable) -> UIBarButtonItem {
        return UIBarButtonItem(title: Constants.Strings.Skip, style: .plain, target: target, action: Selector.buttonSkipTapped(in: target))
    }
    func getBackBarButtonItem(target: BackableSkippable) -> UIBarButtonItem {
        return UIBarButtonItem(title: Constants.Strings.Back, style: .plain, target: target, action: Selector.buttonBackTapped(in: target))
    }
}
