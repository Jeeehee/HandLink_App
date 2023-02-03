//
//  AppCoordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/24.
//

import UIKit
import RxSwift
import RxRelay

final class AppCoordinator: BaseCoordinator, Navigation {
    private let disposeBag = DisposeBag()
    
    var childCoordinators = [BaseCoordinator]()
    var navigationController: UINavigationController
    
    // MARK: Navigation
    var didTapNextButton = PublishRelay<Void>()
    let diContainer: DIContainer
    
    init(navigationController: UINavigationController, diContainer: DIContainer) {
        self.navigationController = navigationController
        self.diContainer = diContainer
        
        bind()
    }
    
    func start() {
        let child = FirstOnBoardingCoordinator(navigationController: navigationController, navigation: self)
        addChild(child)
        child.parentCoordinator = self
        child.navigation = self
        child.start()
    }
}

// MARK: Private Function
extension AppCoordinator {
    private func bind() {
        didTapNextButton
            .withUnretained(self)
            .bind { owner, _ in
                owner.showSecondOnBoardingView()
            }
            .disposed(by: disposeBag)
    }
    
    private func showSecondOnBoardingView() {
        removeFirstOnBoardingCoordinator()
        
        let child = SecondOnBoardingCoordinator(navigationController: navigationController, navigation: self)
        addChild(child)
        child.parentCoordinator = self
        child.navigation = self
        child.start()
    }
    
    private func showHomeView() {
        removeSecondOnBoardingCoordinator()
        
        // TODO: HomeView Coordinator logic
    }
    
    private func removeFirstOnBoardingCoordinator() {
        let removeCoordinator = FirstOnBoardingCoordinator(navigationController: navigationController, navigation: self)
        childDidFinish(removeCoordinator)
    }
    
    private func removeSecondOnBoardingCoordinator() {
        let removeCoordinator = SecondOnBoardingCoordinator(navigationController: navigationController, navigation: self)
        childDidFinish(removeCoordinator)
    }
}
