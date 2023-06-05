//
//  SceneDelegate.swift
//  AppSceneCount
//
//  Created by Adam Khalifa on 6/1/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var viewController: ViewController?

  
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        viewController = window?.rootViewController as? ViewController
        viewController?.willConnectToCount += 1

     
        guard let _ = (scene as? UIWindowScene) else {
            return
        }
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        viewController?.didBecomeActiveCount += 1
        viewController?.updateView()
    
    }

    func sceneWillResignActive(_ scene: UIScene) {
        viewController?.willResignActiveCount += 1

    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        viewController?.willEnterForegroundCount += 1
      
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        viewController?.didEnterBackgroundCount += 1

    }


}

