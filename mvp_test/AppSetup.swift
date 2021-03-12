//
//  AppSetup.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//

import Foundation
import UIKit

class AppSetup {
    
    var appCoordinator: AppCoordinator!
    let window: UIWindow
        
    init(window: UIWindow) {
        self.window = window
    }
        
    func setupAppCoordinator() {
        window.rootViewController = BaseNavigationController()
        guard let rootNavigationController = window.rootViewController as? UINavigationController else {
            fatalError("Root viewController must be inherited from UINavigationController")
        }
        appCoordinator = AppCoordinator(navigationController: rootNavigationController)
        appCoordinator.start()
        window.makeKeyAndVisible()
    }
    
    private func setupServices() {
        
    }
}
