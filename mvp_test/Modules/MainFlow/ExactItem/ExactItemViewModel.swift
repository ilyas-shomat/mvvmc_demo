//
//  ExactItemViewModel.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 29.03.2021.
//  
//

import Foundation

//MARK: - Release funcs for routing via Coordinators
protocol ExactItemViewModelDelegate: class {

}

class ExactItemViewModel {
        
    //MARK: - Properties
    weak var delegate: ExactItemViewModelDelegate?
    weak var view: ExactItemViewInput!
    
    init(view: ExactItemViewInput) {
        self.view = view
    }
    
    //MARK: - Public methods
    
    //MARK: - Private methods
    
}

//MARK: - Release funcs from View
extension ExactItemViewModel: ExactItemViewOutput {
    func loadViewModel() {
        
    }
}
