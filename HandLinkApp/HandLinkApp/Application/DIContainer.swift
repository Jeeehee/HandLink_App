//
//  DIContainer.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2023/01/26.
//

import Foundation

final class DIContainer {
    // MARK: FirstOnBoardingView
    func makeFirstOnBoardingViewModel(navigation: Navigation) -> FirstOnBoardingViewModel {
        return FirstOnBoardingViewModel(navigation: navigation)
    }
    
    func makeFirstOnBoardingViewController(navigation: Navigation) -> FirstOnBoardingViewController {
        return FirstOnBoardingViewController(viewModel: makeFirstOnBoardingViewModel(navigation: navigation))
    }
    
    // MARK: SecondOnBoardingView
    func makeSecondOnBoardingViewModel(navigation: Navigation) -> SecondOnBoardingViewModel {
        return SecondOnBoardingViewModel(navigation: navigation)
    }
    
    func makeSecondOnboardingViewController(navigation: Navigation) -> SecondOnboardingViewController {
        return SecondOnboardingViewController(viewModel: SecondOnBoardingViewModel(navigation: navigation))
    }
    
    // MARK: HomeView
    func makeHomeViewModel(navigation: Navigation) -> HomeViewModel {
        return HomeViewModel(navigation: navigation)
    }
    
    func makeHomeViewController(navigation: Navigation) -> HomeViewController {
        return HomeViewController(viewModel: HomeViewModel(navigation: navigation))
    }
}
