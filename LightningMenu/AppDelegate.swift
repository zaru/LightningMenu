//
//  AppDelegate.swift
//  sample
//
//  Created by Akkey on 2016/08/23.
//  Copyright © 2016年 AkkeyLab. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var menu: NSMenu!
    var statusItem = NSStatusBar.system.statusItem(withLength: -1)
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        statusItem.title = "sample"
        statusItem.highlightMode = true
        statusItem.menu = menu
        
        let menuItem1 = NSMenuItem(title: "inspect", action: #selector(AppDelegate.inspector(_:)), keyEquivalent: "")
        let menuItem2 = NSMenuItem(title: "Quit", action: #selector(AppDelegate.quit(_:)), keyEquivalent: "")
        menu.addItem(menuItem1)
        menu.addItem(menuItem2)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func quit(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
    
    @objc func inspector(_ sender: Any) {
        NSAccessibility.Action.showMenu.rawValue
    }
    
}

