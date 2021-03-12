//
//  AppDelegate.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 05.03.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appSetup: AppSetup!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        appSetup = AppSetup(window: window)
        appSetup.setupAppCoordinator()
        self.window = window
        return true
    }

}

