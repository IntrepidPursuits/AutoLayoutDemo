//
//  AppDelegate.swift
//  AutoLayoutDemo
//
//  Created by LuQuan Intrepid on 1/11/17.
//  Copyright © 2017 IntrepidPursuits. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "Menu", bundle: nil)
        let rootViewController = storyboard.instantiateInitialViewController()!
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        self.window = window

        return true
    }
}

