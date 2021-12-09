//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Nikita Gavrilov on 07.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        animateTitle()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    func animateTitle() {
        titleLabel.text = ""
        let titleString = K.appName
        
        for (index, letter) in titleString.enumerated() {
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(index + 1), repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
        }
    }
}
