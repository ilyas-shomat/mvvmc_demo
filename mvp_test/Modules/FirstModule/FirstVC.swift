//
//  FirstViewController.swift
//  mvp_test
//
//  Created by Ilyas Shomat on 10.03.2021.
//

import UIKit

class FirstViewController: UIViewController {

    lazy var viewModel = FirstViewModel(with: self)
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        viewModel.buttonTap()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FirstViewController: FirstViewInput {
    func updateLabel() {
        self.label.text = "from viewModel"
    }
}
