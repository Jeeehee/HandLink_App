//
//  FirstOnBoardingViewController.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/24.
//

import UIKit
import SnapKit
import RxSwift

final class FirstOnBoardingViewController: UIViewController {
    private let disposeBag = DisposeBag()
    private let firstOnboardingView = FirstOnBoardingView()
    
    private var viewModel: FirstOnBoardingViewModel?
    
    convenience init(viewModel: FirstOnBoardingViewModel) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        layout()
        bind()
    }
    
    private func layout() {
        view.addSubview(firstOnboardingView)
        
        firstOnboardingView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func bind() {
        guard let viewModel = viewModel else { return }
        
//        viewModel.image
//            .drive(firstOnboardingView)
        
        viewModel.title
            .drive(firstOnboardingView.titleLabel.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.description
            .drive(firstOnboardingView.descriptionLabel.rx.text)
            .disposed(by: disposeBag)
        
        firstOnboardingView.nextButton.rx.tap
            .bind(to: viewModel.action.showNextView)
            .disposed(by: disposeBag)
    }
    
}
