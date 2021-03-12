//
//  GallleryViewController.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import UIKit

// MARK: - View Input/ViewModel Output
protocol GallleryViewInput: class {
    
}

// MARK: - View Output/ViewModel Insput
protocol GallleryViewOutput: class {
    func loadViewModel()
}

class GallleryViewController: BaseViewController {
    
    //MARK: - Outlet properties
    
    //MARK: - Properties
    
    var viewModel: GallleryViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDefaultStatements()
        viewModel.loadViewModel()
    }
 
    //MARK: - Public methods

    func setViewModel(_ viewModel: GallleryViewOutput) {
        self.viewModel = viewModel
    }
    
    //MARK: - Private methods
    
    private func setupDefaultStatements() {
        hideNavigationBar()
    }
}

//MARK: - Release funcs from ViewModel
extension GallleryViewController: GallleryViewInput {
    
}
