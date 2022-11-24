//
//  AppCoordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/24.
//

import UIKit

final class AppCoordinator: BaseCoordinator {
    var childCoordinators = [BaseCoordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let child = FirstOnboardingCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.start()
    }
}
