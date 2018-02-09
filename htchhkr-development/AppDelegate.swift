//
//  AppDelegate.swift
//  htchhkr-development
//
//  Created by Caleb Stultz on 4/27/17.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    fileprivate var containerVC = ContainerVC()
    
    var MenuContainerVC: ContainerVC {
        return containerVC
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        containerVC = ContainerVC()
        
        window?.rootViewController = containerVC
        window?.makeKeyAndVisible()
        
        return true
    }


    class func getAppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}

