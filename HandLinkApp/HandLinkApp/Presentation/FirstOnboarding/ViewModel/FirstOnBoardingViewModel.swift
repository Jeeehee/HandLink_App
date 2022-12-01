//
//  FirstOnboardingViewModel.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/28.
//

import Foundation
import RxCocoa
import RxSwift

struct FirstOnBoarding {
    let image: String
    let title: String
    let description: String
}

struct FirstOnBoardingViewModel: FirstOnBoardingViewModelProtocol {
    private let disposeBag = DisposeBag()
    
    var action: FirstOnBoardingViewModelAction { self }
    var state: FirstOnBoardingViewModelState { self }
    
    var showHomeView = PublishRelay<Void>()
    var showNextView = PublishRelay<Void>()

    var title: Driver<String>
    var description: Driver<String>
    
    init(navigation: Navigation) {
        title = BehaviorRelay<String>(value: "서로의 목소리가 닿다")
            .map { "\($0)" }
            .asDriver(onErrorRecover: { _ in .empty() })
        
        description = BehaviorRelay<String>(value: "닿다는 농인과의 소통을 위해 만들어졌습니다.")
            .map { "\($0)" }
            .asDriver(onErrorRecover: { _ in .empty() })
        
        showNextView
            .bind(to: navigation.didTapSkipButton)
            .disposed(by: disposeBag)
    }
}
