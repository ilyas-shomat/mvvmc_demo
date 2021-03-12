//
//  LoginConfigurator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import Foundation

class LoginConfigurator {

    func configureModule(delegate: LoginViewModelDelegate?) -> LoginViewController {
        let viewController = LoginViewController()
        let viewModel = LoginViewModel(view: viewController)
        viewModel.delegate = delegate
        viewController.setViewModel(viewModel)
        return viewController
    }
}
