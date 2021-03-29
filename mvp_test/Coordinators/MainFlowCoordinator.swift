//
//  MainFlowCoordinator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import Foundation
import UIKit

protocol MainFlowCoordinatorDelegate: class {
    
}

class MainFlowCoordinator: Coordinator {

    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    weak var delegate: MainFlowCoordinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
//        showGalleryScene()
        setupTabBar()
    }
    
    
    func setupTabBar() {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [GallleryConfigurator().configureModule(delegate: self), ProfileConfigurator().configureModule(delegate: self), ExactItemConfigurator().configureModule(delegate: self)]
        tabBarController.selectedIndex = 0

        navigationController.pushViewController(tabBarController, animated: true)
    }
    
    func showGalleryScene() {
        navigationController.setViewControllers([GallleryConfigurator().configureModule(delegate: self)], animated: true)
    }
}

extension MainFlowCoordinator: GallleryViewModelDelegate {
    
}

extension MainFlowCoordinator: ProfileViewModelDelegate {
    
}

extension MainFlowCoordinator: ExactItemViewModelDelegate {
    
}
