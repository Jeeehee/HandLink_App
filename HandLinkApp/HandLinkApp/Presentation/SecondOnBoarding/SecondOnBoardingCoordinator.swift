//
//  SecondOnBoardingCoordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/29.
//

import UIKit
import RxSwift
import RxCocoa

final class SecondOnBoardingCoordinator: BaseCoordinator {
    private let disposeBag = DisposeBag()
    
    var childCoordinators = [BaseCoordinator]()
    var navigationController = UINavigationController()
    
    init() {

    }
    
    func start() {
        let viewContoller = SecondOnboardingViewController()
        navigationController.pushViewController(viewContoller, animated: true)
    }
}
