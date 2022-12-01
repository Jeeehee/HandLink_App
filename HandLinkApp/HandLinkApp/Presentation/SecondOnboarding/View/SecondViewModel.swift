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
    
    var showHomeView: PublishRelay<Void>
    var showNextView: PublishRelay<Void>
    
    var title: Driver<String>
    var description: Driver<String>
}
