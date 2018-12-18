//
//  Selector+Extensions.swift
//  ApplicationCoordinator
//
//  Created by Milos on 12/17/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

extension Selector {
    
    static func buttonBackTapped(in object: BackableSkippable) -> Selector {
        return #selector(object.buttonBackTapped)
    }
    static func buttonSkipTapped(in object: BackableSkippable) -> Selector {
        return #selector(object.buttonSkipTapped)
    }
}
