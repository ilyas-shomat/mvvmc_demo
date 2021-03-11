//
//  FirstPresenter.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 10.03.2021.
//

import Foundation

protocol FirstViewInput: class {
    func updateLabel()
}

class FirstViewModel {
    
    weak var view: FirstViewInput?
    
    init(with view: FirstViewInput) {
        self.view = view
    }
    
    func buttonTap() {
        self.view?.updateLabel()
    }
}

