//
//  SignUpViewController.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import UIKit

// MARK: - View Input/ViewModel Output
protocol SignUpViewInput: class {
    
}

// MARK: - View Output/ViewModel Insput
protocol SignUpViewOutput: class {
    func loadViewModel()
}

class SignUpViewController: BaseViewController {
    
    //MARK: - Outlet properties
    
    //MARK: - Properties
    
    var viewModel: SignUpViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDefaultStatements()
        viewModel.loadViewModel()
    }
 
    //MARK: - Public methods

    func setViewModel(_ viewModel: SignUpViewOutput) {
        self.viewModel = viewModel
    }
    
    //MARK: - Private methods
    
    private func setupDefaultStatements() {
//        hideNavigationBar()
    }
}

//MARK: - Release funcs from ViewModel
extension SignUpViewController: SignUpViewInput {
    
}
