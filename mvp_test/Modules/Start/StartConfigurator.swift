//
//  StartConfigurator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//

import Foundation

class StartConfigurator {
    
    func configureModule(delegate: StartViewModelDelegate?) -> StartViewController {
        let viewController = StartViewController()
        let viewModel = StartViewModel(view: viewController)
        viewModel.delegate = delegate
        viewController.setViewModel(viewModel)
        return viewController
    }
}
