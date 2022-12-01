//
//  FirstOnboardingCoordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/12/01.
//

import UIKit
import RxSwift
import RxCocoa

protocol Navigation {
    var didTapSkipButton: PublishRelay<Void> { get }
}

final class FirstOnboardingCoordinator: BaseCoordinator, Navigation {
    private let disposeBag = DisposeBag()
    
    var childCoordinators = [BaseCoordinator]()
    var navigationController: UINavigationController
    
    var didTapSkipButton = PublishRelay<Void>()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        didTapSkipButton
            .bind(onNext: start)
            .disposed(by: disposeBag)
    }
    
    func start() {
        let viewModel = FirstOnBoardingViewModel(navigation: self)
        let viewController = FirstOnBoardingViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}
