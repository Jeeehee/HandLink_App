//
//  ViewController.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let model = CoreML_model().model
    }
}

