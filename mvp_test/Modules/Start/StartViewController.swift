//
//  StartViewController.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//

import UIKit

// MARK: - View Input/ViewModel Output
protocol StartViewInput: class {
    
}

// MARK: - View Output/ViewModel Insput
protocol StartViewOutput: class {
    func loadViewModel()
}

class StartViewController: BaseViewController {

    //MARK: - Outlet properties
    
    //MARK: - Properties
    
    var viewModel: StartViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDefaultStatements()
        viewModel.loadViewModel()
    }
    
    //MARK: - Public methods

    func setViewModel(_ viewModel: StartViewOutput) {
        self.viewModel = viewModel
    }
    
    //MARK: - Private methods
    
    private func setupDefaultStatements() {
        hideNavigationBar()
    }
}

//MARK: - Release funcs from ViewModel
extension StartViewController: StartViewInput {
    
}

