//
//  Coordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/29.
//

import UIKit

protocol BaseCoordinator: AnyObject {
    var childCoordinators: [BaseCoordinator] { get set }
    var navigationController: UINavigationController { get }
    
    func start()
}

extension BaseCoordinator {
    func addChild(_ child: BaseCoordinator) {
        childCoordinators.append(child)
    }
}
