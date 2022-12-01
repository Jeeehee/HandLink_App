//
//  ViewModelProtocol.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/29.
//

import Foundation
import RxCocoa
import RxSwift

protocol FirstOnBoardingViewModelAction {
    var showHomeView: PublishRelay<Void> { get }
    var showNextView: PublishRelay<Void> { get }
}

protocol FirstOnBoardingViewModelState {
    var title: Driver<String> { get }
    var description: Driver<String> { get }
}

protocol FirstOnBoardingViewModelProtocol: FirstOnBoardingViewModelAction, FirstOnBoardingViewModelState {
    var action: FirstOnBoardingViewModelAction { get }
    var state: FirstOnBoardingViewModelState { get }
}
