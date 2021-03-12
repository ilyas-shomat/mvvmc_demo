//
//  AuthCoordinator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//

import Foundation
import UIKit

protocol AuthFlowCoordinatorDelegate: class {
    func userLoggedIn(coordinator: Coordinator)
}

class AuthFlowCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    weak var delegate: AuthFlowCoordinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        showLoginScene()
    }
    
    func showLoginScene() {
        navigationController.setViewControllers([LoginConfigurator().configureModule(delegate: self)], animated: true)
    }
    
    func showSignUpScene() {
        navigationController.pushViewController(SignUpConfigurator().configureModule(delegate: self), animated: true)
    }
    
}


extension AuthFlowCoordinator: LoginViewModelDelegate {
    func moveToGallery() {
        <#code#>
    }
    
    func moveToSignUpScene() {
        showSignUpScene()
    }
    
    
}

extension AuthFlowCoordinator: SignUpViewModelDelegate {
    
}
