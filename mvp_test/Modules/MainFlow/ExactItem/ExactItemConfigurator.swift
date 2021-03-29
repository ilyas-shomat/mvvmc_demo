//
//  ExactItemConfigurator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 29.03.2021.
//  
//

import Foundation

class ExactItemConfigurator {

    func configureModule(delegate: ExactItemViewModelDelegate?) -> ExactItemViewController {
        let viewController = ExactItemViewController()
        let viewModel = ExactItemViewModel(view: viewController)
        viewModel.delegate = delegate
        viewController.setViewModel(viewModel)
        return viewController
    }
}
