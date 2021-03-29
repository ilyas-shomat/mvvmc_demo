//
//  ExactItemViewController.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 29.03.2021.
//  
//

import UIKit

// MARK: - View Input/ViewModel Output
protocol ExactItemViewInput: class {
    
}

// MARK: - View Output/ViewModel Insput
protocol ExactItemViewOutput: class {
    func loadViewModel()
}

class ExactItemViewController: BaseViewController {
    
    //MARK: - Outlet properties
    
    //MARK: - Properties
    
    var viewModel: ExactItemViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDefaultStatements()
        viewModel.loadViewModel()
    }
 
    //MARK: - Public methods

    func setViewModel(_ viewModel: ExactItemViewOutput) {
        self.viewModel = viewModel
    }
    
    //MARK: - Private methods
    
    private func setupDefaultStatements() {
        self.tabBarItem = UITabBarItem(title: "Exact Item", image: nil, selectedImage: nil)
        hideNavigationBar()
    }
}

//MARK: - Release funcs from ViewModel
extension ExactItemViewController: ExactItemViewInput {
    
}
