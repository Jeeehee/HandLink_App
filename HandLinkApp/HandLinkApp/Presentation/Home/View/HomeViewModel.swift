//
//  HomeViewModel.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2023/02/03.
//

import Foundation
import RxSwift
import RxCocoa

protocol HomeViewModelAction {
}

protocol HomeViewModelState {
}

protocol HomeViewModelProtocol: HomeViewModelAction, HomeViewModelState {
    var action: HomeViewModelAction { get }
    var state: HomeViewModelState { get }
}

struct HomeViewModel: HomeViewModelProtocol {
    var action: HomeViewModelAction { self }
    var state: HomeViewModelState { self }
    
    init (navigation: Navigation) {}
}
