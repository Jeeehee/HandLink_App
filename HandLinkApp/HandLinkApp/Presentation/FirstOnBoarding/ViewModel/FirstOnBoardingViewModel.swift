//
//  FirstOnboardingViewModel.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/28.
//

import Foundation
import RxSwift
import RxCocoa

struct FirstOnBoardingViewModel: OnBoardingViewModelProtocol {
    private let disposeBag = DisposeBag()
    
    var action: OnBoardingViewModelAction { self }
    var state: OnBoardingViewModelState { self }
    
    var showHomeView = PublishRelay<Void>()
    var showNextView = PublishRelay<Void>()

    var title: Driver<String>
    var description: Driver<String>
    
    init(navigation: Navigation) {
        title = BehaviorRelay<String>(value: Constant.firstOnBoardingTitle.text)
            .map { "\($0)" }
            .asDriver(onErrorRecover: { _ in .empty() })
        
        description = BehaviorRelay<String>(value: Constant.firstOnBoardingDescription.text)
            .map { "\($0)" }
            .asDriver(onErrorRecover: { _ in .empty() })
        
        showNextView
            .bind(to: navigation.didTapNextButton)
            .disposed(by: disposeBag)
    }
}
