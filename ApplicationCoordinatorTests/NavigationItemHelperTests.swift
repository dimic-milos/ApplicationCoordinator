//
//  NavigationItemHelperTests.swift
//  ApplicationCoordinatorTests
//
//  Created by Milos on 12/17/18.
//  Copyright © 2018 Milos Dimic. All rights reserved.
//

import XCTest
@testable import ApplicationCoordinator

class NavigationItemHelperTests: XCTestCase {
    
    let backableSkippableFake = BackableSkippableFake()
    
    func test_GetBackBarButtonItem_WhenCalled_ReturnsBarButtonItemWithExpectedTitle() {
        let expectedTitle = Constants.Strings.Back
        XCTAssertEqual(expectedTitle, NavigationItemHelper.shared.getBackBarButtonItem(target: backableSkippableFake).title)
    }
    
    func test_GetSkipBarButtonItem_WhenCalled_ReturnsBarButtonItemWithExpectedTitle() {
        let expectedTitle = Constants.Strings.Skip
        XCTAssertEqual(expectedTitle, NavigationItemHelper.shared.getSkipBarButtonItem(target: backableSkippableFake).title)
    }
    
    func test_GetBackBarButtonItem_WhenCalled_ReturnsBarButtonItemWithExpectedTarget() {
        let backBarButtonItem = NavigationItemHelper.shared.getBackBarButtonItem(target: backableSkippableFake)
        guard let target = backBarButtonItem.target as? UIViewController else { XCTFail(); return }
        XCTAssertEqual(backableSkippableFake, target)
    }
    
    func test_GetSkipBarButtonItem_WhenCalled_ReturnsBarButtonItemWithExpectedTarget() {
        let backBarButtonItem = NavigationItemHelper.shared.getSkipBarButtonItem(target: backableSkippableFake)
        guard let target = backBarButtonItem.target as? UIViewController else { XCTFail(); return }
        XCTAssertEqual(backableSkippableFake, target)
    }
    
    func test_GetBackBarButtonItem_WhenCalled_ReturnsBarButtonItemWithExpectedAction() {
        let expectedAction = Selector.buttonBackTapped(in: backableSkippableFake)
        let backBarButtonItem = NavigationItemHelper.shared.getBackBarButtonItem(target: backableSkippableFake)
        XCTAssertEqual(expectedAction, backBarButtonItem.action)
    }
    
    func test_GetSkipBarButtonItem_WhenCalled_ReturnsBarButtonItemWithExpectedAction() {
        let expectedAction = Selector.buttonSkipTapped(in: backableSkippableFake)
        let backBarButtonItem = NavigationItemHelper.shared.getSkipBarButtonItem(target: backableSkippableFake)
        XCTAssertEqual(expectedAction, backBarButtonItem.action)
    }
}

// MARK: - Fakes

class FakeNavigationItemHelper: NavigationItemHelper {
    
    var isGetSkipBarButtonItemCalled =  false
    var isGetBackBarButtonItemCalled =  false
    
    override func getSkipBarButtonItem(target: BackableSkippable) -> UIBarButtonItem {
        isGetSkipBarButtonItemCalled = true
        return UIBarButtonItem()
    }
    
    override func getBackBarButtonItem(target: BackableSkippable) -> UIBarButtonItem {
        isGetBackBarButtonItemCalled = true
        return UIBarButtonItem()
    }
}
