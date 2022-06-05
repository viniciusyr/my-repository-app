//
//  SceneDelegate.swift
//  my-repository-app
//
//  Created by Vinicius Rodrigues on 05/06/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: IntroViewController())
        self.window?.windowScene = windowScene
        self.window?.makeKeyAndVisible()
    }

}

