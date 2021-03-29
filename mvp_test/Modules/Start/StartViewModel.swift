//
//  StartViewModel.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//

import Foundation

//MARK: - Release funcs for routing via Coordinators
protocol StartViewModelDelegate: class {
    func userAuthorized()
    func userUnAuthrized()
}

class StartViewModel {
    
    var userAuthorized = Bool()
    
    weak var delegate: StartViewModelDelegate?
    weak var view: StartViewInput!
    
    init(view: StartViewInput) {
        self.view = view
    }
    
    private func checkUserAuth() {
        
         userAuthorized = true
        
        if userAuthorized == true {
            print("/// user Authorized")
            delegate?.userAuthorized()
        }
        else {
            print("/// user UnAuthorized")
            delegate?.userUnAuthrized()
        }
    }
}

//MARK: - Release funcs from View
extension StartViewModel: StartViewOutput {
    func loadViewModel() {
        checkUserAuth()
    }
}
