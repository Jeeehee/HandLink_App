//
//  OnBoardingViewModelProtocol.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/29.
//

import Foundation
import RxSwift
import RxCocoa

protocol Navigation {
    var didTapNextButton: PublishRelay<Void> { get }
}

protocol OnBoardingViewModelAction {
    var showHomeView: PublishRelay<Void> { get }
    var showNextView: PublishRelay<Void> { get }
}

protocol OnBoardingViewModelState {
    var title: Driver<String> { get }
    var description: Driver<String> { get }
}

protocol OnBoardingViewModelProtocol: OnBoardingViewModelAction, OnBoardingViewModelState {
    var action: OnBoardingViewModelAction { get }
    var state: OnBoardingViewModelState { get }
}
