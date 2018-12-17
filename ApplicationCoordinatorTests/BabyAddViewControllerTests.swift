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

    let fakeNavigationItemHelper = FakeNavigationItemHelper()
    
    func test_ViewDidLoad_WhenControllerStateIsCannotSkipBabyAdd_CallsNavigationItemHelperMethodGetBackBarButtonItem() {
        let sut = BabyAddViewController(title: "", state: .cannotSkipBabyAdd, navigationItemHelper: fakeNavigationItemHelper)
        sut.beginAppearanceTransition(true, animated: false)
        XCTAssertTrue(fakeNavigationItemHelper.isGetBackBarButtonItemCalled)
    }
    
    func test_ViewDidLoad_WhenControllerStateIsCanSkipBabyAdd_CallsNavigationItemHelperMethodGetSkipBarButtonItemMethod() {
        let sut = BabyAddViewController(title: "", state: .canSkipBabyAdd, navigationItemHelper: fakeNavigationItemHelper)
        sut.beginAppearanceTransition(true, animated: false)
        XCTAssertTrue(fakeNavigationItemHelper.isGetSkipBarButtonItemCalled)
    }
}
