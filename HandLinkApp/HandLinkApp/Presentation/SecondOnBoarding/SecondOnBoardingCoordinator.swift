//
//  SecondOnBoardingCoordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/29.
//

import UIKit
import RxSwift
import RxCocoa

final class SecondOnBoardingCoordinator: BaseCoordinator, Navigation {
    private let disposeBag = DisposeBag()
    
    var childCoordinators = [BaseCoordinator]()
    var navigationController = UINavigationController()
    
    var didTapNextButton = PublishRelay<Void>()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        didTapNextButton
            .bind(onNext: start)
            .disposed(by: disposeBag)
    }
    
    func start() {
        let viewModel = SecondOnBoardingViewModel(navigation: self)
        let viewContoller = SecondOnboardingViewController()
        navigationController.pushViewController(viewContoller, animated: true)
    }
}
