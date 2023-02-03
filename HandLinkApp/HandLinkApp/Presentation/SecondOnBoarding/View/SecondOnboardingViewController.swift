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
        navigationController?.isNavigationBarHidden = true
        
        layout()
        bind()
    }
    
    private func layout() {
        view.addSubview(secondOnboardingView)
        
        secondOnboardingView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.left.equalTo(view.safeAreaLayoutGuide).offset(20)
            $0.bottom.right.equalTo(view.safeAreaLayoutGuide).offset(-20)
        }
    }
    
    private func bind() {
        guard let viewModel = viewModel else { return }

        viewModel.title
            .drive(secondOnboardingView.titleLabel.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.description
            .drive(secondOnboardingView.descriptionLabel.rx.text)
            .disposed(by: disposeBag)
        
        secondOnboardingView.nextButton.rx.tap
            .bind(to: viewModel.action.showNextView)
            .disposed(by: disposeBag)
    }
}
