//
//  ViewController.swift
//  ManageStringConstantsWithSwiftGen
//
//  Created by 山本響 on 2022/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    enum Constant {
        static let title = "Home"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = Constant.title
        
    }


}

