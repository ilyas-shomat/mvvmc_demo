//
//  SignUpConfigurator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import Foundation

class SignUpConfigurator {

    func configureModule(delegate: SignUpViewModelDelegate?) -> SignUpViewController {
        let viewController = SignUpViewController()
        let viewModel = SignUpViewModel(view: viewController)
        viewModel.delegate = delegate
        viewController.setViewModel(viewModel)
        return viewController
    }
}
