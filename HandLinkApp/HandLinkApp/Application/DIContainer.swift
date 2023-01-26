//
//  DIContainer.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2023/01/26.
//

import Foundation

final class DIContainer {
    // MARK: ViewModel
    func makeFirstOnBoardingViewModel(navigation: Navigation) -> FirstOnBoardingViewModel {
        return FirstOnBoardingViewModel(navigation: navigation)
    }
    
    func makeSecondOnBoardingViewModel(navigation: Navigation) -> SecondOnBoardingViewModel {
        return SecondOnBoardingViewModel(navigation: navigation)
    }
    
    // MARK: ViewController
    func makeFirstOnBoardingViewController(navigation: Navigation) -> FirstOnBoardingViewController {
        return FirstOnBoardingViewController(viewModel: makeFirstOnBoardingViewModel(navigation: navigation))
    }
    
    func makeSecondOnboardingViewController(navigation: Navigation) -> SecondOnboardingViewController {
        return SecondOnboardingViewController(viewModel: SecondOnBoardingViewModel(navigation: navigation))
    }
}
