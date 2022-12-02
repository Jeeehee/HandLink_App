//
//  SecondOnboardingViewController.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/12/01.
//

import UIKit
import SnapKit
import RxSwift

final class SecondOnboardingViewController: UIViewController {
    private let disposeBag = DisposeBag()
    private let secondOnboardingView = SecondOnBoardingView()
    
    private var viewModel: SecondOnBoardingViewModel?
    
    convenience init(viewModel: SecondOnBoardingViewModel) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        layout()
    }
    
    private func layout() {
        view.addSubview(secondOnboardingView)
        
        secondOnboardingView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
