//
//  SecondOnboardingViewController.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/12/01.
//

import UIKit
import SnapKit

final class SecondOnboardingViewController: UIViewController {
    private let customView = FirstOnboardingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    private func layout() {
        view.addSubview(customView)
        
        customView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
