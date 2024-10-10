//
//  SceneDelegate.swift
//  Turbo Native IOs
//
//  Created by Maykell on 9/10/24.
//

import Turbo
import UIKit

// This is the web address that the app will visit when launched.
let baseURL = URL(string: "https://turbo-native-demo.glitch.me/")!

// Here is where we will integrate Turbo Native with the app.
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    // Interaction point with Turbo Native - the navigator handles all of the magic of presenting screens, handling errors, and more.
    private let navigator = TurboNavigator()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions){

        guard let _ = (scene as? UIWindowScene) else { return }
        
        // Every time a link is tapped Turbo Navigator pushes a new view controller onto its stack. Here we assign the root view controller of the window to that of the navigator. This lets Turbo Navigator take complete control of what gets displayed on the screen and do its thing.
        window?.rootViewController = navigator.rootViewController
        // Tells the navigator to visit the baseURL.
        navigator.route(baseURL)
    }

}

