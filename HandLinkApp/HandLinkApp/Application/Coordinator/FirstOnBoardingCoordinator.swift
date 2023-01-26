//
//  FirstOnBoardingCoordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/12/01.
//

import UIKit
import RxSwift
import RxCocoa

final class FirstOnBoardingCoordinator: BaseCoordinator {
    var childCoordinators = [BaseCoordinator]()
    var navigationController: UINavigationController
    
    var navigation: Navigation
    weak var parentCoordinator: AppCoordinator?

    init(navigationController: UINavigationController, navigation: Navigation) {
        self.navigationController = navigationController
        self.navigation = navigation
    }
    
    func start() {
        guard let parentCoordinator = parentCoordinator else { return }
  
        let viewController = parentCoordinator.diContainer.makeFirstOnBoardingViewController(navigation: navigation)
        navigationController.pushViewController(viewController, animated: true)
    }
}
