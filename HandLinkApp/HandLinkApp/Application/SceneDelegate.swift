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
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let navigationController = UINavigationController()
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = navigationController
        
        coordinator = AppCoordinator(navigationController: navigationController)
        coordinator?.start()
        
        window?.makeKeyAndVisible()
    }
}


