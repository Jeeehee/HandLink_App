//
//  SceneDelegate.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    private var coordinator: BaseCoordinator?
    private let container = DIContainer()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }

        let navigationController = UINavigationController()
        
        
        coordinator = AppCoordinator(navigationController: navigationController, diContainer: container)
        coordinator?.start()
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}


