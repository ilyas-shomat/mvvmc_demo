//
//  GallleryViewModel.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 12.03.2021.
//  
//

import Foundation

//MARK: - Release funcs for routing via Coordinators
protocol GallleryViewModelDelegate: class {

}

class GallleryViewModel {
        
    //MARK: - Properties
    weak var delegate: GallleryViewModelDelegate?
    weak var view: GallleryViewInput!
    
    init(view: GallleryViewInput) {
        self.view = view
    }
    
    //MARK: - Public methods
    
    //MARK: - Private methods
    
}

//MARK: - Release funcs from View
extension GallleryViewModel: GallleryViewOutput {
    func loadViewModel() {
        
    }
}
