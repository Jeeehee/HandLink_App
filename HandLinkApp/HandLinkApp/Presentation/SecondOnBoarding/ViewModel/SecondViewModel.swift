//
//  SecondViewModel.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/12/01.
//

import Foundation
import RxSwift
import RxCocoa

struct SecondOnBoardingViewModel: OnBoardingViewModelProtocol {
    private let disposeBag = DisposeBag()
    
    var action: OnBoardingViewModelAction { self }
    var state: OnBoardingViewModelState { self }
    
    var showHomeView = PublishRelay<Void>()
    var showNextView = PublishRelay<Void>()
    
    var title: Driver<String>
    var description: Driver<String>
    
    init (navigation: Navigation) {
        title = BehaviorRelay<String>(value: "화면에 나타나는 카메라에\n수어를 보여주세요")
            .map { "\($0)" }
            .asDriver(onErrorRecover: { _ in .empty() })
        
        description = BehaviorRelay<String>(value: "실시간으로 해당 수어의 뜻을 번역해드립니다")
            .map { "\($0)" }
            .asDriver(onErrorRecover: { _ in .empty() })
        
        showNextView
            .bind(to: navigation.didTapNextButton)
            .disposed(by: disposeBag)
    }
}
