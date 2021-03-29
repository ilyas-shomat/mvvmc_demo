//
//  ProfileViewModel.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 29.03.2021.
//  
//

import Foundation

//MARK: - Release funcs for routing via Coordinators
protocol ProfileViewModelDelegate: class {

}

class ProfileViewModel {
        
    //MARK: - Properties
    weak var delegate: ProfileViewModelDelegate?
    weak var view: ProfileViewInput!
    
    init(view: ProfileViewInput) {
        self.view = view
    }
    
    //MARK: - Public methods
    
    //MARK: - Private methods
    
}

//MARK: - Release funcs from View
extension ProfileViewModel: ProfileViewOutput {
    func loadViewModel() {
        
    }
}
