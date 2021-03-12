//
//  LoginViewModel.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import Foundation

//MARK: - Release funcs for routing via Coordinators
protocol LoginViewModelDelegate: class {
    func moveToSignUpScene()
    func moveToGallery()
}

class LoginViewModel {
        
    //MARK: - Properties
    weak var delegate: LoginViewModelDelegate?
    weak var view: LoginViewInput!
    
    init(view: LoginViewInput) {
        self.view = view
    }
    
    //MARK: - Public methods
    
    //MARK: - Private methods
    
}

//MARK: - Release funcs from View
extension LoginViewModel: LoginViewOutput {
    func loadViewModel() {
        
    }
    
    func tapSignUpButton() {
        delegate?.moveToSignUpScene()
    }
    
    func tapLoginButtton() {
        delegate?.moveToGallery()
    }
}
