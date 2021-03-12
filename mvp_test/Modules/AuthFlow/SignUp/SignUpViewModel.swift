//
//  SignUpViewModel.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import Foundation

//MARK: - Release funcs for routing via Coordinators
protocol SignUpViewModelDelegate: class {

}

class SignUpViewModel {
        
    //MARK: - Properties
    weak var delegate: SignUpViewModelDelegate?
    weak var view: SignUpViewInput!
    
    init(view: SignUpViewInput) {
        self.view = view
    }
    
    //MARK: - Public methods
    
    //MARK: - Private methods
    
}

//MARK: - Release funcs from View
extension SignUpViewModel: SignUpViewOutput {
    func loadViewModel() {
        
    }
}
