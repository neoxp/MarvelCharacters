//
//  AppDelegate.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)
    let navigationDelegate = NavigationDelegate()
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().tintColor = .white

        let homeViewController = HomeViewController(withHomeViewModel: HomeViewModel())
        let navigationController = UINavigationController(rootViewController: homeViewController)
        navigationController.delegate = navigationDelegate
        
        window?.makeKeyAndVisible()
        window?.rootViewController = navigationController
        
        return true
    }
}
