//
//  AppCoordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/24.
//

import UIKit

final class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    func start() -> UIViewController {
        let startViewController = FirstOnBoardingViewController()
        return startViewController
    }
}
