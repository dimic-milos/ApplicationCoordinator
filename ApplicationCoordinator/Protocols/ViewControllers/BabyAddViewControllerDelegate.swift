//
//  BabyAddViewControllerDelegate.swift
//  ApplicationCoordinator
//
//  Created by Milos on 12/11/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import UIKit

protocol BabyAddViewControllerDelegate: class {
    func didTapSkip(_ babyAddViewController: BabyAddViewController)
    func didTapBack(_ babyAddViewController: BabyAddViewController)
    func didTapAddBaby(_ babyAddViewController: BabyAddViewController, baby: Baby)
}
