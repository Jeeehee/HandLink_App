//
//  SceneDelegate.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let startViewController = ViewController()
        window = UIWindow(windowScene: scene)
        window?.rootViewController = startViewController
        window?.makeKeyAndVisible()
    }
}


