//
//  ProfileConfigurator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 29.03.2021.
//  
//

import Foundation

class ProfileConfigurator {

    func configureModule(delegate: ProfileViewModelDelegate?) -> ProfileViewController {
        let viewController = ProfileViewController()
        let viewModel = ProfileViewModel(view: viewController)
        viewModel.delegate = delegate
        viewController.setViewModel(viewModel)
        return viewController
    }
}
