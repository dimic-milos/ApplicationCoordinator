//
//  BabyAddViewControllerTests.swift
//  ApplicationCoordinatorTests
//
//  Created by Milos on 12/14/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import XCTest
@testable import ApplicationCoordinator

class BabyAddViewControllerTests: XCTestCase {

    func test_ViewDidLoad_WhenCalled_SetsLeftBarButtonItemAsExpected() throws {
        let sut = BabyAddViewController(title: String(describing: BabyAddViewController.self), state: .cannotSkipBabyAdd)
        let expected = NavigationItemProvider.getBackBarButtonItem(target: sut)
        sut.beginAppearanceTransition(true, animated: false)
        
        XCTAssertEqual(sut.navigationItem.leftBarButtonItem?.title, expected.title)
        XCTAssertEqual(sut.navigationItem.leftBarButtonItem?.action, expected.action)
        XCTAssertEqual(sut.navigationItem.leftBarButtonItem?.style, expected.style)
        guard let target = sut.navigationItem.leftBarButtonItem?.target as? UIViewController else { XCTFail(); return }
        guard let expectedViewController = expected.target as? UIViewController else { XCTFail(); return }
        XCTAssertEqual(target, expectedViewController)
    }

}
