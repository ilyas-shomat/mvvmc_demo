//
//  LoginViewController.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import UIKit

// MARK: - View Input/ViewModel Output
protocol LoginViewInput: class {
    
}

// MARK: - View Output/ViewModel Insput
protocol LoginViewOutput: class {
    func loadViewModel()
    func tapSignUpButton()
    func tapLoginButtton()
}

class LoginViewController: BaseViewController {
    
    //MARK: - Outlet properties
    
    //MARK: - Properties
    
    var viewModel: LoginViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDefaultStatements()
        viewModel.loadViewModel()
    }
    
 
    //MARK: - Public methods

    func setViewModel(_ viewModel: LoginViewOutput) {
        self.viewModel = viewModel
    }
    
    @IBAction func signUpButtonTap(_ sender: Any) {
        viewModel.tapSignUpButton()
    }
    
    @IBAction func loginButtonTap(_ sender: Any) {
        viewModel.tapLoginButtton()
    }
    
    //MARK: - Private methods
    
    private func setupDefaultStatements() {
    }
}

//MARK: - Release funcs from ViewModel
extension LoginViewController: LoginViewInput {
    
}
