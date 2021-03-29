//
//  ProfileViewController.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 29.03.2021.
//  
//

import UIKit

// MARK: - View Input/ViewModel Output
protocol ProfileViewInput: class {
    
}

// MARK: - View Output/ViewModel Insput
protocol ProfileViewOutput: class {
    func loadViewModel()
}

class ProfileViewController: BaseViewController {
    
    //MARK: - Outlet properties
    
    //MARK: - Properties
    
    var viewModel: ProfileViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDefaultStatements()
        viewModel.loadViewModel()
    }
 
    //MARK: - Public methods

    func setViewModel(_ viewModel: ProfileViewOutput) {
        self.viewModel = viewModel
    }
    
    //MARK: - Private methods
    
    private func setupDefaultStatements() {
        hideNavigationBar()
        self.tabBarItem = UITabBarItem(title: "Exact", image: nil, selectedImage: nil)
    }
}

//MARK: - Release funcs from ViewModel
extension ProfileViewController: ProfileViewInput {
    
}
