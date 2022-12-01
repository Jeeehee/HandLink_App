//
//  Coordinator.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/29.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start() -> UIViewController
}

extension Coordinator {
    func addChild(_ child: Coordinator) {
        childCoordinators.append(child)
    }
}
