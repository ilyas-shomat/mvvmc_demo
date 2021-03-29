//
//  AppCoordinator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 11.03.2021.
//

import Foundation

import UIKit

/// Entry point among all coordinators.
/// Determines, what flow must be shown based on the rules.
class AppCoordinator: Coordinator {
    
    // MARK: Properties
    
    var childCoordinators: [Coordinator] = []
    let navigationController: UINavigationController
    
    // MARK: Public methods
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        showStartScene()
    }
    
    func showStartScene() {
        navigationController.pushViewController(StartConfigurator().configureModule(delegate: self), animated: false)
    }
    
    func showAuthFlow() {
        let authFlowCoordinator = AuthFlowCoordinator(navigationController: navigationController)
        authFlowCoordinator.delegate = self
        addChildCoordinator(authFlowCoordinator)
        authFlowCoordinator.start()
    }
    
    func showMainFlow() {
        let mainFlowCoordinator = MainFlowCoordinator(navigationController: navigationController)
        mainFlowCoordinator.delegate = self
        addChildCoordinator(mainFlowCoordinator)
        mainFlowCoordinator.start()
    }
}

// MARK: StartPresenter Delegate

extension AppCoordinator: StartViewModelDelegate {
    func userAuthorized() {
        showMainFlow()
        print("/// here need to show MainFlow")
    }
    
    func userUnAuthrized() {
        print("/// here need to show AuthFlow")
        showAuthFlow()
    }
}

extension AppCoordinator: AuthFlowCoordinatorDelegate {
    func userLoggedIn(coordinator: Coordinator) {
        removeChildCoordinator(coordinator)
        showMainFlow()
    }
}

extension AppCoordinator: MainFlowCoordinatorDelegate {
    
}
