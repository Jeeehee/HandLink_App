//
//  AppCoordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/24.
//

import Foundation

protocol Coordinator: AnyObject {
    func start() -> ViewController
}

final class AppCoordinator: Coordinator {
    func start() -> ViewController {
        let onBoardingViewController = OnBoardingViewController()
        return onBoardingViewController
    }
}
