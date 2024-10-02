//
//  TestingViewControllerNavigationTests.swift
//  TestingViewControllernavigationTests
//
//  Created by Lera Savchenko on 2.10.24.
//

import XCTest
@testable import TestingViewControllernavigation

final class TestingViewControllerNavigationTests: XCTestCase {

    var sut: ViewController!
    var navigationController: UINavigationController!
    
    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        sut.loadViewIfNeeded()
        navigationController = UINavigationController(rootViewController: sut)
    }

    override func tearDownWithError() throws {
        sut = nil
        navigationController = nil
    }
    
    func testNextViewButton_WhenTapped_SecondViewControllerIsPushed() {

        let myPredicate = NSPredicate { input, _ in
            return (input as? UINavigationController)?.topViewController is SecondViewController
        }
        
        expectation(for: myPredicate, evaluatedWith: navigationController)
        sut.nextViewButton.sendActions(for: .touchUpInside)
        
        waitForExpectations(timeout: 1.5)
    }
    
    func testNextViewButton_WhenTapped_SecondViewControllerIsPushedV2() {
        sut.nextViewButton.sendActions(for: .touchUpInside)
        
        RunLoop.current.run(until: Date())
        
        guard let _ = navigationController.topViewController as? SecondViewController else {
            XCTFail()
            return
        }
    }
}
