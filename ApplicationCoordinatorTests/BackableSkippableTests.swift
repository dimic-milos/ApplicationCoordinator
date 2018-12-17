//
//  BackableSkippableTests.swift
//  ApplicationCoordinatorTests
//
//  Created by Milos on 12/17/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import XCTest
@testable import ApplicationCoordinator

class BackableSkippableTests: XCTestCase {}

// MARK: - Fakes

class BackableSkippableFake: UIViewController, BackableSkippable {
    func buttonBackTapped() {}
    func buttonSkipTapped() {}
}
