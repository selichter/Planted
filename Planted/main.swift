//
//  main.swift
//  Planted
//
//  Created by Sarah Lichter on 3/14/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import UIKit

let appDelegateClass: AnyClass = NSClassFromString("TestingAppDelegate") ?? AppDelegate.self

UIApplicationMain(CommandLine.argc,
                  CommandLine.unsafeArgv,
                  nil,
                  NSStringFromClass(appDelegateClass)
)
