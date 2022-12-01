//
//  OnboardingViewModel1.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/28.
//

import Foundation
import RxCocoa
import RxSwift

struct FirstOnboardingViewModel: FirstOnboardingViewModelProtocol {
    private let disposeBag = DisposeBag()
    
    var input: FirstOnboardingViewModelInput { self }
    var output: FirstOnboardingViewModelOutPut { self }
    
    var didTapSkipButton: PublishRelay<Void>
    var didTapNextButton: PublishRelay<Void>
    var image: Driver<String>
    var title: Driver<String>
    var description: Driver<String>
}
