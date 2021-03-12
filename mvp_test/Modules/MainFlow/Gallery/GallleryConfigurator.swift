//
//  GallleryConfigurator.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import Foundation

class GallleryConfigurator {

    func configureModule(delegate: GallleryViewModelDelegate?) -> GallleryViewController {
        let viewController = GallleryViewController()
        let viewModel = GallleryViewModel(view: viewController)
        viewModel.delegate = delegate
        viewController.setViewModel(viewModel)
        return viewController
    }
}
