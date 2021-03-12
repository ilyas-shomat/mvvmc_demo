//
//  BaseNavigationController.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//

import Foundation
import UIKit


class BaseNavigationController: UINavigationController {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        debugPrint("\(#function) at \(self)")
    }
    
    func makeNotTranslucent() {
        navigationBar.isTranslucent = false
    }
    
    func removeBorder() {
        navigationBar.setValue(true, forKey: "hidesShadow")
    }
}
