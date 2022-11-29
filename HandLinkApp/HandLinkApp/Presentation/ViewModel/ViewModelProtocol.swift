//
//  ViewModelProtocol.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/29.
//

import Foundation
import RxCocoa
import RxSwift

protocol FirstOnboardingViewModelInput {
    var didTapSkipButton: PublishRelay<Void> { get }
    var didTapNextButton: PublishRelay<Void> { get }
}

protocol FirstOnboardingViewModelOutPut {
    var image: Driver<String> { get }
    var title: Driver<String> { get }
    var description: Driver<String> { get }
}

protocol FirstOnboardingViewModelProtocol: FirstOnboardingViewModelInput, FirstOnboardingViewModelOutPut {
    var input: FirstOnboardingViewModelInput { get }
    var output: FirstOnboardingViewModelOutPut { get }
}
