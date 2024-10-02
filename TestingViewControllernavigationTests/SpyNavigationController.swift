//
//  SpyNavigationController.swift
//  TestingViewControllernavigationTests
//
//  Created by Lera Savchenko on 2.10.24.
//

import UIKit

class SpyNavigationController: UINavigationController {
    
    var pushedViewController: UIViewController!
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        
        pushedViewController = viewController
    }
    
}
